package service.qnaBoard;

import java.util.List;

import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

public class QnABoardListService {
	
	public List<QnABoardProductDTO> getList(int pageNo) {
		QnABoardDAO qnaBoardDAO = new QnABoardDAO();
		List<QnABoardProductDTO> qnaDTO = qnaBoardDAO.selectAllList(pageNo);
		return qnaDTO;
	}

	public int getTotalRows() {
		QnABoardDAO dao = new QnABoardDAO();
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
}
