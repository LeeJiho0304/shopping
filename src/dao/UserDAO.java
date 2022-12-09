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
	
	public List<UserDTO> getUserList(int pageNo, String id, String condition, Connection conn) throws Exception {
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
	
	public int selectUser(String id, String password, Connection conn) throws Exception {
		int result =0;
		
		String sql
			="SELECT USERS_LEVEL "
			+"FROM USERS "
			+"WHERE USERS_ID = ? AND USERS_PASSWORD = ?"
			;
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			result = rs.getInt("USERS_LEVEL");
		}
		else {
			result = 0;
		}
		
		rs.close();
		pstmt.close();
		return result;
	}
	
	public int insertUser(UserDTO receivedDTO, Connection conn) throws Exception {
		String sql1
		= "INSERT INTO USERS "
		+ "VALUES (?, ?, ?, ?, ?, 1, ?, ?, 0) ";
	
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
		
		
		return rows1+rows2 ;
	}
	
	
	public UserDTO selectUserInfo(String id, Connection conn) throws Exception {
		String sql
			="SELECT * "
			+"FROM USERS "
			+"WHERE USERS_ID = ?";
		
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
		
		return userDTO;
	}
	
	public int getTotalRows(String id, String condition, Connection conn) throws Exception {
		String SQL
				="SELECT COUNT(*) as total "
				+"FROM USERS ";
		
		if (!condition.isEmpty()) {
			if (condition.equals("LIKE")) {
				SQL = SQL.concat("WHERE USERS_ID LIKE ? ");
			}
			else {
				SQL = SQL.concat("WHERE USERS_ID = ? ");
			}
			
		}
		
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
	
	//회원 정보 수정
	public int updateUser(UserDTO user, Connection conn) throws Exception {
		int result = 0;
		String sql = "UPDATE USERS SET USERS_NAME=?, USERS_PASSWORD=?, USERS_EMAIL=?, USERS_PHONE=?, "
					+ "USERS_BIRTHDAY=?, USERS_ADDRESS=? "
					+ " WHERE USERS_ID = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user.getUser_name());
		pstmt.setString(2, user.getUser_password());
		pstmt.setString(3, user.getUser_email());
		pstmt.setString(4, user.getUser_phone());
		pstmt.setString(5, user.getUser_birthday());
		pstmt.setString(6, user.getUser_address());
		pstmt.setString(7, user.getUser_id());
		result = pstmt.executeUpdate();
		
		pstmt.close();
		
		return result;
	}
	
	public void deleteUser(String id, Connection conn) throws Exception {
		String SQL = "DELETE FROM USER WHERE USERS_ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}

}
