package service.cart;

import java.util.List;

import javax.servlet.ServletContext;

import dao.CartDAO;
import dto.cart.CartDTO;

public class CartService {
	private ServletContext application;
	
	public CartService(ServletContext application) {
		this.application=application;
	}
	
	public String createCart(CartDTO cartDto) {
		CartDAO cartDAO = (CartDAO) application.getAttribute("cartDAO");
		String result = cartDAO.insertCart(cartDto);
		return result;
	}
	
	
	public int getTotalRows(CartDTO cartDTO) {
		CartDAO cartDAO = (CartDAO) application.getAttribute("cartDAO");
		int totalRows = cartDAO.getTotalRows(cartDTO);
		return totalRows;
	}
	
	public List<CartDTO> getList(int pageNo, CartDTO cartDTO) {
		CartDAO cartDAO = (CartDAO) application.getAttribute("cartDAO");
		
		List<CartDTO> cartDTOs;

		cartDTOs = cartDAO.selectAllList(pageNo, cartDTO);
		
		return cartDTOs;
	}

}
