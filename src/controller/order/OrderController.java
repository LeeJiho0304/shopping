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
import dto.order.OrderDetailDTO;
import dto.product.ProductDTO;
import dto.user.UserDTO;
import service.OrderService;
import service.ProductService;
import service.UserService;


@WebServlet(name="OrderController", urlPatterns="/OrderController")
public class OrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("OrderController.doGet() 실행");
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");

		UserService userService = (UserService)request.getServletContext().getAttribute("userService");
		UserDTO userDTO = userService.getUserInfo(userId);

		request.setAttribute("user", userDTO);
		
		int quantity= Integer.parseInt(request.getParameter("quantity"));		
		int pid = Integer.parseInt(request.getParameter("pid"));	
			
		ProductService productService =(ProductService) request.getServletContext().getAttribute("productService");
		ProductDTO product = productService.getProduct(pid);
		request.setAttribute("productDTO", product);
		request.setAttribute("quantity", quantity);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/orderForm.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("OrderController.doPost() 실행");
		OrderService orderService = (OrderService) request.getServletContext().getAttribute("orderService");
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		
		OrderDTO order = new OrderDTO();
		OrderDetailDTO orderDetail = new OrderDetailDTO();
		
		order.setUsers_id((String) session.getAttribute("loginId"));
		//order.setUsers_id(request.getParameter("userId"));
		order.setOrders_price(Integer.parseInt(request.getParameter("product_price"))*Integer.parseInt(request.getParameter("quantity")));
		order.setOrders_address(request.getParameter("postcode") +" "+ request.getParameter("detailAddress"));
		
		orderDetail.setOrder_detail_item_count(Integer.parseInt(request.getParameter("quantity")));
		orderDetail.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
		
		orderService.order(order,orderDetail);

		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");
		ProductDTO productDTO = productService.getProduct(Integer.parseInt(request.getParameter("product_id")));
		
		request.setAttribute("productDTO", productDTO);
		request.setAttribute("order", order);
		request.setAttribute("orderDetail", orderDetail);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/successOrder.jsp").forward(request, response);

	}	
	
}
