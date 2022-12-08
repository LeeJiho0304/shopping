package controller.reviewBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Pager;
import dto.qna.QnABoardDTO;
import dto.review.ReviewBoardDTO;
import service.ReviewBoardService;

@WebServlet(name="MyReviewListController", urlPatterns="/MyReviewListController")
public class MyReviewListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyReviewListController.dGet() 실행");
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");

		//PageNo 얻기
		String strPageNo = request.getParameter("pageNo");
		if(strPageNo == null) {
			strPageNo = "1";
		}
		int pageNo = Integer.parseInt(strPageNo);
				
		//boardService 객체 얻기
		ServletContext application = request.getServletContext();
		ReviewBoardService reviewService = (ReviewBoardService) application.getAttribute("reviewBoardService");
				
		//페이징 대상이 되는 전체 행수 얻기		
		int totalBoardNum = reviewService.getMyListTotalRows(userId);

		//Pager 생성
		Pager pager = new Pager(5,5, totalBoardNum, pageNo);
				
		//pageNo에 해당하는 게시물 가져오기
		List<ReviewBoardDTO> myReviewList = reviewService.getMyList(pager, userId);
		//JSP에서 사용할 수 있도록 request 범위에 저장
		request.setAttribute("pager", pager);
		request.setAttribute("myReviewList", myReviewList);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/myReviewList.jsp").forward(request, response);
	}
	
}

