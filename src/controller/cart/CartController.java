package controller.cart;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.cart.CartDTO;
import service.CartService;

@WebServlet(name="CartController", urlPatterns="/CartController")
public class CartController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int quantity=  Integer.parseInt(request.getParameter("quantity"));
		int pid = Integer.parseInt(request.getParameter("pid"));
		String loginId = (String) session.getAttribute("loginId");
	
		CartDTO cartDto = new CartDTO(pid, quantity, loginId);
		System.out.println(cartDto);
		// 서비스 객체 얻기
		ServletContext application = request.getServletContext();
		CartService cartService = (CartService)application.getAttribute("cartService");
		
		//카트 insert
		int result = cartService.insertCart(cartDto);
		
		System.out.println("result"+result);
		
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/cart/CartList.jsp").forward(request, response);
	}
	
}
