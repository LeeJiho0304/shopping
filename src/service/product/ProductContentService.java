package service.product;

import javax.servlet.ServletContext;

import dao.ProductDAO;
import dto.product.ProductDTO;

public class ProductContentService {
	ProductDTO productDTO;
	
	private  ServletContext application;

	public ProductContentService (ServletContext application) {
		this.application = application;
	}
	
	public ProductDTO getContent(int product_id) {
		System.out.println("서비스 들어왔고");
		ProductDAO productDAO = (ProductDAO)application.getAttribute("productDAO");
		productDTO = productDAO.selectProductContent(product_id);
		
		return productDTO;
	}
	
	
	
}
