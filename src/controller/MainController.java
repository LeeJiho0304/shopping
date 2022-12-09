package controller;

import java.io.IOException;
import java.util.ArrayList;
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
		ProductService productService = (ProductService)request.getSession().getAttribute("productService");
		
//		List<ProductListDTO> bestFrige = productService.
//		List<ProductListDTO> bestTv = productService.
//		List<ProductListDTO> bestPc = productService.
//		List<ProductListDTO> bestAir = productService.
//		List<ProductListDTO> bestWashing = productService.
//		
//		request.setAttribute("bestTv", bestTv);
//		request.setAttribute("bestPc", bebestPcstTv);
//		request.setAttribute("bestFrige", bestFrige);
//		request.setAttribute("bestAir", bestAir);
//		request.setAttribute("bestWashing", bestWashing);

		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(request, response);
	}
	
}
