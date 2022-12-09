package service;

import java.sql.Connection;
import java.sql.SQLException;


import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.CartDAO;

import dto.cart.CartDTO;

public class CartService {
	private ServletContext application;
	private DataSource ds;
	CartDAO cartDAO;
	
	public CartService(ServletContext application) {
		this.application=application;
		cartDAO = (CartDAO)application.getAttribute("cartDAO");
		ds = (DataSource) application.getAttribute("dataSource");
	}
	
	//수정 전
	//카트 상품 추가하기
	public int insertCart(CartDTO cartDto) {
		int result = 0;
		Connection conn = null;
		try {
	    	  conn = ds.getConnection();
	    	  conn.setAutoCommit(false);
	    	  result = cartDAO.insertCart(cartDto, conn);
	    	  conn.commit();
	      }catch(Exception e) {
	    	  e.printStackTrace();
	    	  
	    	  try {
				conn.rollback();
			} catch (SQLException e1) {	e1.printStackTrace();}
	    	  
	      }finally {
	    	  try {
					//자동 커밋 기능 켜기
					conn.setAutoCommit(true);
					conn.close();
				} catch (SQLException e) {}
	      }
		return result;
	}
	/*
	
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
	}*/

}
