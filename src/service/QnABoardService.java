package service;

import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.QnABoardDAO;
import dto.Pager;
import dto.qna.QnABoardDTO;

public class QnABoardService {
	private  ServletContext application;
	private DataSource ds;
	private QnABoardDAO qnaDao; 
	
	//생성자
	public QnABoardService (ServletContext application) {
		this.application = application;
		qnaDao = (QnABoardDAO)application.getAttribute("qnABoardDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}
	
	/*

	//큐앤에이 답변
	public String answerQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = (QnABoardDAO)application.getAttribute("QnABoardDAO");
		String result = dao.updateAnswerQnABoard(dto);
		return result;
	}

	//큐앤에이 내용보기
	public QnABoardProductDTO getContent(int idNo) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		QnABoardProductDTO qnaDTO = dao.selectOneQnA(idNo);
		return qnaDTO;
	}
	
	//큐앤에이 검색
	//상품 검색 
	public List<QnABoardProductDTO> getSearchList(int pageNo, String search_String) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectSearchList(pageNo, search_String);
		return qnaDTO;
	}

	public int getTotalRows(String search_String) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalSearchRows(search_String);
		return totalRows;
	}
	
	
	// MyList 불러오기 
	public List<QnABoardProductDTO> getMyList(int pageNo, String users_id) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectMyList(pageNo, users_id);
		return qnaDTO;
	}
	
	public int getMyListTotalRows(String users_id) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getMyListRows(users_id);
		return totalRows;
	}
	
	//큐앤에이 수정
	public String UpdateQnABoard(QnABoardProductDTO dto) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		String result = dao.updateQnABoard(dto);
		return result;
	}
	*/
	
	//큐앤에이 작성	
	public String createQnABoard(QnABoardDTO dto) {
		String result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.insertQnABoard(dto, conn);
			conn.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return result;
	}
	
	//큐앤에이 리스트 보기	
	public List<QnABoardDTO> getList(Pager pager) {
		List<QnABoardDTO> qnaDTO = null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			qnaDTO = qnaDao.selectAllList(pager, conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return qnaDTO;
	}
	
	//총 행수 가져오기		
	public int getTotalRows() {
		Connection conn = null;
		int totalRows = 0;
		try {
			conn=ds.getConnection();
			totalRows = qnaDao.getTotalRows(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return totalRows;
	}

	
}
