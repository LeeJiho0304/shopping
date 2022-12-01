package service.qnaBoard;

import java.util.List;

import javax.servlet.ServletContext;

import dao.QnABoardDAO;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

public class QnABoardSearchService {
	private ServletContext application;
   
	public QnABoardSearchService(ServletContext application) {
      this.application = application;
	}
	
	//상품 검색 
	public List<QnABoardProductDTO> getSearchList(int pageNo, String search_String) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectSearchList(pageNo, search_String);
		return qnaDTO;
	}

	public int getTotalRows(String search_String) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getTotalSearchRows(search_String);
		return totalRows;
	}
	
	
	// MyList 불러오기 
	public List<QnABoardProductDTO> getMyList(int pageNo, String users_id) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		List<QnABoardProductDTO> qnaDTO = dao.selectMyList(pageNo, users_id);
		return qnaDTO;
	}
	
	public int getMyListTotalRows(String users_id) {
		QnABoardDAO dao =  (QnABoardDAO)application.getAttribute("qnABoardDAO");
		int totalRows = dao.getMyListRows(users_id);
		return totalRows;
	}
}
