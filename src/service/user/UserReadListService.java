package service.user;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import org.json.JSONException;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserReadListService {
	List<UserDTO> users;
	UserDTO user;
	
	private ServletContext application;
	   
	public UserReadListService(ServletContext application) {
		this.application = application;
	}
	
	public int getTotalRows(String id, String condition) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.getTotalRows(id, condition);
	}
	
	public List<UserDTO> getUserList(int pageNo, String id, String condition) throws JSONException, SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		return userDAO.getUserList(pageNo, id, condition);
	}
}