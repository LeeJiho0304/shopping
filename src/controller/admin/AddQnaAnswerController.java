package controller.admin;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dto.product.ProductDTO;
import dto.qna.QnABoardDTO;
import service.ProductService;
import service.QnABoardService;


@WebServlet(name="AddQnaAnswerController", urlPatterns="/AddQnaAnswerController")
public class AddQnaAnswerController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AddQnaAnswerController.doGet() 실행");
		int qna_board_id = Integer.parseInt(request.getParameter("qna_board_id"));
		
		QnABoardService qnaboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");
		QnABoardDTO qboard = qnaboardService.getContent(qna_board_id);
		
		request.setAttribute("qboard", qboard);		
		
		request.getRequestDispatcher("/WEB-INF/views/admin/addQnaAnswerForm.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AddQnaAnswerController 실행");
		QnABoardService qboardService = (QnABoardService) request.getServletContext().getAttribute("qnABoardService");	
		
		QnABoardDTO qboard = new QnABoardDTO();
				
		qboard.setQna_board_answer(request.getParameter("qnaAnswer"));		
		qboard.setQna_board_id(Integer.parseInt(request.getParameter("inquiryNo")));		
		
		qboardService.answerQnABoard(qboard);
				
		response.sendRedirect("AdminQnaABoardController");
		
	}
}
