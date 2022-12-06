package service;

import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.ProductDAO;
import dao.QnABoardDAO;
import dao.UserDAO;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

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
	//총 행수 가져오기
	public int getTotalRows() {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	//큐앤에이 답변
	public String answerQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = (QnABoardDAO)application.getAttribute("QnABoardDAO");
		String result = dao.updateAnswerQnABoard(dto);
		return result;
	}
	
	//큐앤에이 작성
	public String createQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = (QnABoardDAO)application.getAttribute("QqnABoardDAO");
		String result = dao.insertQnABoard(dto);
		return result;
	}
	
	//큐앤에이 리스트 보기
	public List<QnABoardProductDTO> getList(int pageNo) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectAllList(pageNo);
		return qnaDTO;
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
	
}
