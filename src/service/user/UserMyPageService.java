package service.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import org.json.JSONException;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserMyPageService {
	List<UserDTO> users;
	UserDTO user;
	
	private ServletContext application;
	   
	public UserMyPageService(ServletContext application) {
		this.application = application;
	}
	
	public UserDTO getUserInfo(String id) throws JSONException, SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.selectUserInfo(id);
	}
}