package service.product;

import dao.ProductDAO;
import dto.product.ProductDTO;

public class ProductContentService {
	ProductDTO productDTO;
	
	public ProductDTO getContent(int product_id) {
		ProductDAO productDAO = new ProductDAO();
		productDTO = productDAO.selectProductContent(product_id);
		
		return productDTO;
	}
	
	public static void main(String[] args) {
		ProductContentService productService = new ProductContentService();
		System.out.println(productService.getContent(1));
	}
	
}
