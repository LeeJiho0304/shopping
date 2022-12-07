package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.json.JSONException;

import dao.OrderDAO;
import dto.order.OrderDTO;
import dto.order.OrderReadListDTO;
import dto.Pager;

public class OrderService {
	private ServletContext application;
	private DataSource ds;
	private OrderDAO orderDAO;
	
	public OrderService(ServletContext application) {
		this.application=application;
		orderDAO = (OrderDAO) application.getAttribute("orderDAO");
		ds = (DataSource)application.getAttribute("dataSource");
	}
	
	//수정전
	/*
	//주문 넣기
	public void order(OrderDTO receivedDTO, OrderDetailDTO detailDTO) throws SQLException {
		orderDAO.insertOrder(receivedDTO, detailDTO);
	}
	
	//주문 삭제
	public void deleteOrder(OrderDTO order) throws SQLException {
		orderDAO.deleteOrder(order);
	}
	*/
	//주문 리스트 읽기
	public int getTotalRows(String userId) {
		Connection conn = null;
		int totalRows = 0;
		try {
			conn = ds.getConnection();
			totalRows = orderDAO.getTotalRows(userId, conn);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return totalRows;
	}
	
//	public int getTotalJoinRows(OrderReadListDTO receivedDTO) throws SQLException {
//		return orderDAO.getTotalJoinRows(receivedDTO);
//	}
	
//	public List<OrderDTO> getOrderList(int pageNo, OrderReadListDTO receivedDTO) throws JSONException, SQLException {
//		return orderDAO.selectOrderList(pageNo, receivedDTO);
//	}
	
	public List<OrderDTO> getOrderList(Pager pager, String userId) {
		List<OrderDTO> result = null;
		Connection conn = null;
		try {
			conn = ds.getConnection();
			result = orderDAO.selectOrderList(pager, userId, conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	/*
	//주문 읽기
	public OrderDTO getOrder(int id) throws SQLException {
		return orderDAO.selectOrder(id);
	}
	*/

	
	
	
	
}