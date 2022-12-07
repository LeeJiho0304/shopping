package controller.qnaBoard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.qna.QnABoardDTO;
import service.QnABoardService;

@WebServlet(name="QnaBoardDetailContoller", urlPatterns="/QnaBoardDetailContoller")
public class QnaBoardDetailContoller extends HttpServlet {
	
	//@Override
	//public void init(ServletConfig config) throws ServletException {
		//System.out.println("QnaBoardDetailContoller.init() 실행");
	//}	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("QnaBoardDetailContoller.service() 실행");
		
		int qna_board_id = Integer.parseInt(request.getParameter("qna_board_id"));
		
		QnABoardService qnaboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
		QnABoardDTO qboard = qnaboardService.getContent(qna_board_id);
		
		request.setAttribute("qboard", qboard);		
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/qnaBoard/qnaBoardDetail.jsp").forward(request, response);
	}
	
	//@Override
	//public void destroy() {
		//System.out.println("QnaBoardDetailContoller.destroy()");
	//}
}

	

