package service.reviewBoard;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;

public class ReviewBoardCreateService {
	public int getTotalRows() {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public String createReviewBoard(ReviewBoardDTO dto) {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		String result = dao.insertReviewBoard(dto);
		return result;
	}
}
