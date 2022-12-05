package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import connection.ConnectionProvider;
import dto.subcategory.SubCategoryDTO;

public class SubCategoryDAO {
	JSONObject response = new JSONObject();
	JSONArray data = new JSONArray();
	List<SubCategoryDTO> subcategoryDTOs = new ArrayList<>() ;
	
	//DB에서 받아서 DTO로 저장하여 리턴하는 메소드 
	public List<SubCategoryDTO> selectSubCategoryAllList(int category_id, Connection conn) throws Exception {

		String sql = "SELECT subcategory_id, subcategory_name, s.category_id as category_id, category_name "
				+ "FROM category c, subcategory s "
				+ "WHERE s.category_id = c.category_id and s.category_id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, category_id);

		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			SubCategoryDTO subcategoryDTO = new SubCategoryDTO();

			subcategoryDTO.setCategory_id(rs.getInt("category_id"));
			subcategoryDTO.setCategory_name(rs.getString("category_name"));
			subcategoryDTO.setSubcategory_id(rs.getInt("subcategory_id"));
			subcategoryDTO.setSubcategory_name(rs.getString("subcategory_name"));
			subcategoryDTOs.add(subcategoryDTO);
		}
		
		rs.close();
		pstmt.close();
		
		return subcategoryDTOs;
	}
}
