package controller.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="MyReviewListController", urlPatterns="/MyReviewListController")
public class MyReviewListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewBoardListController.service() 실행");
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/reviewBoard/myReviewList.jsp").forward(request, response);
	}
	
}