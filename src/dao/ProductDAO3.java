package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionProvider;
import dto.Pager;
import dto.product.ProductDTO;
import dto.product.ProductListDTO;


public class ProductDAO3 {
	//해당 카테고리 상품 총 갯수 출력
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
	
	//해당 카테고리, 서브카테고리 상품 목록 조회
	public List<ProductListDTO> selectAllList(int pageNo, ProductListDTO productListDTO, Connection conn) {
		List<ProductListDTO> productListDTOs = new ArrayList<>();
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
		String sql = "insert into product (product_id, product_name, product_price, product_company, category_id, subcategory_id, product_content, " +
				"main_filename, main_savedname, main_content_type, detail_filename, detail_savedname, detail_content_type) " + 
				"values(seq_product_id.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, product.getProduct_name());
		pstmt.setInt(2, product.getProduct_price());
		pstmt.setString(3, product.getProduct_company());
		pstmt.setInt(4, product.getCategory_id());
		pstmt.setInt(5, product.getSubcategory_id());
		pstmt.setString(6, product.getProduct_content());
		pstmt.setString(7, product.getMain_filename());
		pstmt.setString(8, product.getMain_savedname());
		pstmt.setString(9, product.getMain_content_type());
		pstmt.setString(10, product.getDetail_filename());
		pstmt.setString(11, product.getDetail_savedname());
		pstmt.setString(12, product.getDetail_content_type());
		
		int rows = pstmt.executeUpdate();
		pstmt.close();
		
		return rows;
	}

	public int getTotalRows(Connection conn) throws Exception {
		String sql = "select count(*) from product";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int result = rs.getInt(1);
		rs.close();
		pstmt.close();
		
		return result;
	}

	public List<ProductDTO> selectAllProductList(Pager pager, Connection conn) throws Exception {
		List<ProductDTO> result = new ArrayList<>();
		
		String sql = "SELECT rnum, product_id, product_name, product_price, category_id, category_name, subcategory_id, subcategory_name, product_totalpoint " + 
				"FROM ( " + 
				"		SELECT rownum as rnum, product_id, product_name, product_price, category_id, category_name, subcategory_id, subcategory_name, product_totalpoint " + 
				"		FROM ( " + 
				"			SELECT product_id, product_name, product_price, c.category_id, category_name, s.subcategory_id, subcategory_name, product_totalpoint " + 
				"            FROM product p, subcategory s, category c " + 
				"            WHERE p.subcategory_id = s.subcategory_id and s.category_id = c.category_id and p.category_id = c.category_id " + 
				"            ORDER BY product_id desc " + 
				"        ) WHERE rownum <= ? " + 
				") WHERE rnum >= ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pager.getPageNo() * pager.getRowsPerPage());
		pstmt.setInt(2, (pager.getPageNo() - 1) * pager.getRowsPerPage() + 1);
		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			ProductDTO product = new ProductDTO();
			product.setProduct_id(rs.getInt("product_id"));;
			product.setProduct_name(rs.getString("product_name"));
			product.setProduct_price(rs.getInt("product_price"));
			product.setCategory_id(rs.getInt("category_id"));
			product.setCategory_name(rs.getString("category_name"));
			product.setSubcategory_id(rs.getInt("subcategory_id"));
			product.setSubcategory_name(rs.getString("subcategory_name"));
			product.setProduct_totalpoint(rs.getDouble("product_totalpoint"));
			result.add(product);
		}
		rs.close();
		pstmt.close();
		
		return result;
	}

}
