package service.order;

import java.sql.SQLException;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderDetailDTO;

public class OrderCreateService {
	OrderDAO orderDAO = new OrderDAO();
	
	public void order(OrderDTO receivedDTO, OrderDetailDTO detailDTO) throws SQLException {
		orderDAO.insertOrder(receivedDTO, detailDTO);
	}
}