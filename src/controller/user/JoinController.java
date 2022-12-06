package controller.user;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.user.UserDTO;
import service.user.UserLoginService;

@WebServlet(name="JoinController", urlPatterns="/JoinController")
public class JoinController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/joinForm.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("uid");
		String userPwd = request.getParameter("pw");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String uPhone = request.getParameter("phone");
		String uName = request.getParameter("name");
		String birthday = request.getParameter("userPwd");
		
		
		HttpSession session = request.getSession();
		
		UserDTO user = new UserDTO();
		user.setUser_id(userId);
		user.setUser_password(userPwd);
		
		ServletContext application = request.getServletContext();
		UserLoginService userLoginService = (UserLoginService)application.getAttribute("userLoginService");
		
		if(userLoginService.login(user)==1) {
			session.setAttribute("loginId", userId);	
			response.sendRedirect("MainController");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/homePage/user/loginForm.jsp").forward(request, response);
		}
	}	
	
}
