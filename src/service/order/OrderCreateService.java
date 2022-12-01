package service.order;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderDetailDTO;

public class OrderCreateService {
	private ServletContext application;
	
	public OrderCreateService(ServletContext application) {
		this.application=application;
	}
		
	public void order(OrderDTO receivedDTO, OrderDetailDTO detailDTO) throws SQLException {
		OrderDAO orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		orderDAO.insertOrder(receivedDTO, detailDTO);
	}
}