package service.user;

import java.sql.SQLException;
import java.util.List;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserLoginService {
	UserDAO userDAO = new UserDAO();
	List<UserDTO> users;
	UserDTO user;
	
	public UserDTO login(String id, String password) {
		try {
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