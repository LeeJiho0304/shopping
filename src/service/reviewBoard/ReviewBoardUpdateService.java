package service.reviewBoard;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;

public class ReviewBoardUpdateService {
	public String UpdateReviewBoard(ReviewBoardDTO reviewDTO) {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		String result = dao.updateReviewBoard(reviewDTO);
		return result;
	}
}
