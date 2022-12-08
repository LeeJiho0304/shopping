package controller.reviewBoard;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dto.review.ReviewBoardDTO;
import service.ReviewBoardService;

@MultipartConfig(maxFileSize=1024*1024*30, maxRequestSize=1024*1024*40)
@WebServlet(name="ReviewWriteController", urlPatterns="/ReviewWriteController")
public class ReviewWriteController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewWriteFormController.doGet() 실행");
		
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		request.setAttribute("product_id", product_id);
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/reviewBoard/reviewBoardForm.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ReviewWriteContoller.doPost() 실행");
		ReviewBoardService reviewService = (ReviewBoardService) request.getServletContext().getAttribute("reviewBoardService");
		HttpSession session = request.getSession();
		
		ReviewBoardDTO review = new ReviewBoardDTO();
		String userId = (String) session.getAttribute("loginId");
		
		review.setReview_board_title(request.getParameter("review_title"));
		review.setReview_board_content(request.getParameter("review_content"));
		review.setReview_board_reviewpoint(Integer.parseInt(request.getParameter("rating")));
		review.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
		review.setUsers_id(userId);
		
		//파일 파트
		Part filePart = request.getPart("reviewPhoto");
		if(!filePart.getSubmittedFileName().equals("")) {
			String fileName = filePart.getSubmittedFileName();
			String savedName = new Date().getTime() + "-" + fileName;
			String fileType = filePart.getContentType();
			
			review.setFilename(fileName);
			review.setSavedname(savedName);
			review.setContent_type(fileType);
			
			String filePath = "C:/Temp/download/review/" + savedName;  //실제 저장되는 경로
			filePart.write(filePath);
		}
		reviewService.createReviewBoard(review);
		
		response.sendRedirect("MyPageController");
	}
}

	

