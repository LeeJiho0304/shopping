package service.order;

import java.sql.SQLException;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderReadService {
	OrderDAO orderDAO = new OrderDAO();
	
	public OrderDTO getOrder(String id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
	
	public OrderDTO getOrder(int id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
}