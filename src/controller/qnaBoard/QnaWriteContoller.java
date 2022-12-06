package controller.qnaBoard;

import java.io.IOException;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/homePage/qnaBoard/qnaBoardList.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnABoardService qboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
				
		QnABoardDTO qboard = new QnABoardDTO();
		
		qboard.setQna_board_title("테스트");
		qboard.setQna_board_content("입니다");
		//qboard.setQna_board_title(request.getParameter("inquiryTitleName"));
		//qboard.setQna_board_content(request.getParameter("inquiryContent"));
		qboard.setUsers_id("임시");	
		qboard.setProduct_id(1);
		//qboard.setUsers_id(request.getParameter(""));	
		//qboard.setProduct_id(Integer.parseInt(request.getParameter("")));
		
		
		qboardService.createQnABoard(qboard);
		System.out.println("controller-qna 생성");
				
		response.sendRedirect("QnaBoardListContoller");
	}
}

	

