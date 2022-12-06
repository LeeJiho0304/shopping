package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.product.ProductDTO;
import dto.product.ProductListDTO;
import service.ProductService;

@WebServlet(name="admin.AdminProductListController", urlPatterns="/admin/AdminProductListController")
public class AdminProductListController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		
		ProductListDTO dto = new ProductListDTO(2, 1);
		List<ProductListDTO> list = productService.getList(1, dto);
		request.setAttribute("list", list);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/admin/productList.jsp").forward(request, response);
	}
}
