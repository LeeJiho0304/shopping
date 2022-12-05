package service.order;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;

import org.json.JSONException;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderReadListDTO;

public class OrderReadListService {
	List<OrderDTO> orders;
	OrderDTO orderDTO;
	private ServletContext application;
	
	public OrderReadListService(ServletContext application) {
		this.application=application;
	}
	
	public int getTotalRows(OrderReadListDTO receivedDTO) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		return orderDAO.getTotalRows(receivedDTO);
	}
	
	public int getTotalJoinRows(OrderReadListDTO receivedDTO) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		return orderDAO.getTotalJoinRows(receivedDTO);
	}
	
	public List<OrderDTO> getOrderList(int pageNo, OrderReadListDTO receivedDTO) throws JSONException, SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		return orderDAO.selectOrderList(pageNo, receivedDTO);
	}
}