package service.reviewBoard;

import java.util.List;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardListService {
	
	public List<ReviewBoardProductDTO> getList(int pageNo) {
		ReviewBoardDAO ReviewBoardDAO = new ReviewBoardDAO();
		List<ReviewBoardProductDTO> reviewDTO = ReviewBoardDAO.selectAllList(pageNo);
		return reviewDTO;
	}

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
