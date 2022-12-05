package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderDeleteService {
	private ServletContext application;
	
	public OrderDeleteService(ServletContext application) {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		this.application=application;
	}
	
	public void deleteOrder(OrderDTO order) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		orderDAO.deleteOrder(order);
	}
	
}
