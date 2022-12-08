package controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.product.ProductDTO;
import service.ProductService;
import service.ReviewBoardService4;

@WebServlet(name="ProductDetailControllerQr", urlPatterns="/ProductDetailControllerQr")
public class ProductDetailControllerQr extends HttpServlet {
	ProductDTO productDTO;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int pid = Integer.parseInt(request.getParameter("pid"));
		int pid = 1;
		
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		productDTO = productService.getProduct(pid);
		
		request.setAttribute("productDTO", productDTO);

		List<Integer> rateNum = productService.getRateNum(pid);
						
		//JSP에서 사용할 수 있도록 request 범위에 저장
		request.setAttribute("rateNum", rateNum);
		
		ReviewBoardService4 rboardService = (ReviewBoardService4) application.getAttribute("reviewBoardService");
		
		//전체 행수 얻기		
		int totalProductReviewNum = rboardService.getProductTotalRows(pid);
		int avgRate = rboardService.getAvgRate(pid);
		request.setAttribute("totalBoardNum", totalProductReviewNum);
		request.setAttribute("avgRate", avgRate);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productDetail-qr.jsp").forward(request, response);
	}
	
}
