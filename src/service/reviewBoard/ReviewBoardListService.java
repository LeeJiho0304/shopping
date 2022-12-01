package service.reviewBoard;

import java.util.List;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardListService {
	private ServletContext application;
	
	public ReviewBoardListService(ServletContext application) {
		this.application = application;
	}
	
	public List<ReviewBoardProductDTO> getList(int pageNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectAllList(pageNo);
		return reviewDTO;
	}

	public int getTotalRows() {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		int totalRows = reviewBoardDAO.getTotalRows();
		return totalRows;
	}
	
	public String createReviewBoard(ReviewBoardDTO dto) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		String result = reviewBoardDAO.insertReviewBoard(dto);
		return result;
	}
}
