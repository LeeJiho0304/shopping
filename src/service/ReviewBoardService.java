package service;

import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.ReviewBoardDAO;
import dto.Pager;
import dto.review.ReviewBoardDTO;

public class ReviewBoardService {
	private ServletContext application;
	private ReviewBoardDAO reviewDao;
	private DataSource ds;
	
	public ReviewBoardService(ServletContext application) {
		this.application = application;
		reviewDao = (ReviewBoardDAO) application.getAttribute("reviewBoardDAO");
		ds = (DataSource) application.getAttribute("dataSource");
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
	*/
	
	// MyList
	public List<ReviewBoardDTO> getMyList(Pager pager, String users_id) {
		List<ReviewBoardDTO> reviewDTO = null;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
			reviewDTO = reviewDao.selectMyList(pager, users_id, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {conn.close();} catch(Exception e) {}
		}
		
		return reviewDTO;
	}

	public int getMyListTotalRows(String users_id) {
		int totalRows = 0;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
			totalRows =  reviewDao.getMyListRows(users_id, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {conn.close();} catch(Exception e) {}
		}
		
		return totalRows;
	}
	
	/*
	public ReviewBoardDTO getContent(int idNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		ReviewBoardDTO reviewDTO = reviewBoardDAO.selectOnereview(idNo);
		return reviewDTO;
	}*/
	
	/*
	public List<ReviewBoardDTO> getList(int pageNo) {
		ReviewBoardDAO reviewBoardDAO = (ReviewBoardDAO)application.getAttribute("reviewBoardDAO");
		List<ReviewBoardDTO> reviewDTO = reviewBoardDAO.selectAllList(pageNo);
		return reviewDTO;
	}*/
	
	public int createReviewBoard(ReviewBoardDTO reviewDto) {
		int totalRows = 0;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
			totalRows =  reviewDao.insertReviewBoard(reviewDto, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {conn.close();} catch(Exception e) {}
		}
		
		return totalRows;
	}
}
