package service.reviewBoard;

import java.util.List;

import javax.servlet.ServletContext;

import dao.ReviewBoardDAO;
import dto.review.ReviewBoardDTO;
import dto.review.ReviewBoardProductDTO;

public class ReviewBoardService {
	private ServletContext application;
	
	public ReviewBoardService(ServletContext application) {
		this.application = application;
	}
	
	/*
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
	
	public String UpdateReviewBoard(ReviewBoardDTO reviewDTO) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		String result = reviewBoardDAO.updateReviewBoard(reviewDTO);
		return result;
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
	
	public ReviewBoardProductDTO getContent(int idNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		ReviewBoardProductDTO reviewDTO = reviewBoardDAO.selectOnereview(idNo);
		return reviewDTO;
	}
	
	public List<ReviewBoardProductDTO> getList(int pageNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		List<ReviewBoardProductDTO> reviewDTO = reviewBoardDAO.selectAllList(pageNo);
		return reviewDTO;
	}
	
	public String createReviewBoard(ReviewBoardDTO dto) {
		ReviewBoardDAO dao = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		String result = dao.insertReviewBoard(dto);
		return result;
	} */
}
