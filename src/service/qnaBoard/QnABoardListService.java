package service.qnaBoard;

import java.util.List;

import javax.servlet.ServletContext;

import dao.QnABoardDAO;
import dto.qna.QnABoardProductDTO;

public class QnABoardListService {
	private  ServletContext application;
	
	public QnABoardListService (ServletContext application) {
		this.application = application;
	}
	
	public List<QnABoardProductDTO> getList(int pageNo) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectAllList(pageNo);
		return qnaDTO;
	}

	public int getTotalRows() {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalRows();
		return totalRows;
	}
}
