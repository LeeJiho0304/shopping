package service.qnaBoard;

import javax.servlet.ServletContext;

import dao.ProductDAO;
import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;

public class QnABoardAnswerService {
	private  ServletContext application;
	
	public QnABoardAnswerService (ServletContext application) {
		this.application = application;
	}
	
	public String answerQnABoard(QnABoardDTO dto) {
		QnABoardDAO dao = (QnABoardDAO)application.getAttribute("QnABoardDAO");
		String result = dao.updateAnswerQnABoard(dto);
		return result;
	}

	
}
