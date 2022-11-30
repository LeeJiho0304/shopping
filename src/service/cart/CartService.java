package service.cart;

import java.util.List;

import dao.CartDAO;
import dto.cart.CartDTO;

public class CartService {
	
	public String createCart(CartDTO cartDto) {
		CartDAO cartDAO = new CartDAO();
		String result = cartDAO.insertCart(cartDto);
		return result;
	}
	
	
	public int getTotalRows(CartDTO cartDTO) {
		CartDAO cartDAO = new CartDAO();
		int totalRows = cartDAO.getTotalRows(cartDTO);
		return totalRows;
	}
	
	public List<CartDTO> getList(int pageNo, CartDTO cartDTO) {
		CartDAO cartDAO = new CartDAO();
		
		List<CartDTO> cartDTOs;

		cartDTOs = cartDAO.selectAllList(pageNo, cartDTO);
		
		return cartDTOs;
	}

}
