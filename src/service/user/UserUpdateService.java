package service.user;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserUpdateService {
	private ServletContext application;
	   
	public UserUpdateService(ServletContext application) {
		this.application = application;
	}
	
	public void updateUserInfo(UserDTO receivedDTO) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		userDAO.updateUser(receivedDTO);
	}
}
