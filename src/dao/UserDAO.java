package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import connection.ConnectionProvider;
import dto.user.UserDTO;

public class UserDAO {
	
	public List<UserDTO> getUserList(int pageNo, String id, String condition) throws SQLException {
		StringBuilder sqlBuilder = new StringBuilder();
		sqlBuilder.append("SELECT USERS_ID, USERS_NAME, RNUM ");
		sqlBuilder.append("FROM ( ");
		sqlBuilder.append("	SELECT USERS_ID, USERS_NAME, rownum as RNUM ");
		sqlBuilder.append("	FROM USERS ");
		sqlBuilder.append("	WHERE (rownum - 1) < ? ");
		
		if (!condition.isEmpty()) {
			if (condition.equals("LIKE")) {
				sqlBuilder.append("AND USERS_ID LIKE ?");
			}
			else {
				sqlBuilder.append("AND USERS_ID = ?");
			}
		}
		
		sqlBuilder.append("	) ");
		sqlBuilder.append("WHERE (RNUM - 1) > = ?");

		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sqlBuilder.toString());
		
		int idx = 1;
		pstmt.setInt(idx++, pageNo * 5);
		
		if (!condition.isEmpty()) {
			if (condition.equals("LIKE")) {
				pstmt.setString(idx++, "%" + id + "%");
			}
			else {
				pstmt.setString(idx++, id);
			}
		}
		
		pstmt.setInt(idx++, ((pageNo - 1) * 5));
		
		ResultSet rs = pstmt.executeQuery();
		
		List<UserDTO> users = new ArrayList<>();
		
		while(rs.next()) {
			UserDTO userDTO = new UserDTO();
			userDTO.setUser_id(rs.getString("USERS_ID")); 
			userDTO.setUser_name(rs.getString("USERS_NAME")); 
			users.add(userDTO);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return users;
	}
	
	public UserDTO selectUser(String id, String password) throws JSONException, SQLException {
		String sql
			="SELECT USERS_PASSWORD, USERS_NAME, USERS_LEVEL, USERS_POINT, USERS_ADDRESS "
			+"FROM USERS "
			+"WHERE USERS_ID = ? AND USERS_PASSWORD = ?"
			;
		
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		
		UserDTO userDTO = new UserDTO();
		
		if(rs.next()) {
			userDTO.setUser_id(id);
			userDTO.setUser_name(rs.getString("USERS_NAME"));
			userDTO.setUser_level(rs.getInt("USERS_LEVEL"));
			userDTO.setUser_point(rs.getInt("USERS_POINT"));
			userDTO.setUser_address(rs.getString("USERS_ADDRESS"));
		}
		else {
			userDTO = null;
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return userDTO;
	}
	
	public JSONObject insertUser(UserDTO receivedDTO) throws SQLException {
		Connection conn = ConnectionProvider.getConnection();
		JSONObject result = new JSONObject();

		try {
			String sql1
			= "INSERT INTO USERS "
			+ "VALUES (?, ?, ?, ?, ?, 1, ?, ?, 0)";
		
			conn.setAutoCommit(false);
			
			PreparedStatement pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, receivedDTO.getUser_id());
			pstmt1.setString(2, receivedDTO.getUser_password());
			pstmt1.setString(3, receivedDTO.getUser_email());
			pstmt1.setString(4, receivedDTO.getUser_address());
			pstmt1.setString(5, receivedDTO.getUser_phone());
			pstmt1.setString(6, receivedDTO.getUser_name());
			pstmt1.setString(7, receivedDTO.getUser_birthday());
			
			int rows1 = pstmt1.executeUpdate();
			if(rows1 == 0) throw new Exception("회원가입 실패");
			pstmt1.close();
			
			String sql2
			= "INSERT INTO USER_CART "
			+ "VALUES (0, ?)";
			
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, receivedDTO.getUser_id());
		
			int rows2 = pstmt2.executeUpdate();
			if(rows2 == 0) throw new Exception("회원 장바구니 만들기 실패");
	
			pstmt2.close();
			
			int update = rows1 + rows2;
			if (update == 2) {
				result.put("status", "success");
			}
			else {
				result.put("status", "fail");
			}
			
		} catch(Exception e) {
			try {
				//수동 롤백 -> 모두 실패 처리
				conn.rollback();
				result.put("status", "fail");
			} catch(SQLException e1) {
			}
			System.out.println("회원가입, 장바구니 생성 실패");
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					//자동 커밋 기능 켜기
					conn.setAutoCommit(true);
					conn.close();
				} catch (SQLException e) {
					
				}
			}
		}
		
		return result;
	}
	
	public UserDTO selectUserInfo(String id) throws JSONException, SQLException {
		String sql
			="SELECT * "
			+"FROM USERS "
			+"WHERE USERS_ID = ?"
			;
		
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		UserDTO userDTO = new UserDTO();
		
		if(rs.next()) {
			userDTO.setUser_id(rs.getString("USERS_ID"));
			userDTO.setUser_email(rs.getString("USERS_EMAIL"));
			userDTO.setUser_address(rs.getString("USERS_ADDRESS"));
			userDTO.setUser_phone(rs.getString("USERS_PHONE"));
			userDTO.setUser_level(rs.getInt("USERS_LEVEL"));
			userDTO.setUser_name(rs.getString("USERS_NAME"));
			userDTO.setUser_birthday(rs.getString("USERS_BIRTHDAY"));
			userDTO.setUser_point(rs.getInt("USERS_POINT"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return userDTO;
	}
	
	public int getTotalRows(String id, String condition) throws SQLException {
		String SQL
				="SELECT COUNT(*) as total "
				+"FROM USERS "
				;
		
		if (!condition.isEmpty()) {
			if (condition.equals("LIKE")) {
				SQL = SQL.concat("WHERE USERS_ID LIKE ? ");
			}
			else {
				SQL = SQL.concat("WHERE USERS_ID = ? ");
			}
			
		}
		
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		
		if (!condition.isEmpty()) {
			if (condition.equals("LIKE")) {
				pstmt.setString(1, "%" + id + "%");
			}
			else {
				pstmt.setString(1, id);
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
	
	public void updateUser(UserDTO receivedDTO) throws SQLException {
		StringBuilder sqlBuilder = new StringBuilder();
		sqlBuilder.append("UPDATE USERS SET ");
		if (!receivedDTO.getUser_email().equals("X")) {
			sqlBuilder.append("USERS_EMAIL = '" + receivedDTO.getUser_email() + "', ");
		}
		if (!receivedDTO.getUser_address().equals("X")) {
			sqlBuilder.append("USERS_ADDRESS = '" + receivedDTO.getUser_address() + "', ");
		}
		if (!receivedDTO.getUser_phone().equals("X")) {
			sqlBuilder.append("USERS_PHONE = '" + receivedDTO.getUser_phone() + "', ");
		}
		if (!receivedDTO.getUser_name().equals("X")) {
			sqlBuilder.append("USERS_NAME = '" + receivedDTO.getUser_name() + "', ");
		}
		if (!receivedDTO.getUser_birthday().equals("X")) {
			sqlBuilder.append("USERS_BIRTHDAY = '" + receivedDTO.getUser_birthday() + "', ");
		}
		sqlBuilder.delete(sqlBuilder.length() - 2, sqlBuilder.length());
		sqlBuilder.append(" WHERE USERS_ID = '" + receivedDTO.getUser_id() + "'");

		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sqlBuilder.toString());
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}
	
	public void deleteUser(String id) throws SQLException {
		String SQL = "DELETE FROM USER WHERE USERS_ID = ?";
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}

}
