package service.product;

import java.util.List;

import javax.servlet.ServletContext;

import dao.ProductDAO;
import dto.product.ProductListDTO;

public class ProductService {
	List<ProductListDTO> productDTOs;
	
	private  ServletContext application;
	
	public ProductService (ServletContext application) {
		this.application = application;
	}
	
	
	public List<ProductListDTO> getList(int pageNo, ProductListDTO productListDTO) {
		ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		productDTOs = productDAO.selectAllList(pageNo, productListDTO);
		
		return productDTOs;
	}

	public int getTotalRows(ProductListDTO productListDTO) {
		ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		int totalRows = productDAO.getTotalRows(productListDTO);
		return totalRows;
	}
	
}
