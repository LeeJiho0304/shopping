package service.reviewBoard;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardReadService {
	private ServletContext application;
	
	public ReviewBoardReadService(ServletContext application) {
		this.application = application;
	}
	
	public int getTotalRows() {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		int totalRows = reviewBoardDAO.getTotalRows();
		return totalRows;
	}
	
	public ReviewBoardProductDTO getContent(int idNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		ReviewBoardProductDTO reviewDTO = reviewBoardDAO.selectOnereview(idNo);
		return reviewDTO;
	}

}
