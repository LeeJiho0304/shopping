package service.order;

import java.sql.SQLException;
import java.util.List;

import org.json.JSONException;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderReadListDTO;

public class OrderReadListService {
	List<OrderDTO> orders;
	OrderDTO orderDTO;
	OrderDAO orderDAO = new OrderDAO();
	
	public int getTotalRows(OrderReadListDTO receivedDTO) throws SQLException {
		return orderDAO.getTotalRows(receivedDTO);
	}
	
	public int getTotalJoinRows(OrderReadListDTO receivedDTO) throws SQLException {
		return orderDAO.getTotalJoinRows(receivedDTO);
	}
	
	public List<OrderDTO> getOrderList(int pageNo, OrderReadListDTO receivedDTO) throws JSONException, SQLException {
		return orderDAO.selectOrderList(pageNo, receivedDTO);
	}
}