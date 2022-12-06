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
	ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
	
	public ProductService (ServletContext application) {
		this.application = application;
		try {
			ds = (DataSource) application.getAttribute("dataSource");
			Connection conn = ds.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
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
	
	public void addProduct(ProductDTO prdoduct) {
		Connection conn = null;
		try {
			conn = ds.getConnection();
			productDAO.insert(prdoduct, conn);
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
