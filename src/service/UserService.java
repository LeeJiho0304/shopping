package service;

import java.sql.Connection; 
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.json.JSONException;
import org.json.JSONObject;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserService {
	private ServletContext application;
	private DataSource ds;
	private UserDAO userDao; 
	List<UserDTO> users;
	UserDTO user;

	public UserService(ServletContext application) {
		this.application = application;
		userDao = (UserDAO)application.getAttribute("userDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}

	//유저 로그인 
	public int login(UserDTO user) {
		int result = 0;
		Connection conn = null;
		 try {
	    	  conn = ds.getConnection();
	    	  result = userDao.selectUser(user.getUser_id(), user.getUser_password(), conn);
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }finally {
			try {conn.close();} catch (SQLException e) {}
	      }
		return result;
	}
	
	
	//유저 가입(생성) 
	public int join(UserDTO receivedDTO) {
		int result = 0;
		Connection conn = null;
		 try {
	    	  conn = ds.getConnection();
	    	  conn.setAutoCommit(false);
	    	  result = userDao.insertUser(receivedDTO, conn);
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
	
	//유저 수정
	public int updateUserInfo(UserDTO userDTO) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
			result = userDao.updateUser(userDTO, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {conn.close();} catch (SQLException e) {}
		}
		 
		return result;
	}
		
	//유저마이페이지
	public UserDTO getUserInfo(String id) {
		UserDTO result = null;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
	    	result = userDao.selectUserInfo(id, conn);
	    } catch(Exception e) {
	    	e.printStackTrace();
	    } finally {
	    	try { conn.close(); } catch (SQLException e) {}
	    }
		
		return result;
	}
	//수정 전 
	/*
	//유저 탈퇴(삭제)
	public void withdraw(String id) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		userDAO.deleteUser(id);
	}
	
	
	
	//유저  목록(읽기)
	public int getTotalRows(String id, String condition) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.getTotalRows(id, condition);
	}
	
	public List<UserDTO> getUserList(int pageNo, String id, String condition) throws JSONException, SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.getUserList(pageNo, id, condition);
	}
	
	
	*/

	

}