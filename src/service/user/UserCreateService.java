package service.user;

import java.sql.SQLException;
import java.util.List;

import org.json.JSONObject;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserCreateService {
	UserDAO userDAO = new UserDAO();
	List<UserDTO> users;
	UserDTO user;
	
	public JSONObject join(UserDTO receivedDTO) throws SQLException {
		return userDAO.insertUser(receivedDTO);
	}
}
