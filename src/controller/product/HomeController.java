package controller.product;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="HomeController", urlPatterns="/HomeController")

public class HomeController extends HttpServlet{
	
	//클라이언트가 요청할 때마다 콜백(요청 방식과는 상관없다)
	//역할: 요청 처리
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/content.jsp").forward(request, response);
	}	
}
