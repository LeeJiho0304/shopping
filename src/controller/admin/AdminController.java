package controller.admin;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="AdminController", urlPatterns="/AdminController")
public class AdminController extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("AdminController.init() 실행");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdminController.service() 실행");
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/admin/admin.jsp").forward(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("AdminController.destroy()");
	}
}
