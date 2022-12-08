package controller.user;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="MyPageController", urlPatterns="/MyPageController")
public class MyPageController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyPageController.service() 실행");
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");
		
		request.setAttribute("loginId", userId);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/myPageMain.jsp").forward(request, response);
	}
	
}
