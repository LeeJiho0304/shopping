package service.user;

import java.sql.SQLException;
import javax.servlet.ServletContext;
import dao.UserDAO;

public class UserDeleteService {
	private ServletContext application;
   
	public UserDeleteService(ServletContext application) {
		this.application = application;
	}

	public void withdraw(String id) throws SQLException {
		UserDAO userDAO = (UserDAO)application.getAttribute("userDAO");
		userDAO.deleteUser(id);
	}
}
