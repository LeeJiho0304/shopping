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

import dao.ProductDAO;
import dto.product.ProductDTO;
import service.product.ProductContentService;

@WebServlet(name="ProductDetailController", urlPatterns="/ProductDetailController")
public class ProductDetailController extends HttpServlet {
	ProductDTO productDTO;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		
		System.out.println(application.toString());
		ProductContentService productContentService = (ProductContentService)application.getAttribute("productContentService");
		productDTO = productContentService.getContent(50);
		System.out.println("서비스 나왔고");
		request.setAttribute("productDTO", productDTO);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/Prode.jsp").forward(request, response);
	}
	
}
