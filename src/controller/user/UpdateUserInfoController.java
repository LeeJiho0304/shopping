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


@WebServlet(name="UpdateUserInfoController", urlPatterns="/UpdateUserInfoController")
public class UpdateUserInfoController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/updateUser.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = (String)request.getSession().getAttribute("loginId");
		
		String uName = request.getParameter("name");
		String userPwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String uPhone = request.getParameter("phone");
		String birthday = request.getParameter("year");
		birthday+= request.getParameter("month");
		birthday+= request.getParameter("day");
		String address = request.getParameter("postcode");
		address += " ";
		address += request.getParameter("address");
		address += " ";
		address += request.getParameter("detailAddress");
		
		UserDTO user = new UserDTO();
		user.setUser_id(userId);
		user.setUser_name(uName);
		user.setUser_password(userPwd);
		user.setUser_email(email);
		user.setUser_phone(uPhone);
		user.setUser_birthday(birthday);
		user.setUser_address(address);
		
		ServletContext application = request.getServletContext();
		UserService userService = (UserService)application.getAttribute("userService");
	
		userService.updateUserInfo(user);
		
		response.sendRedirect("MyPageController?");	
	}	
	
}
