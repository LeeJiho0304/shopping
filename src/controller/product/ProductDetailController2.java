package controller.product;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO4;
import dto.product.ProductDTO;
import service.ProductService;

@WebServlet(name="ProductDetailController2", urlPatterns="/ProductDetailController2")
public class ProductDetailController2 extends HttpServlet {
	ProductDTO productDTO;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서비스 객체 얻기
		//전체 행수 얻기
		//현재 페이지 얻기
		//페이저 객체 생성하기
		//해당 페이지의 게시물 리스트 가져오기
		//request 범위에 저장
		
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productContentService");
		//productDTO = productService.getContent(50);
		
		request.setAttribute("productDTO", productDTO);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productDetail.jsp").forward(request, response);
	}
	
}
