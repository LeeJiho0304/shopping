package service.reviewBoard;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;

public class ReviewBoardCreateService {
	private ServletContext application;
	
	public ReviewBoardCreateService(ServletContext application) {
		this.application = application;
	}
	
	public int getTotalRows() {
		ReviewBoardDAO dao = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public String createReviewBoard(ReviewBoardDTO dto) {
		ReviewBoardDAO dao = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		String result = dao.insertReviewBoard(dto);
		return result;
	}
}
