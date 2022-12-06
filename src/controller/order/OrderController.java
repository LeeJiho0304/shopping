package controller.order;

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


@WebServlet(name="OrderController", urlPatterns="/OrderController")
public class OrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/orderForm.jsp").forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
				
		String userId = request.getParameter("uid");
		String userPwd = request.getParameter("pw");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String uPhone = request.getParameter("phone");
		String uName = request.getParameter("name");
		String birthday = request.getParameter("year");
		birthday+= request.getParameter("month");
		birthday+= request.getParameter("day");
		
		UserDTO user = new UserDTO();
		user.setUser_id(userId);
		user.setUser_password(userPwd);
		user.setUser_email(email);
		user.setUser_address(address);
		user.setUser_phone(uPhone);
		user.setUser_name(uName);
		user.setUser_birthday(birthday);
		
		ServletContext application = request.getServletContext();
		UserService userService = (UserService)application.getAttribute("userService");
		int result = userService.join(user);
		
		if(result==2) {
			session.setAttribute("loginId", userId);	
			response.sendRedirect("MainController");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/homePage/user/joinForm.jsp").forward(request, response);
		}
	}	
	
}
