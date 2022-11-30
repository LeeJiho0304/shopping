package service.qnaBoard;

import dao.QnABoardDAO;
import dto.qna.QnABoardProductDTO;

public class QnABoardUpdateService {
	
	public String UpdateQnABoard(QnABoardProductDTO dto) {
		QnABoardDAO dao = new QnABoardDAO();
		String result = dao.updateQnABoard(dto);
		return result;
	}
}
