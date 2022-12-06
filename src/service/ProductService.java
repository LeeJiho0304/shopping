
package service;

import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.ProductDAO;
import dto.Pager;
import dto.product.ProductDTO;
import dto.product.ProductListDTO;

public class ProductService {
	List<ProductListDTO> productDTOs;
	private DataSource ds;
	private  ServletContext application;
	ProductDAO productDAO;
	
	public ProductService(ServletContext application) {
		this.application = application;
		try {
			ds = (DataSource) application.getAttribute("dataSource");
			Connection conn = ds.getConnection();
			productDAO = (ProductDAO)application.getAttribute("productDAO");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//모든 카테고리에 대해서 전체 상품 행 읽어오기
	public int totalProductNum() {
		int result = 0;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			result = productDAO.getTotalRows(conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	//해당 카테고리 목록 페이징처리해서 읽어오기
	public List<ProductListDTO> getList(int pageNo, ProductListDTO productListDTO) {
		
		Connection conn = null;
		try {
			conn = ds.getConnection();
			productDTOs = productDAO.selectAllList(pageNo, productListDTO, conn);
		} catch(Exception e) {
			
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return productDTOs;
	}

	//해당 카테고리, 서브카테고리 상품 목록 전체행
	public int getTotalRows(ProductListDTO productListDTO) {
		//ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		
		Connection conn = null;
		int totalRows = 0;
		try {
			conn = ds.getConnection();
			totalRows = productDAO.getTotalRows(productListDTO, conn);
		} catch(Exception e) {
			
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return totalRows;
	}
	
	public void addProduct(ProductDTO product) {
		System.out.println("productService.addProduct");
		Connection conn = null;
		try {
			conn = ds.getConnection();
			int row = productDAO.insert(product, conn);
			System.out.println(row);
		} catch(Exception e) {
			
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

	public List<ProductDTO> getAllProductList(Pager pager) {
		List<ProductDTO> result = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			result = productDAO.selectAllProductList(pager, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	
}
