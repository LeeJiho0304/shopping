package service.reviewBoard;

import java.util.List;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardSearchService {
	private ServletContext application;
	
	public ReviewBoardSearchService(ServletContext application) {
		this.application = application;
	}
	
	public List<ReviewBoardProductDTO> getList(int pageNo, String search) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectSearchReview(pageNo, search);
		return reviewDTO;
	}

	public int getTotalRows(String search) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		int totalRows = reviewBoardDAO.getTotalSearchRows(search);
		return totalRows;
	}

	// MyList
	public List<ReviewBoardProductDTO> getMyList(int pageNo, String users_id) {
		System.out.println("MyReview Service: " + users_id);
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectMyList(pageNo, users_id);
		return reviewDTO;
	}

	public int getMyListTotalRows(String users_id) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		int totalRows = reviewBoardDAO.getMyListRows(users_id);
		return totalRows;
	}
}
