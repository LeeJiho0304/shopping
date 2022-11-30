package service.user;

import java.sql.SQLException;
import java.util.List;

import org.json.JSONException;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserMyPageService {
	UserDAO userDAO = new UserDAO();
	List<UserDTO> users;
	UserDTO user;
	
	public UserDTO getUserInfo(String id) throws JSONException, SQLException {
		return userDAO.selectUserInfo(id);
	}
}