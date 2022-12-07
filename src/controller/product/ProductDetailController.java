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

import dao.ProductDAO3;
import dto.product.ProductDTO;
import service.ProductService;

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
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productDetail.jsp").forward(request, response);
	}
	
}
