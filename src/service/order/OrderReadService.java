package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderReadService {
	private ServletContext application;
	OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
	
	public OrderDTO getOrder(String id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
	
	public OrderDTO getOrder(int id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
}