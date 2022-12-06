package service.order;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.json.JSONException;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderDetailDTO;
import dto.order.OrderReadListDTO;

public class OrderService {
	private ServletContext application;
	private DataSource ds;
	private OrderDAO orderDAO;
	
	public OrderService(ServletContext application) {
		this.application=application;
		orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}
	
	//수정전
	/*
	//주문 넣기
	public void order(OrderDTO receivedDTO, OrderDetailDTO detailDTO) throws SQLException {
		orderDAO.insertOrder(receivedDTO, detailDTO);
	}
	
	//주문 삭제
	public void deleteOrder(OrderDTO order) throws SQLException {
		orderDAO.deleteOrder(order);
	}
	
	//주문 리스트 읽기
	public int getTotalRows(OrderReadListDTO receivedDTO) throws SQLException {
		return orderDAO.getTotalRows(receivedDTO);
	}
	
	public int getTotalJoinRows(OrderReadListDTO receivedDTO) throws SQLException {
		return orderDAO.getTotalJoinRows(receivedDTO);
	}
	
	public List<OrderDTO> getOrderList(int pageNo, OrderReadListDTO receivedDTO) throws JSONException, SQLException {
		return orderDAO.selectOrderList(pageNo, receivedDTO);
	}
	
	//주문 읽기
	public OrderDTO getOrder(int id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
	*/
	
	
	
	
}