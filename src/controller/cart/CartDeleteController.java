package controller.cart;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.cart.CartDTO;
import service.CartService;

@WebServlet(name="CartDeleteController", urlPatterns="/CartDeleteController")
public class CartDeleteController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
		String[] arrId = request.getParameterValues("checkedId");
		// 서비스 객체 얻기
		ServletContext application = request.getServletContext();
		CartService cartService = (CartService)application.getAttribute("cartService");
		
		//카트 delete
		//변경 후 값이 출력 됨 
		int result = cartService.deleteCart(arrId);
		
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		List<CartDTO> cartList = cartService.getList(loginId);
		request.setAttribute("cartList", cartList);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/cart/cartDelete.jsp").forward(request, response);
		
	}
	

}
