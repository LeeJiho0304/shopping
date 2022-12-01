package service.qnaBoard;

import javax.servlet.ServletContext;

import dao.QnABoardDAO;
import dto.qna.QnABoardProductDTO;

public class QnABoardUpdateService {
	private ServletContext application;
	   
	public QnABoardUpdateService(ServletContext application) {
      this.application = application;
	}
	
	public String UpdateQnABoard(QnABoardProductDTO dto) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		String result = dao.updateQnABoard(dto);
		return result;
	}
}
