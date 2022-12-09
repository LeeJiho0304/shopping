package controller.order;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.order.OrderDTO;
import dto.product.ProductDTO;
import dto.qna.QnABoardDTO;
import dto.user.UserDTO;
import service.OrderService;
import service.ProductService;
import service.QnABoardService;
import service.UserService;


@WebServlet(name="OrderController", urlPatterns="/OrderController")
public class OrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("OrderController.doGet() 실행");
		
		int quantity=  Integer.parseInt(request.getParameter("quantity"));
		System.out.println("quantity: "+ quantity);
		int pid = Integer.parseInt(request.getParameter("pid"));	
		System.out.println("pid: "+ pid);
		
		ProductService productService =(ProductService) request.getServletContext().getAttribute("productService");
		ProductDTO product = productService.getProduct(pid);
		System.out.println("엥");
		request.setAttribute("productDTO", product);
		request.setAttribute("quantity", quantity);
		System.out.println("뭔데");
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/orderForm.jsp").forward(request, response);
		System.out.println("오잉");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("OrderController.doPost() 실행");
		OrderService orderService = (OrderService) request.getServletContext().getAttribute("orderService");
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		
		OrderDTO order = new OrderDTO();
		
		order.setUsers_id((String) session.getAttribute("uid"));
		order.setUsers_id(request.getParameter("userId"));
		order.setOrders_price(Integer.parseInt(request.getParameter("userId")));
		order.setOrders_address(request.getParameter("inputAddress"));
		
	
		UserDTO user = new UserDTO();		
		
		ServletContext application = request.getServletContext();
		UserService userService = (UserService)application.getAttribute("userService");
		int result = userService.join(user);
		
		if(result==2) {
			//session.setAttribute("loginId", userId);	
			response.sendRedirect("MainController");
		}else {
			request.getRequestDispatcher("/WEB-INF/views/homePage/user/joinForm.jsp").forward(request, response);
		}
	}	
	
}
