package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Pager;
import dto.qna.QnABoardDTO;
import service.QnABoardService;

@WebServlet(name="AdminQnaABoardController", urlPatterns="/AdminQnaABoardController")
public class AdminQnaABoardController extends HttpServlet{
	//@Override
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("/WEB-INF/views/admin/adminQnaBoardListForm.jsp").forward(request, response);
	//}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdminQnaABoardController실행");
		
		//PageNo 얻기
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo == null) {
			strPageNo = "1";
		}
		int pageNo = Integer.parseInt(strPageNo);
		
		//boardService 객체 얻기
		ServletContext application = request.getServletContext();
		QnABoardService qboardService = (QnABoardService) application.getAttribute("qnABoardService");
							
		//페이징 대상이 되는 전체 행수 얻기		
		int totalBoardNum = qboardService.getTotalRows();
		
		//답변 글 수 얻기		
		int totalAnswerBoardNum = qboardService.getTotalAnswerRows();
				
		//Pager 생성
		Pager pager = new Pager(10,5, totalBoardNum, pageNo);
				
		//pageNo에 해당하는 게시물 가져오기
		List<QnABoardDTO> pageList = qboardService.getList(pager);
				
		//JSP에서 사용할 수 있도록 request 범위에 저장
		request.setAttribute("pager", pager);
		request.setAttribute("pageList", pageList);
		request.setAttribute("totalBoardNum", totalBoardNum);
		request.setAttribute("totalAnswerBoardNum", totalAnswerBoardNum);
	
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/admin/adminQnaBoardListForm.jsp").forward(request, response);

	}
	
}
