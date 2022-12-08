package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.Pager;
import dto.order.OrderDTO;
import dto.order.OrderDetailDTO;
import dto.order.OrderReadListDTO;

public class OrderDAO {
	public void insertOrder(OrderDTO order, OrderDetailDTO orderDetail, Connection conn) throws Exception {
		int price = order.getOrders_price();
		String userId = order.getUsers_id();
		String address = order.getOrders_address();
		
		String SQL
			="INSERT INTO ORDERS "
			+"VALUES ("
			+"SEQ_ORDERS_ID.nextval, SYSDATE, ?, ?, ?, DEFAULT"
			+")";
		
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, price);
		pstmt.setString(2, userId);
		pstmt.setString(3, address);
		pstmt.executeUpdate();
		
		int count = orderDetail.getOrder_detail_item_count();
		int productId = orderDetail.getProduct_id();
		SQL
			="INSERT INTO ORDER_DETAIL "
			+"VALUES ("
			+"SEQ_ORDER_DETAIL_ID.nextval, ?, SEQ_ORDERS_ID.currval, ?"
			+")";
		
		pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, count);
		pstmt.setInt(2, productId);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	public OrderDTO selectOrder(String id, Connection conn) throws Exception {
		String SQL
			="SELECT ORDERS.USER_ID, ORDERS.ORDERS_ID, PRODUCT_NAME, ORDER_DETAIL_ITEM_COUNT, ORDERS_DATE, ORDERS_PRICE, ORDERS_STATUS, ORDERS_ADDRESS "
			+"FROM ORDERS, ORDER_DETAIL, PRODUCT "
			+"WHERE ORDERS.USERS_ID = ? AND "
		    +"ORDERS.ORDERS_ID = ORDER_DETAIL.ORDERS_ID AND "
		    +"ORDER_DETAIL.PRODUCT_ID = PRODUCT.PRODUCT_ID";
		
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		OrderDTO order = new OrderDTO();
		
		if(rs.next()) {
			order.setUsers_id(rs.getString("USERS_ID"));
			order.setOrders_id(rs.getInt("ORDERS_ID"));
			order.setProduct_name(rs.getString("PRODUCT_NAME"));
			order.setOrder_detail_item_count(rs.getInt("ORDER_DETAIL_ITEM_COUNT"));
			order.setOrders_date(rs.getString("ORDERS_DATE"));
			order.setOrders_price(rs.getInt("ORDERS_PRICE"));
			order.setOrders_status(rs.getString("ORDERS_STATUS"));
			order.setOrders_address(rs.getString("ORDERS_ADDRESS"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return order;
	}
	
	public OrderDTO selectOrder(int id, Connection conn) throws Exception {
		String SQL
			="SELECT ORDERS.USERS_ID, ORDERS.ORDERS_ID, PRODUCT_NAME, ORDER_DETAIL_ITEM_COUNT, ORDERS_DATE, ORDERS_PRICE, ORDERS_STATUS, ORDERS_ADDRESS "
			+"FROM ORDERS, ORDER_DETAIL, PRODUCT "
			+"WHERE ORDERS.ORDERS_ID = ? AND "
	    	+"ORDERS.ORDERS_ID = ORDER_DETAIL.ORDERS_ID AND "
	    	+"ORDER_DETAIL.PRODUCT_ID = PRODUCT.PRODUCT_ID";
		
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		OrderDTO order = new OrderDTO();
		
		if(rs.next()) {
			order.setUsers_id(rs.getString("USERS_ID"));
			order.setOrders_id(rs.getInt("ORDERS_ID"));
			order.setProduct_name(rs.getString("PRODUCT_NAME"));
			order.setOrder_detail_item_count(rs.getInt("ORDER_DETAIL_ITEM_COUNT"));
			order.setOrders_date(rs.getString("ORDERS_DATE"));
			order.setOrders_price(rs.getInt("ORDERS_PRICE"));
			order.setOrders_status(rs.getString("ORDERS_STATUS"));
			order.setOrders_address(rs.getString("ORDERS_ADDRESS"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return order;
	}
	
	public List<OrderDTO> selectOrderList(Pager pager, String userId, Connection conn) throws Exception {
		String sql = "select RNUM, USERS_ID, product_id, ORDERS_ID, PRODUCT_NAME, ORDERS_DATE, ORDERS_STATUS, main_filename, main_savedname, main_content_type, orders_price " +
				"from ( " +
				"	    select rownum as RNUM, USERS_ID, product_id, ORDERS_ID, PRODUCT_NAME, ORDERS_DATE, ORDERS_STATUS, main_filename, main_savedname, main_content_type, orders_price " +
				"	    from ( " +
				"	        SELECT ORDERS.USERS_ID, PRODUCT.product_id, ORDERS.ORDERS_ID, PRODUCT_NAME, ORDERS_DATE, ORDERS_STATUS, PRODUCT.main_filename, PRODUCT.main_savedname, PRODUCT.main_content_type, orders.orders_price " +
				"	        FROM ORDERS, ORDER_DETAIL, PRODUCT " +
				"	        WHERE ORDERS.ORDERS_ID = ORDER_DETAIL.ORDERS_ID AND " +
				"	                ORDER_DETAIL.PRODUCT_ID = PRODUCT.PRODUCT_ID AND " +
				"	                users_id = ? "+
				"	        order by ORDERS_DATE desc " +
				"	    ) where rownum <= ? " +
				"	) where rnum >= ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, userId);
		pstmt.setInt(2, pager.getPageNo() * pager.getRowsPerPage());
		pstmt.setInt(3, (pager.getPageNo() - 1) * pager.getRowsPerPage() + 1);
		ResultSet rs = pstmt.executeQuery();
		
		List<OrderDTO> orders = new ArrayList<>();
		
		while(rs.next()) {
			OrderDTO orderDTO = new OrderDTO();
			orderDTO.setUsers_id(rs.getString("USERS_ID"));
			orderDTO.setProduct_id(rs.getInt("product_id"));
			orderDTO.setOrders_id(rs.getInt("ORDERS_ID"));
			orderDTO.setProduct_name(rs.getString("PRODUCT_NAME"));
			orderDTO.setOrders_date(rs.getString("ORDERS_DATE"));
			orderDTO.setOrders_status(rs.getString("ORDERS_STATUS"));
			orderDTO.setMain_filename(rs.getString("main_filename"));
			orderDTO.setMain_savedname(rs.getString("main_savedname"));
			orderDTO.setMain_content_type(rs.getString("main_content_type"));
			orderDTO.setOrders_price(rs.getInt("orders_price"));
			orders.add(orderDTO);
			System.out.println(orders);
		}
		System.out.println("orders");
		rs.close();
		pstmt.close();
		return orders;
	}
	
	public int getTotalRows(String userId, Connection conn) throws Exception {
		String sql
				= "SELECT COUNT(*) "
				+ "FROM ORDERS "
				+ "WHERE users_id = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();
		int result = 0;
		
		if (rs.next()) {
			result = rs.getInt(1);
		}
		
		rs.close();
		pstmt.close();
		System.out.println("rows" + result);
		return result;
	}
	
	public int getTotalJoinRows(OrderReadListDTO receivedDTO, Connection conn) throws Exception {
		String SQL
				="SELECT COUNT(*) as total "
				+"FROM ORDERS, ORDER_DETAIL, PRODUCT "
				+"WHERE ORDERS.ORDERS_ID = ORDER_DETAIL.ORDERS_ID AND "
				+"ORDER_DETAIL.PRODUCT_ID = PRODUCT.PRODUCT_ID AND ";
		
		if (!(receivedDTO.getCondition() == null)) {
			if (receivedDTO.getCondition().equals("LIKE")) {
				SQL = SQL.concat("PRODUCT_NAME LIKE ? ");
			}
			else {
				SQL = SQL.concat("PRODUCT_NAME = ? ");
			}
			
		}
		
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		
		if (!(receivedDTO.getCondition() == null)) {
			if (receivedDTO.getCondition().equals("LIKE")) {
				pstmt.setString(1, "%" + receivedDTO.getProduct_name() + "%");
			}
			else {
				pstmt.setString(1, receivedDTO.getProduct_name());
			}
			
		}
		
		ResultSet rs = pstmt.executeQuery();
		int result;
		if (rs.next()) {
			result = rs.getInt("total");
		}
		else {
			result = 0;
		}
		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}
	
	public void updateOrder(OrderDTO order, Connection conn) throws Exception {
		int id = order.getOrders_id();
		String status = order.getOrders_status();
		
		if (!status.equals("X")) {
			String SQL
			="UPDATE ORDERS "
			+"SET ORDERS_STATUS = ? "
			+"WHERE ORDERS_ID = ?";
		
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, status);
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		}
		
	}
	
	public void deleteOrder(OrderDTO order, Connection conn) throws Exception { 
		int id = order.getOrders_id();
		String SQL = "DELETE FROM ORDERS WHERE ORDERS_ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setInt(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
}