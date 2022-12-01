package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderUpdateService {
	private ServletContext application;
	OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
	
	public OrderUpdateService(ServletContext application) {
		this.application=application;
	}
	
	public void updateOrder(OrderDTO order) throws SQLException {
		orderDAO.updateOrder(order);
	}
}
