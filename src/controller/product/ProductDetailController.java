package controller.product;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO3;
import dto.product.ProductDTO;
import service.ProductService;
import service.ReviewBoardService;

@WebServlet(name="ProductDetailController", urlPatterns="/ProductDetailController")
public class ProductDetailController extends HttpServlet {
	ProductDTO productDTO;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid = Integer.parseInt(request.getParameter("pid"));
		
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		productDTO = productService.getProduct(pid);
		
		request.setAttribute("productDTO", productDTO);
		
		List<Integer> rateNum = productService.getRateNum(pid);
		
		//JSP에서 사용할 수 있도록 request 범위에 저장
		request.setAttribute("rateNum", rateNum);
		
		ReviewBoardService rboardService = (ReviewBoardService) application.getAttribute("reviewBoardService");
		
		//전체 행수 얻기		
		int totalProductReviewNum = rboardService.getProductTotalRows(pid);
		double avgRate = rboardService.getAvgRate(pid);
		int intAvgRate= (int) avgRate;
		request.setAttribute("totalBoardNum", totalProductReviewNum);
		request.setAttribute("avgRate", avgRate);
		request.setAttribute("intAvgRate", intAvgRate);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productDetail.jsp").forward(request, response);
		
	}
	
}
