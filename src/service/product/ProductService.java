package service.product;

import java.util.List;

import dao.ProductDAO;
import dto.product.ProductListDTO;

public class ProductService {
	List<ProductListDTO> productDTOs;
	
	public List<ProductListDTO> getList(int pageNo, ProductListDTO productListDTO) {
		ProductDAO productDAO = new ProductDAO();
		productDTOs = productDAO.selectAllList(pageNo, productListDTO);
		
		return productDTOs;
	}

	public int getTotalRows(ProductListDTO productListDTO) {
		ProductDAO productDAO = new ProductDAO();
		int totalRows = productDAO.getTotalRows(productListDTO);
		return totalRows;
	}
	
}
