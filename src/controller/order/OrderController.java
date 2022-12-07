package controller.order;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.order.OrderDTO;
import dto.qna.QnABoardDTO;
import dto.user.UserDTO;
import service.OrderService;
import service.QnABoardService;
import service.UserService;


@WebServlet(name="OrderController", urlPatterns="/OrderController")
public class OrderController extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.getRequestDispatcher("/WEB-INF/views/homePage/order/orderForm.jsp").forward(request, response);
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
