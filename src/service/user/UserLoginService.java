package service.user;

import java.sql.Connection; 
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;


import dao.UserDAO;
import dto.user.UserDTO;

public class UserLoginService {
	private ServletContext application;
	private DataSource ds;
	private UserDAO userDao; 
	List<UserDTO> users;
	UserDTO user;

	
	
	public UserLoginService(ServletContext application) {
		this.application = application;
		userDao = (UserDAO)application.getAttribute("userDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}

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

}