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

@WebServlet(name="CartUpdateController", urlPatterns="/CartUpdateController")
public class CartUpdateController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int quantity=  Integer.parseInt(request.getParameter("quantity"));
		System.out.println("컨트롤러에서 "+quantity);
		int cart_detail_id = Integer.parseInt(request.getParameter("cart_detail_id"));
		CartDTO cartDto = new CartDTO();
		cartDto.setCart_detail_id(cart_detail_id);
		cartDto.setCart_detail_item_count(quantity);
		
		// 서비스 객체 얻기
		ServletContext application = request.getServletContext();
		CartService cartService = (CartService)application.getAttribute("cartService");
		
		//카트 insert
		//변경 후 값이 출력 됨 
		int result = cartService.updateCart(cartDto);
		
		
		String loginId = (String) session.getAttribute("loginId");
		List<CartDTO> cartList = cartService.getList(loginId);
		System.out.println("업뎃:" +cartList.toString());
		request.setAttribute("cartList", cartList);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/cart/cartDelete.jsp").forward(request, response);		
	}
	

}
