package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderDeleteService {
	private ServletContext application;
	OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
	
	public void deleteOrder(OrderDTO order) throws SQLException {
		orderDAO.deleteOrder(order);
	}
	
}
