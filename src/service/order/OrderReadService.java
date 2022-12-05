package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderReadService {
	private ServletContext application;
	
	public OrderReadService(ServletContext application) {
		this.application=application;
	}
	
	public OrderDTO getOrder(String id) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		return orderDAO.selectOrder(id);
	}
	
	public OrderDTO getOrder(int id) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		return orderDAO.selectOrder(id);
	}
}