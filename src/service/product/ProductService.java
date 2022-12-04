package service.product;

import java.sql.Connection;
import java.util.List;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.ProductDAO;
import dto.product.ProductDTO;
import dto.product.ProductListDTO;

public class ProductService {
	List<ProductListDTO> productDTOs;
	private DataSource ds;
	private  ServletContext application;
	
	public ProductService (ServletContext application) {
		this.application = application;
		try {
			InitialContext ic = new InitialContext();
			ds = (DataSource) ic.lookup("java:comp/env/jdbc/team1");
			Connection conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ProductListDTO> getList(int pageNo, ProductListDTO productListDTO) {
		ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		
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

	public int getTotalRows(ProductListDTO productListDTO) {
		ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		
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
		System.out.println("게시글을 작성합니다.");
		ProductDAO productDao = (ProductDAO) application.getAttribute("productDAO");
		
		Connection conn = null;
		try {
			conn = ds.getConnection();
			productDao.insert(product, conn);
		} catch(Exception e) {
			
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}
