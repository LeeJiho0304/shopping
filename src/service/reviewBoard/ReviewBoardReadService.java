package service.reviewBoard;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardReadService {
	public int getTotalRows() {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public ReviewBoardProductDTO getContent(int idNo) {
		ReviewBoardDAO reviewBoardDAO = new ReviewBoardDAO();
		ReviewBoardProductDTO reviewDTO = reviewBoardDAO.selectOnereview(idNo);
		return reviewDTO;
	}

}
