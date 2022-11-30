package service.user;

import java.sql.SQLException;

import dao.UserDAO;

public class UserDeleteService {
	UserDAO userDAO = new UserDAO();
	
	public void withdraw(String id) throws SQLException {
		userDAO.deleteUser(id);
	}
}
