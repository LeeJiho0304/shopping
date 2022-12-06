package controller.user;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="MyOrderTrackController", urlPatterns="/MyOrderTrackController")
public class MyOrderTrackController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyOrderTrackController.service() 실행");
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/myOrderTrack.jsp").forward(request, response);
	}
	
	
}
