package service.user;

import java.sql.SQLException;
import java.util.List;

import org.json.JSONException;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserReadListService {
	List<UserDTO> users;
	UserDTO user;
	
	public int getTotalRows(String id, String condition) throws SQLException {
		UserDAO userDAO = new UserDAO();
		return userDAO.getTotalRows(id, condition);
	}
	
	public List<UserDTO> getUserList(int pageNo, String id, String condition) throws JSONException, SQLException {
		UserDAO userDAO = new UserDAO();
		return userDAO.getUserList(pageNo, id, condition);
	}
}