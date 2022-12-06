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
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		HttpSession session = request.getSession();
		
		UserDTO user = new UserDTO();
		user.setUser_id(userId);
		user.setUser_password(userPwd);
		
		ServletContext application = request.getServletContext();
		UserService userLoginService = (UserService)application.getAttribute("userLoginService");
		
		if(userLoginService.login(user)==1) {
			session.setAttribute("loginId", userId);	
			response.sendRedirect("MainController");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/homePage/user/loginForm.jsp").forward(request, response);
		}
	
	}
	
}
