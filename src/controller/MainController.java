package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.product.ProductListDTO;
import service.ProductService;

@WebServlet(name="MainController", urlPatterns="/MainController")
public class MainController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productService = (ProductService) request.getServletContext().getAttribute("productService");
		
		List<ProductListDTO> bestFrige = productService.getBestProduct(1);
		List<ProductListDTO> bestTv = productService.getBestProduct(2);
		List<ProductListDTO> bestWashing = productService.getBestProduct(3);
		List<ProductListDTO> bestAir = productService.getBestProduct(4);
		List<ProductListDTO> bestPc = productService.getBestProduct(5);

		request.setAttribute("bestFrige", bestFrige);
		request.setAttribute("bestTv", bestTv);
		request.setAttribute("bestWashing", bestWashing);
		request.setAttribute("bestAir", bestAir);
		request.setAttribute("bestPc", bestPc);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(request, response);
	}
	
}
