package controller.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.QnABoardService;
import service.ReviewBoardService;

@WebServlet(name="ReviewDeleteContoller", urlPatterns="/ReviewDeleteContoller")
public class ReviewDeleteContoller extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewDeleteContoller.service() 실행");
		ReviewBoardService reviewService = (ReviewBoardService) request.getServletContext().getAttribute("qnABoardService");
				
		reviewService.deleteReviewBoard(Integer.parseInt(request.getParameter("review_board_id")));
				
		response.sendRedirect("QnaBoardListContoller");
	}
}

	

