package service.reviewBoard;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;

public class ReviewBoardUpdateService {
	private ServletContext application;
	
	public ReviewBoardUpdateService(ServletContext application) {
		this.application = application;
	}
	
	public String UpdateReviewBoard(ReviewBoardDTO reviewDTO) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		String result = reviewBoardDAO.updateReviewBoard(reviewDTO);
		return result;
	}
}
