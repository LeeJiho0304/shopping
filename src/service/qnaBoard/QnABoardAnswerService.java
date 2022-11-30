package service.qnaBoard;

import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;

public class QnABoardAnswerService {
	public String answerQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = new QnABoardDAO();
		String result = dao.updateAnswerQnABoard(dto);
		return result;
	}

	
}
