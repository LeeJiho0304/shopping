package service.qnaBoard;

import javax.servlet.ServletContext;

import dao.ProductDAO;
import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;

public class QnABoardCreateService {
	private  ServletContext application;
	
	public QnABoardCreateService (ServletContext application) {
		this.application = application;
	}
	
	public int getTotalRows() {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public String createQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = (QnABoardDAO)application.getAttribute("QqnABoardDAO");
		String result = dao.insertQnABoard(dto);
		return result;
	}
}
