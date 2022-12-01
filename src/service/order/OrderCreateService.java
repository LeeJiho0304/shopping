package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderDetailDTO;

public class OrderCreateService {
	private ServletContext application;
	OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		
	public void order(OrderDTO receivedDTO, OrderDetailDTO detailDTO) throws SQLException {
		orderDAO.insertOrder(receivedDTO, detailDTO);
	}
}