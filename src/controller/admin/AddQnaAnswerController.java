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
		qboard.setQna_board_id(Integer.parseInt(request.getParameter("")));
				
		qboardService.updateQnABoard(qboard);
				
		response.sendRedirect("QnaBoardListContoller");
		
		
		
		
		
		
		
		
		
		
		
		
		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");
		ProductDTO product = new ProductDTO();
		
		//문자 파트
		product.setProduct_name(request.getParameter("product_name"));
		product.setProduct_price(Integer.parseInt(request.getParameter("product_price")));
		product.setProduct_company(request.getParameter("product_company"));
		product.setProduct_content(request.getParameter("product_content"));
		product.setCategory_id(Integer.parseInt(request.getParameter("category_id")));
		product.setSubcategory_id(Integer.parseInt(request.getParameter("subcategory_id")));
		
		//파일 파트
		Part filePart1 = request.getPart("productMainPhoto");
		if(!filePart1.getSubmittedFileName().equals("")) {
			String fileName = filePart1.getSubmittedFileName();
			String savedName = new Date().getTime() + "-" + fileName;
			String fileType = filePart1.getContentType();
			
			product.setMain_filename(fileName);
			product.setMain_savedname(savedName);
			product.setMain_content_type(fileType);
			
			String filePath = "C:/Temp/download/" + savedName;  //실제 저장되는 경로
			filePart1.write(filePath);
		}
		
		Part filePart2 = request.getPart("productDetailPhoto");
		if(!filePart2.getSubmittedFileName().equals("")) {
			String fileName = filePart2.getSubmittedFileName();
			String savedName = new Date().getTime() + "-" + fileName;
			String fileType = filePart2.getContentType();
			
			product.setDetail_filename(fileName);
			product.setDetail_savedname(savedName);
			product.setDetail_content_type(fileType);
			
			String filePath = "C:/Temp/download/" + savedName;  //실제 저장되는 경로
			filePart2.write(filePath);
		}
		productService.addProduct(product);
		
		response.sendRedirect("AdminProductListController");
	}
}
