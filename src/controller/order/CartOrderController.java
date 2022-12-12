package controller.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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


@WebServlet(name="CartOrderController", urlPatterns="/CartOrderController")
public class CartOrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("CartOrderController.doGet() 실행");
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");

		UserService userService = (UserService)request.getServletContext().getAttribute("userService");
		UserDTO userDTO = userService.getUserInfo(userId);

		request.setAttribute("user", userDTO);
		
		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");				
		List<ProductDTO> products = new ArrayList<>();
		List<Integer> pids = new ArrayList<>(); //(List<Integer>) request.getAttribute("cart_id");
		pids.add(1);
		pids.add(2);
		pids.add(3);
		for(int i: pids) {
			ProductDTO productDTO = productService.getProduct(i);
			productDTO.setProduct_reserve(2);
			products.add(productDTO);
		}
		int or = 1;		
		//int quantity= Integer.parseInt(request.getParameter("quantity"));		
		//int pid = Integer.parseInt(request.getParameter("pid"));	
			
		//ProductService productService =(ProductService) request.getServletContext().getAttribute("productService");
		//ProductDTO product = productService.getProduct(pid);
		request.setAttribute("products", products);
		//request.setAttribute("quantity", quantity);
		request.setAttribute("order", or);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/orderForm.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("CartOrderController.doPost() 실행");
		OrderService orderService = (OrderService) request.getServletContext().getAttribute("orderService");
		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		
		OrderDTO order = new OrderDTO();
		OrderDetailDTO orderDetail = new OrderDetailDTO();
		
		order.setUsers_id((String) session.getAttribute("loginId"));
		order.setOrders_address(request.getParameter("postcode") +" "+ request.getParameter("detailAddress"));
		String[] pids = request.getParameter("pid").split("");
		String[] quantity = request.getParameter("quantity").split("");
		List<OrderDTO> orderList = new ArrayList<>();
		List<ProductDTO> product = new ArrayList<>();
		for(int i=0; i<pids.length; i++) {
			ProductDTO productDTO = productService.getProduct(Integer.parseInt(pids[i]));
			order.setOrders_price(productDTO.getProduct_price());
			orderDetail.setProduct_id(Integer.parseInt(pids[i]));
			orderDetail.setOrder_detail_item_count(Integer.parseInt(quantity[i]));
			productDTO.setProduct_reserve(Integer.parseInt(quantity[i]));			
			orderService.order(order,orderDetail);
			orderList.add(order);
			product.add(productDTO);
		}
	
		request.setAttribute("order", order);
		request.setAttribute("product", product);
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/successCartOrder.jsp").forward(request, response);

	}	
	
}
