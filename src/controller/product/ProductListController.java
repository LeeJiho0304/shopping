package controller.product;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="ProductListController", urlPatterns="/ProductListController")
public class ProductListController extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("ProductListController.init() 실행");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ProductListController.service() 실행");
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/product/productList.jsp").forward(request, response);
	}
}
