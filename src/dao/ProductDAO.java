package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionProvider;
import dto.product.ProductDTO;
import dto.product.ProductListDTO;


public class ProductDAO {
	List<ProductListDTO> productListDTOs = new ArrayList<>();

	//상품 총 갯수 출력
	public int getTotalRows(ProductListDTO productListDTO, Connection conn) {
		int totalRows = 0;
		try {
			String sql = "SELECT count(*) " +
						"FROM product " + 
						"WHERE category_id = ? and subcategory_id =? ";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productListDTO.getCategory_id());
			pstmt.setInt(2, productListDTO.getSubcategory_id());
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				totalRows = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				//Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return totalRows;
	}
	
	//상품 목록 조회
	public List<ProductListDTO> selectAllList(int pageNo, ProductListDTO productListDTO, Connection conn) {
		try {
			String sql = "SELECT rnum, product_id, product_name, product_price, category_id, category_name, subcategory_id, subcategory_name, product_totalpoint " +
					 "FROM ( " + 
					    "SELECT rownum as rnum, product_id, product_name, product_price, category_id, category_name, subcategory_id, subcategory_name, product_totalpoint " + 
					    "FROM ( " +
					        "SELECT product_id, product_name, product_price, c.category_id, category_name, s.subcategory_id, subcategory_name, product_totalpoint " +
					        "FROM product p, subcategory s, category c " +
					        "WHERE p.subcategory_id = s.subcategory_id and s.category_id = c.category_id and p.category_id = c.category_id " +
					             "and p.category_id = ? and p.subcategory_id = ? " +
					        "ORDER BY product_id " +
					        ") " +
					    "WHERE rownum <= (? * 5) " +
					    ") " + 
					"WHERE rnum >= ((? - 1) * 5) + 1 ";
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productListDTO.getCategory_id());
			pstmt.setInt(2, productListDTO.getSubcategory_id());
			pstmt.setInt(3, pageNo);
			pstmt.setInt(4, pageNo);
			ResultSet rs = pstmt.executeQuery();
						
			while(rs.next()) {
				productListDTO = new ProductListDTO();
				
				productListDTO.setProduct_id(rs.getInt("product_id"));
				productListDTO.setProduct_name(rs.getString("product_name"));
				productListDTO.setProduct_price(rs.getInt("product_price"));
				productListDTO.setCategory_id(rs.getInt("category_id"));
				productListDTO.setCategory_name(rs.getString("category_name"));
				productListDTO.setSubcategory_id(rs.getInt("subcategory_id"));
				productListDTO.setSubcategory_name(rs.getString("subcategory_name"));
				productListDTO.setProduct_totalpoint(rs.getDouble("product_totalpoint"));
				
				productListDTOs.add(productListDTO);
				
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			e.getMessage();
		} finally {
			try {
				//Connection 반납
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return productListDTOs;
		
	}
	
	//상품 상세 정보 출력
	public ProductDTO selectProductContent(int product_id, Connection conn) {
		ProductDTO productDTO = null;
		
		try {
			String sql = "SELECT product_id, product_name, product_price, product_company, product_content, c.category_id, category_name, s.subcategory_id, subcategory_name, product_totalpoint " +
						"FROM product p, category c, subcategory s " + 
						"WHERE c.category_id = s.category_id and s.subcategory_id = p.subcategory_id and c.category_id = p.category_id " +
						"and product_id = ? ";
		
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			
			ResultSet rs = pstmt.executeQuery();
						
			while(rs.next()) {
				productDTO = new ProductDTO();
				
				productDTO.setProduct_id(rs.getInt("product_id"));
				productDTO.setProduct_name(rs.getString("product_name"));
				productDTO.setProduct_price(rs.getInt("product_price"));
				productDTO.setProduct_company(rs.getString("product_company"));
				productDTO.setProduct_content(rs.getString("product_content"));
				productDTO.setCategory_id(rs.getInt("category_id"));
				productDTO.setCategory_name(rs.getString("category_name"));
				productDTO.setSubcategory_id(rs.getInt("subcategory_id"));
				productDTO.setSubcategory_name(rs.getString("subcategory_name"));
				productDTO.setProduct_totalpoint(rs.getDouble("product_totalpoint"));
				
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			e.getMessage();
		} finally {
			try {
				//Connection 반납
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}

		return productDTO;
	}
	
	//상품 추가
	public int insert(ProductDTO product, Connection conn) throws Exception {
		
		String sql = "insert into boards2 (bno, btitle, bcontent, bwriter, bdate, bhitcount, bfilename, bsavedname, bfiletype) " +
					"values(seq_boards2_bno.nextval, ?, ?, ?, sysdate, 0, ?, ?, ?) ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, product.getBtitle());
//		pstmt.setString(2, product.getBcontent());
//		pstmt.setString(3, product.getBwriter());
//		pstmt.setString(4, product.getBfileName());
//		pstmt.setString(5, product.getBsavedName());
//		pstmt.setString(6, product.getBfileType());
		
		int rows = pstmt.executeUpdate();
		pstmt.close();
		
		return rows;
	}
	
}
