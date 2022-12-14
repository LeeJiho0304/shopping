package dao;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.cart.CartDTO;
import dto.user.UserDTO;

public class CartDAO {
	// 장바구니에 담기
	public int insertCart(CartDTO cartDTO, Connection conn) throws Exception {
		int result = 0;

		// cart_detail에 insert
		String sql1 = "INSERT INTO cart_detail (cart_detail_id, cart_detail_item_count, product_id, users_id) "
					+ "VALUES (seq_cart_detail_id.nextval, ?, ?, ?)";

		PreparedStatement pstmt1 = conn.prepareStatement(sql1);
		pstmt1.setInt(1, cartDTO.getCart_detail_item_count());
		pstmt1.setInt(2, cartDTO.getProduct_id());
		pstmt1.setString(3, cartDTO.getUser_id());

		int rows1 = pstmt1.executeUpdate();
		if (rows1 == 0) throw new Exception("장바구니에 추가되지 않았음.");
		pstmt1.close();

		// 장바구니에 담겨있는 상품 총액 읽어오기
		String sql2 = "SELECT sum(product_price * c.cart_detail_item_count) as total_price "
					+ "FROM cart_detail c, product p " 
					+ "WHERE c.product_id = p.product_id and c.users_id = ? ";

		if (rows1 == 1) {
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, cartDTO.getUser_id());

			ResultSet rs = pstmt2.executeQuery();

			if (rs.next()) {
				cartDTO.setUser_cart_price(rs.getLong("total_price"));
			}
			pstmt2.close();
		}

		//해당 사용자 장바구니의 총액 업데이트 해주기 
		String sql3 = "UPDATE user_cart " 
					+ "SET user_cart_price = ? " 
					+ "WHERE users_id = ? ";

		PreparedStatement pstmt3 = conn.prepareStatement(sql3);
		pstmt3.setLong(1, cartDTO.getUser_cart_price());
		pstmt3.setString(2, cartDTO.getUser_id());

		int rows2 = pstmt3.executeUpdate();
		if (rows2 == 0) throw new Exception("장바구니 총합 금액이 업데이트되지 않음.");
		pstmt3.close();

		result = rows1 + rows2;

		return result;
	}

	//장바구니 총 갯수 출력
	public int getTotalRows(CartDTO cartDTO, Connection conn) throws Exception {
		int totalRows = 0;
		try {
			String sql = "SELECT count(*) " 
						+ "FROM cart_detail " 
						+ "WHERE users_id = ? ";

			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartDTO.getUser_id());
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				totalRows = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return totalRows;
	}

	// 장바구니 목록
	public List<CartDTO> selectAllList(String uid, Connection conn) throws Exception {
		List<CartDTO> cartDTOs = new ArrayList<>();
		
			String sql = "" +
					"SELECT rnum, cart_detail_id, product_id, product_name, product_price, users_id, cart_detail_item_count, user_cart_price " +
					"FROM ( " +
					    "SELECT rownum as rnum, cart_detail_id, product_id, product_name, product_price, users_id, cart_detail_item_count, user_cart_price " +
					    "FROM ( " +
					            "SELECT c.product_id, cart_detail_id, product_name, product_price, c.users_id, cart_detail_item_count, user_cart_price " +
					            "FROM product p, cart_detail c, user_cart u " +
					            "WHERE p.product_id = c.product_id and u.users_id = c.users_id and c.users_id = ? " +
					            "ORDER BY cart_detail_id desc " +
					         ") " +
				         ") " ;
					    
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			ResultSet rs = pstmt.executeQuery();
						
			while(rs.next()) {
				CartDTO	cartDTO = new CartDTO();
				
				cartDTO.setCart_detail_id(rs.getInt("cart_detail_id"));
				cartDTO.setProduct_id(rs.getInt("product_id"));
				cartDTO.setProduct_name(rs.getString("product_name"));
				cartDTO.setProduct_price(rs.getInt("product_price"));
				cartDTO.setUser_id(rs.getString("users_id"));
				cartDTO.setCart_detail_item_count(rs.getInt("cart_detail_item_count"));
				cartDTO.setUser_cart_price(rs.getLong("user_cart_price"));
				
				cartDTOs.add(cartDTO);
				
			}
			rs.close();
			pstmt.close();
		
		return cartDTOs;
	}

	// 장바구니 수정
	//수정된 갯수가 리턴
	public int updateCart(CartDTO cartDto, Connection conn) throws Exception {
		int result = 0;
		
		String sql = "UPDATE cart_detail SET cart_detail_item_count = ? "
					+ "WHERE cart_detail_id = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cartDto.getCart_detail_item_count());
		pstmt.setInt(2, cartDto.getCart_detail_id());
		result = pstmt.executeUpdate();
		
		if(result ==  1) {
			result =  cartDto.getCart_detail_item_count();
	        }           
		
		pstmt.close();
		
		return result;
	}

	public int deleteCart(String[] arrId, Connection conn) throws Exception {
		int result = 0;
		PreparedStatement pstmt = null;
		for(int i = 0; i<arrId.length; i++) {
			String SQL = "DELETE FROM cart_detail WHERE cart_detail_id = ?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, Integer.parseInt(arrId[i]));
			result += pstmt.executeUpdate();
		}		
		pstmt.close();
		if(result !=arrId.length) {
			throw new Exception("장바구니에서 모두가 삭제되지 않았음.");
		}
		return result;
	}

	public CartDTO getCart(String cid, Connection conn) throws Exception{
		CartDTO cart= new CartDTO();
		String sql = "select PRODUCT_ID, CART_DETAIL_ITEM_COUNT from CART_DETAIL where CART_DETAIL_ID= ? ";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cid);
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {
			cart.setProduct_id(rs.getInt(1));
			cart.setCart_detail_item_count(rs.getInt(2));
		}		
		return cart;
	}

}
