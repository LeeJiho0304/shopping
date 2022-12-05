package controller.user;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="JoinController", urlPatterns="/JoinController")
public class JoinController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/joinForm.jsp").forward(request, response);
	}
	
}
