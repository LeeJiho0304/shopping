package service.order;

import java.sql.SQLException;

import dao.OrderDAO;
import dto.order.OrderDTO;

public class OrderUpdateService {
	OrderDAO orderDAO = new OrderDAO();
	
	public void updateOrder(OrderDTO order) throws SQLException {
		orderDAO.updateOrder(order);
	}
}
