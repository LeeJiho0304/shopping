package service.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import org.json.JSONObject;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserCreateService {
	List<UserDTO> users;
	UserDTO user;
	private ServletContext application;
	
	public UserCreateService(ServletContext application) {
		this.application = application;
	}
	
	public JSONObject join(UserDTO receivedDTO) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.insertUser(receivedDTO);
	}
}
