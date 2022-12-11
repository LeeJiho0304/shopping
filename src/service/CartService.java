package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

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
	
	public List<CartDTO> getList(String uid) {
		List<CartDTO> result = null;
        Connection conn = null;
        try {
           conn = ds.getConnection();
           result = cartDAO.selectAllList(uid, conn);
          
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
	
	
	//수량 변경 후 변경된 갯수 리턴
	public int updateCart(CartDTO cartDto) {
		int result = 0;
        Connection conn = null;
        try {
           conn = ds.getConnection();
           result = cartDAO.updateCart(cartDto, conn);
          
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
