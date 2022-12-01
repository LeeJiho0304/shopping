package service.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserLoginService {
	List<UserDTO> users;
	UserDTO user;
	private ServletContext application;
	   
	public UserLoginService(ServletContext application) {
		this.application = application;
	}

	public UserDTO login(String id, String password) {
		try {

			UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
			user = userDAO.selectUser(id, password);
			} catch(SQLException e) {
		}
		
		if (user != null) {
			return user;
		}
		else {
			return null;
		}
	}

}