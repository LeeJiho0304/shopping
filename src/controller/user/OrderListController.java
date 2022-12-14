package controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Pager;
import dto.order.OrderDTO;
import service.OrderService;

@WebServlet(name="OrderListController", urlPatterns="/OrderListController")
public class OrderListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("orderListController");
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("loginId");
		System.out.println(userId);
		//PageNo 얻기
		String strPageNo=request.getParameter("pageNo");
		if(strPageNo == null) {
			strPageNo = "1";
		}
		int pageNo = Integer.parseInt(strPageNo);
				
		//boardService 객체 얻기
		ServletContext application = request.getServletContext();
		OrderService orderService = (OrderService) application.getAttribute("orderService");
				
		//페이징 대상이 되는 전체 행수 얻기		
		int totalOrderNum = orderService.getTotalRows(userId);
		System.out.println(totalOrderNum);
		//Pager 생성
		Pager pager = new Pager(3, 3, totalOrderNum, pageNo);
				
		//pageNo에 해당하는 게시물 가져오기
		List<OrderDTO> orderList = orderService.getOrderList(pager, userId);
				
		//JSP에서 사용할 수 있도록 request 범위에 저장
		request.setAttribute("pager", pager);
		//request.setAttribute("userId", userId);
		request.setAttribute("orderList", orderList);
	
		//JSP로 이동
		request.getRequestDispatcher("/WEB-INF/views/homePage/user/orderList.jsp").forward(request, response);
	}
}
