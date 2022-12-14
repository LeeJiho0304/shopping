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
import service.CartService;
import service.OrderService;
import service.ProductService;
import service.UserService;


@WebServlet(name="CartOrderController", urlPatterns="/CartOrderController")
public class CartOrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println("CartOrderController.doGet() 실행");
		CartService cartService = (CartService)request.getServletContext().getAttribute("cartService");
		String[] cartDetailId = request.getParameterValues("product");
		List<Integer> pids = new ArrayList<>();
		List<Integer> quantity = new ArrayList<>();
		for(String c:cartDetailId ) {
			pids.add(cartService.getCart(c).getProduct_id());
			quantity.add(cartService.getCart(c).getCart_detail_item_count());
		}

		//세션 객체 가져오기
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");

		UserService userService = (UserService)request.getServletContext().getAttribute("userService");
		UserDTO userDTO = userService.getUserInfo(userId);

		request.setAttribute("user", userDTO);
		
		ProductService productService = (ProductService)request.getServletContext().getAttribute("productService");				
		List<ProductDTO> products = new ArrayList<>();
		
		for(int i=0; i<pids.size();i++) {
			ProductDTO productDTO = productService.getProduct(pids.get(i));
			productDTO.setProduct_reserve(quantity.get(i));
			products.add(productDTO);
		}
		int or = 1;		
		session.setAttribute("products", products);
		session.setAttribute("cartDetailId", cartDetailId);
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
		CartService cartService = (CartService)request.getServletContext().getAttribute("cartService");
		
		//세션 객체 가져오기
		HttpSession session = request.getSession();
		
		OrderDTO order = new OrderDTO();
		OrderDetailDTO orderDetail = new OrderDetailDTO();
		
		order.setUsers_id((String) session.getAttribute("loginId"));
		order.setOrders_address(request.getParameter("postcode") +" "+ request.getParameter("detailAddress"));
		List<ProductDTO> products = (List<ProductDTO>) session.getAttribute("products");
		String[] cartDetailId = (String[]) session.getAttribute("cartDetailId");
		List<OrderDTO> orderList = new ArrayList<>();
		for(ProductDTO p : products) {
			order.setOrders_price(p.getProduct_price());
			orderDetail.setProduct_id(p.getProduct_id());
			orderDetail.setOrder_detail_item_count(p.getProduct_reserve());				
			orderService.order(order,orderDetail);
			orderList.add(order);
		}
	
		request.setAttribute("order", order);
		request.setAttribute("product", products);
		cartService.deleteCart(cartDetailId);
		session.removeAttribute("products");
		session.removeAttribute("cartDetailId");
		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/successCartOrder.jsp").forward(request, response);

	}	
	
}
