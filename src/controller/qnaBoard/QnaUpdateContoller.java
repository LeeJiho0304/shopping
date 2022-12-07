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

@WebServlet(name="QnaUpdateContoller", urlPatterns="/QnaUpdateContoller")
public class QnaUpdateContoller extends HttpServlet {
		
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("QnaUpdateContoller 실행");
		QnABoardService qboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
				
		QnABoardDTO qboard = new QnABoardDTO();
		
		qboard.setQna_board_title(request.getParameter("inquiryTitleName"));
		qboard.setQna_board_content(request.getParameter("inquiryContent"));	
		qboard.setQna_board_id(Integer.parseInt(request.getParameter("inquiryNo")));
		qboard.setUsers_id(request.getParameter("inquiryUid"));	
		qboard.setProduct_id(1);
		//qboard.setProduct_id(Integer.parseInt(request.getParameter("")));
				
		qboardService.updateQnABoard(qboard);
				
		response.sendRedirect("QnaBoardListContoller");
	}
	
	
}

	

