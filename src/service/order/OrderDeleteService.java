package service.order;

import java.sql.SQLException;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderDeleteService {
	OrderDAO orderDAO = new OrderDAO();
	
	public void deleteOrder(OrderDTO order) throws SQLException {
		orderDAO.deleteOrder(order);
	}
	
}
