package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderUpdateService {
	private ServletContext application;
	
	public OrderUpdateService(ServletContext application) {
		this.application=application;
	}
	
	public void updateOrder(OrderDTO order) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		orderDAO.updateOrder(order);
	}
}
