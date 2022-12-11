package controller.cart;

import java.io.IOException;
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

@WebServlet(name="CartController", urlPatterns="/CartController")
public class CartController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int quantity=  Integer.parseInt(request.getParameter("quantity"));
		int pid = Integer.parseInt(request.getParameter("pid"));
		String loginId = (String) session.getAttribute("loginId");
	
		CartDTO cartDto = new CartDTO(pid, quantity, loginId);
		
		// 서비스 객체 얻기
		ServletContext application = request.getServletContext();
		CartService cartService = (CartService)application.getAttribute("cartService");
		
		//카트 insert
		int result = cartService.insertCart(cartDto);
		response.getWriter().println(result);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ServletContext application = request.getServletContext();
		CartService cartService = (CartService)application.getAttribute("cartService");
		String loginId = (String) session.getAttribute("loginId");
		List<CartDTO> cartList = cartService.getList(loginId);
		request.setAttribute("cartList", cartList);
		request.getRequestDispatcher("/WEB-INF/views/homePage/cart/CartList.jsp").forward(request, response);
		
		
	}
}
