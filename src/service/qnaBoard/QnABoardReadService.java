package service.qnaBoard;

import javax.servlet.ServletContext;

import dao.QnABoardDAO;
import dto.qna.QnABoardProductDTO;

public class QnABoardReadService {
   private ServletContext application;
   
   public QnABoardReadService(ServletContext application) {
      this.application = application;
   }
	public int getTotalRows() {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public QnABoardProductDTO getContent(int idNo) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		QnABoardProductDTO qnaDTO = dao.selectOneQnA(idNo);
		return qnaDTO;
	}

}
