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

@WebServlet(name="MyPageController", urlPatterns="/MyPageController")
public class MyPageController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyPageController.service() 실행");
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");

		UserService userService = (UserService)request.getServletContext().getAttribute("userService");
		UserDTO userDTO = userService.getUserInfo(userId);

		request.setAttribute("user", userDTO);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/myPage.jsp").forward(request, response);
	}
	
}
