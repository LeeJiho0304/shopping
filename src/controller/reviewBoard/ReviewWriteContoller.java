package controller.reviewBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.review.ReviewBoardDTO;
import service.ReviewBoardService;

@WebServlet(name="ReviewWriteContoller", urlPatterns="/ReviewWriteContoller")
public class ReviewWriteContoller extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewWriteContoller.doPost() 실행");
		ReviewBoardService qboardService = (ReviewBoardService) request.getServletContext().getAttribute("qnABoardService");
				
		ReviewBoardDTO review = new ReviewBoardDTO();
		
		review.setUsers_id("Check");	
		review.setProduct_id(1);
				
		response.sendRedirect("QnaBoardListContoller");
	}
}

	

