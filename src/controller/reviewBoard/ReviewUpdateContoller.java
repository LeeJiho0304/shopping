package controller.reviewBoard;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dto.review.ReviewBoardDTO;
import service.ReviewBoardService;

@WebServlet(name="ReviewUpdateContoller", urlPatterns="/ReviewUpdateContoller")
public class ReviewUpdateContoller extends HttpServlet {
		
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewUpdateContoller 실행");
		ReviewBoardService reviewService = (ReviewBoardService) request.getServletContext().getAttribute("reviewBoardService");
				
		ReviewBoardDTO review = new ReviewBoardDTO();
		
		review.setReview_board_title(request.getParameter("review_title"));
		review.setReview_board_content(request.getParameter("review_content"));
		review.setReview_board_reviewpoint(Integer.parseInt(request.getParameter("rating")));
		review.setUsers_id(request.getParameter("user_id"));	
		review.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
	
		//파일 파트
		Part filePart = request.getPart("reviewPhoto");
		if(!filePart.getSubmittedFileName().equals("")) {
			String fileName = filePart.getSubmittedFileName();
			String savedName = new Date().getTime() + "-" + fileName;
			String fileType = filePart.getContentType();
			
			review.setFilename(fileName);
			review.setSavedname(savedName);
			review.setContent_type(fileType);
			
			String filePath = "C:/Temp/download/review/" + savedName;  //실제 저장되는 경로
			filePart.write(filePath);
		}
		reviewService.updateReviewBoard(review);
		
		response.sendRedirect("MyPageController");
				
	}
	
	
}

	

