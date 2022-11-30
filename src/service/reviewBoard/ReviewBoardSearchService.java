package service.reviewBoard;

import java.util.List;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardSearchService {

	public List<ReviewBoardProductDTO> getList(int pageNo, String search) {
		ReviewBoardDAO reviewBoardDAO = new ReviewBoardDAO();
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectSearchReview(pageNo, search);
		return reviewDTO;
	}

	public int getTotalRows(String search) {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		int totalRows = dao.getTotalSearchRows(search);
		return totalRows;
	}

	// MyList
	public List<ReviewBoardProductDTO> getMyList(int pageNo, String users_id) {
		System.out.println("MyReview Service: " + users_id);
		ReviewBoardDAO reviewBoardDAO = new ReviewBoardDAO();
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectMyList(pageNo, users_id);
		return reviewDTO;
	}

	public int getMyListTotalRows(String users_id) {
		ReviewBoardDAO dao = new ReviewBoardDAO();
		int totalRows = dao.getMyListRows(users_id);
		return totalRows;
	}
}
