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
import service.product.ProductService;

@WebServlet(name="ProductDetailController", urlPatterns="/ProductDetailController")
public class ProductDetailController extends HttpServlet {
	ProductDTO productDTO;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productContentService");
		//productDTO = productService.getContent(50);
		
		request.setAttribute("productDTO", productDTO);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productDetail.jsp").forward(request, response);
	}
	
}
