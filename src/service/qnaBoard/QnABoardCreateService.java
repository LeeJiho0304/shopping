package service.qnaBoard;

import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;

public class QnABoardCreateService {
	public int getTotalRows() {
		QnABoardDAO dao = new QnABoardDAO();
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public String createQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = new QnABoardDAO();
		String result = dao.insertQnABoard(dto);
		return result;
	}
}
