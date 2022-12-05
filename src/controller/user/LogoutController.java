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
import service.user.UserLoginService;

@WebServlet(name="LogoutController", urlPatterns="/LogoutController")
public class LogoutController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//세션 객체 가져오기 
		HttpSession session = request.getSession();
		
		session.removeAttribute("loginId");
		response.sendRedirect("MainController");
	}
	
	
	
}
