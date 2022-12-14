package controller.user;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.user.UserDTO;
import service.UserService;


@WebServlet(name="LoginController", urlPatterns="/LoginController")
public class LoginController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/loginForm.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		
		UserDTO user = new UserDTO();
		user.setUser_id(userId);
		user.setUser_password(userPwd);
		
		ServletContext application = request.getServletContext();
		UserService userService = (UserService)application.getAttribute("userService");
		int userLevel = userService.login(user);
		
		if(userLevel==1) {
			session.setAttribute("loginId", userId);
			session.setAttribute("userLevel", userLevel);
			response.sendRedirect("MainController");
		}else if(userService.login(user)==99) {
			session.setAttribute("loginId", userId);
			session.setAttribute("userLevel", userLevel);
			response.sendRedirect("/shopping/admin/AdminMainController");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/homePage/user/loginForm.jsp").forward(request, response);
		}
	
	}
	
}
