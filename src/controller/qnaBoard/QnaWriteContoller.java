package controller.qnaBoard;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.qna.QnABoardDTO;
import service.QnABoardService;

@WebServlet(name="QnaWriteContoller", urlPatterns="/QnaWriteContoller")
public class QnaWriteContoller extends HttpServlet {
	
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("새로운QnaWriteContoller 실행");
		QnABoardService qboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
				
		QnABoardDTO qboard = new QnABoardDTO();
		
		qboard.setQna_board_title(request.getParameter("inquiryTitleName"));
		qboard.setQna_board_content(request.getParameter("inquiryContent"));			
		qboard.setUsers_id(request.getParameter("inquiryUid"));	
		
		if(request.getParameter("inquiryPid") != null) {
			qboard.setProduct_id(Integer.parseInt(request.getParameter("inquiryPid")));
		} else {
			qboard.setProduct_id(1);
		}
				
		qboardService.createQnABoard(qboard);
				
		response.sendRedirect("QnaBoardListContoller");
	}
	
	
}

	

