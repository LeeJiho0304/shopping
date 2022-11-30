package service.qnaBoard;

import dao.QnABoardDAO;
import dto.qna.QnABoardProductDTO;

public class QnABoardReadService {
	public int getTotalRows() {
		QnABoardDAO dao = new QnABoardDAO();
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
	
	public QnABoardProductDTO getContent(int idNo) {
		QnABoardDAO qnaBoardDAO = new QnABoardDAO();
		QnABoardProductDTO qnaDTO = qnaBoardDAO.selectOneQnA(idNo);
		return qnaDTO;
	}

}
