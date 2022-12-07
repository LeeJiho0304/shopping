package controller.qnaBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.QnABoardService;

@WebServlet(name="QnaDeleteContoller", urlPatterns="/QnaDeleteContoller")
public class QnaDeleteContoller extends HttpServlet {
	
	//@Override
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("QnaDeleteContoller.doGet() 실행");
		//request.getRequestDispatcher("/WEB-INF/views/homePage/qnaBoard/qnaBoardList.jsp").forward(request, response);
	//}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("QnaDeleteContoller.service() 실행");
		QnABoardService qboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
				
		qboardService.deleteQnABoard(Integer.parseInt(request.getParameter("qna_board_id")));
				
		response.sendRedirect("QnaBoardListContoller");
	}
}

	

