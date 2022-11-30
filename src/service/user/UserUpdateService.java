package service.user;

import java.sql.SQLException;

import dao.UserDAO;
import dto.user.UserDTO;

public class UserUpdateService {
	UserDAO userDAO = new UserDAO();
	
	public void updateUserInfo(UserDTO receivedDTO) throws SQLException {
		userDAO.updateUser(receivedDTO);
	}
}
