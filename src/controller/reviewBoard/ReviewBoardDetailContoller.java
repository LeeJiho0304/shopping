package controller.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.qna.QnABoardDTO;
import dto.review.ReviewBoardDTO;
import service.QnABoardService;
import service.ReviewBoardService;

@WebServlet(name="ReviewBoardDetailContoller", urlPatterns="/ReviewBoardDetailContoller")
public class ReviewBoardDetailContoller extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewBoardDetailContoller.service() 실행");
		
		int review_board_id = Integer.parseInt(request.getParameter("review_board_id"));
		
		ReviewBoardService reviewService = (ReviewBoardService) request.getServletContext().getAttribute("reviewBoardService");
		ReviewBoardDTO review = reviewService.getContent(review_board_id);
		
		request.setAttribute("review", review);		
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/reviewBoard/reviewBoardDetail.jsp").forward(request, response);
	}
}

	

