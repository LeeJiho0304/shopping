package service.user;

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
		System.out.println(user.getUser_id());
		int result = 0;
		Connection conn = null;
		 try {
	    	  conn = ds.getConnection();
	    	  System.out.println(user.getUser_id());
	    	  result = userDao.selectUser(user.getUser_id(), user.getUser_password(), conn);
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }finally {
			try {conn.close();} catch (SQLException e) {}
	      }
		return result;
	}
	
	
	//수정 전 
	/*
	//유저 가입(생성) 
	public JSONObject join(UserDTO receivedDTO) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.insertUser(receivedDTO);
	}
	//유저 탈퇴(삭제)
	public void withdraw(String id) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		userDAO.deleteUser(id);
	}
	
	//유저마이페이지
	public UserDTO getUserInfo(String id) throws JSONException, SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.selectUserInfo(id);
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
	
	//유저 수정
	public void updateUserInfo(UserDTO receivedDTO) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		userDAO.updateUser(receivedDTO);
	}
	*/
	
	
	

}