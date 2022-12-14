package service;

import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.QnABoardDAO;
import dto.Pager;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

public class QnABoardService {
	private  ServletContext application;
	private DataSource ds;
	private QnABoardDAO qnaDao; 
	
	//생성자
	public QnABoardService (ServletContext application) {
		this.application = application;
		qnaDao = (QnABoardDAO)application.getAttribute("qnABoardDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}
	
	/*

	//큐앤에이 검색
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
	
	*/
	
	public List<QnABoardProductDTO> getMyList(Pager pager, String users_id) {
		List<QnABoardProductDTO> result = null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.selectMyList(pager, users_id, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }
		return result;
	}
	
	public int getMyListTotalRows(String users_id) {
		int result = 0;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.getMyListRows(users_id, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }	
		return result;
	}
	
	
	
	//큐앤에이 작성	
	public String createQnABoard(QnABoardDTO dto) {
		String result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.insertQnABoard(dto, conn);
			conn.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return result;
	}
	
	//큐앤에이 리스트 보기	
	public List<QnABoardDTO> getList(Pager pager) {
		List<QnABoardDTO> qnaDTO = null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			qnaDTO = qnaDao.selectAllList(pager, conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return qnaDTO;
	}
	
	//총 행수 가져오기		
	public int getTotalRows() {
		Connection conn = null;
		int totalRows = 0;
		try {
			conn=ds.getConnection();
			totalRows = qnaDao.getTotalRows(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return totalRows;
	}
	
	//큐앤에이 내용보기
	public QnABoardDTO getContent(int idNo) {
		QnABoardDTO result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result=qnaDao.selectOneQnA(idNo, conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return result;		
	}
	
	//큐앤에이 삭제
	public String deleteQnABoard(int idNo) {
		String result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.deleteQnABoard(idNo, conn);
			conn.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}			
		return result;
	}
	
	//큐앤에이 수정
	public String updateQnABoard(QnABoardDTO dto) {
		String result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.updateQnABoard(dto, conn);
			conn.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return result;
	}
	
	//큐앤에이 답변
	public String answerQnABoard(QnABoardDTO dto) {
		String result=null;
		Connection conn = null;
		try {
			conn=ds.getConnection();
			result = qnaDao.updateAnswerQnABoard(dto, conn);
			conn.close(); 
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return result;
	}

	public int getTotalAnswerRows() {
		Connection conn = null;
		int totalAnswerRows = 0;
		try {
			conn=ds.getConnection();
			totalAnswerRows = qnaDao.getTotalAnswerRows(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {conn.close(); } catch(Exception e) {}
		}
		return totalAnswerRows;
	}
		
	
}
