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
import service.product.ProductService;
import dto.Pager;

@WebServlet(name="admin.AdminProductListController", urlPatterns="/admin/AdminProductListController")
public class AdminProductListController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		ProductService productService = (ProductService)application.getAttribute("productService");
		
		//pageNo 얻기
		String strPageNo = request.getParameter("pageNo");
		if(strPageNo == null) {
			strPageNo = "1";
		}
		
		int pageNo = Integer.parseInt(strPageNo);
		
		int totalProductNum = productService.totalProductNum();
		
		//Pager 생성
		Pager pager = new Pager(10, 5, totalProductNum, pageNo);
		
		//pageNo에 해당하는 게시물 가져오기
		List<ProductDTO> productList = productService.getAllProductList(pager);
		
		request.setAttribute("pager", pager);
		request.setAttribute("productList", productList);
		
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/admin/productList.jsp").forward(request, response);
	}
}
