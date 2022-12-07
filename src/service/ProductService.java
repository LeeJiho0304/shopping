
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
	private  ServletContext application;
	private DataSource ds;
	ProductDAO productDAO;
	
	//생성자
	public ProductService(ServletContext application) {
		this.application = application;
		productDAO = (ProductDAO)application.getAttribute("productDAO");
		ds = (DataSource) application.getAttribute("dataSource");
	}
	 public ProductListDTO getProduct(int pid) {
		 ProductListDTO result = null;
	      Connection conn = null;
	      try {
	         conn = ds.getConnection();
	         result = productDAO.selectProduct(pid, conn);
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
	
	//전체 상품 행 읽어오기
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
	public List<ProductListDTO> getList(Pager pager, ProductListDTO productListDTO) {
		List<ProductListDTO> productDTOs = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			productDTOs = productDAO.selectCategoryList(pager, productListDTO, conn);
		} catch(Exception e) {
			
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println(productDTOs.toString());
		return productDTOs;
	}

	//해당 카테고리, 서브카테고리 상품 목록 전체행
	public int getTotalRows(ProductListDTO productListDTO) {
		int totalRows = 0;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			totalRows = productDAO.getTotalRows(productListDTO, conn);
		} catch(Exception e) {
			 e.printStackTrace();
		} finally {
			try {conn.close();} catch (Exception e) {}
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
