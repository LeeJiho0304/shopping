package service.qnaBoard;

import java.util.List;

import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

public class QnABoardSearchService {
	//상품 검색 
	public List<QnABoardProductDTO> getSearchList(int pageNo, String search_String) {
		QnABoardDAO qnaBoardDAO = new QnABoardDAO();
		List<QnABoardProductDTO> qnaDTO = qnaBoardDAO.selectSearchList(pageNo, search_String);
		return qnaDTO;
	}

	public int getTotalRows(String search_String) {
		QnABoardDAO dao = new QnABoardDAO();
		int totalRows = dao.getTotalSearchRows(search_String);
		return totalRows;
	}
	
	
	// MyList 불러오기 
	public List<QnABoardProductDTO> getMyList(int pageNo, String users_id) {
		QnABoardDAO qnaBoardDAO = new QnABoardDAO();
		List<QnABoardProductDTO> qnaDTO = qnaBoardDAO.selectMyList(pageNo, users_id);
		return qnaDTO;
	}
	
	public int getMyListTotalRows(String users_id) {
		QnABoardDAO dao = new QnABoardDAO();
		int totalRows = dao.getMyListRows(users_id);
		return totalRows;
	}
}
