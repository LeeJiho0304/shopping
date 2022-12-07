package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Pager;
import dto.qna.QnABoardDTO;
import dto.qna.QnABoardProductDTO;

public class QnABoardDAO {
	List<QnABoardDTO> qnaBoardDTOs = new ArrayList<>();
	List<QnABoardProductDTO> qnaBoardProductDTOs = new ArrayList<>();

	public int getTotalRows(Connection conn) throws Exception {
		int totalRows = 0;
		
			String sql = "select count(*) from qna_board ";
			PreparedStatement pstmt;
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				totalRows = rs.getInt(1);
			}
		return totalRows;
	}

	public int getTotalSearchRows(String search, Connection conn) throws Exception {
		int totalRows = 0;
		try {
			String sql = "" + "select count(*) "
					+ "FROM qna_board q, product p WHERE p.product_id = q.product_id and product_name like '%'||?||'%' ";
			PreparedStatement pstmt;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				totalRows = rs.getInt(1);
				System.out.println("QnADAO totalrows: " + rs.getInt(1));
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
			} finally {
				try {
					// Connection 반납
					conn.close();
					System.out.println("반납 성공");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return totalRows;
	}
	
	public int getMyListRows(String users_id, Connection conn) throws Exception {
		int totalRows = 0;
		try {
			String sql = "" + "select count(*) "
					+ "FROM qna_board q, product p WHERE p.product_id = q.product_id and users_id like '%'||?||'%' ";
			PreparedStatement pstmt;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, users_id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				totalRows = rs.getInt(1);
				System.out.println("QnADAO totalrows: " + rs.getInt(1));
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
			} finally {
				try {
					// Connection 반납
					conn.close();
					System.out.println("반납 성공");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return totalRows;
	}
	
	public List<QnABoardDTO> selectAllList(Pager pager, Connection conn) throws Exception {
		List<QnABoardDTO> qnaBoardDTOs = new ArrayList<>();
		try {
			// sql문 작성
			String sql = ""
					+ " SELECT RNUM, qna_board_id, product_name, qna_board_title, QNA_BOARD_ANSWER, users_id, qna_board_date "
					+ " FROM ("
					+ "    SELECT ROWNUM AS RNUM, qna_board_id, product_name, qna_board_title, QNA_BOARD_ANSWER, users_id, qna_board_date  "
					+ "    FROM ( "
					+ "       SELECT qna_board_id, product_name, qna_board_title, QNA_BOARD_ANSWER, users_id, qna_board_date  "
					+ "        FROM QNA_BOARD q , product p" 
					+ " 		WHERE q.product_id = p.product_id"
					+ "        ORDER BY qna_board_date desc)" + "   WHERE ROWNUM <= ?"  //(? * 5) + 1 "
					+ ") WHERE RNUM >= ? "; //((? - 1) * 5) + 1 ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pager.getPageNo()*pager.getRowsPerPage());
			pstmt.setInt(2, (pager.getPageNo()-1)*pager.getRowsPerPage()+1);
			ResultSet rs = pstmt.executeQuery();

			//QnABoardDTO qnaBoardDTO;

			while (rs.next()) {
				QnABoardDTO qnaBoardDTO = new QnABoardDTO();

				// 답변은 답변여부만 담아서 리스트 DTO로 담기 위해 삼항연산자 사용
				String YN = rs.getString("qna_board_answer") != null ? "Y" : "N";

				// 한 행의 데이터를 DTO에 담아준다
				qnaBoardDTO.setQna_board_id(rs.getInt("qna_board_id"));
				//qnaBoardDTO.setProduct_id(rs.getInt("product_id"));
				//System.out.println(qnaBoardDTO.getProduct_id());
				qnaBoardDTO.setQna_board_title(rs.getString("qna_board_title"));
				qnaBoardDTO.setUsers_id(rs.getString("users_id"));
				qnaBoardDTO.setQna_board_date(rs.getDate("qna_board_date"));
				qnaBoardDTO.setQna_board_answer(YN);

				// DB의 한 행 데이터를 담은 DTO를 리스트에 더해준다
				qnaBoardDTOs.add(qnaBoardDTO);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			e.getMessage();
		} 
		return qnaBoardDTOs;
	}

	public String insertQnABoard(QnABoardDTO qnaDTO, Connection conn) throws Exception {
		int rsResult = 0;
		String result = null;
		try {
			// sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
			String sql = ""
					+ "INSERT INTO qna_board (qna_board_id, product_id, qna_board_title, qna_board_content, qna_board_date, users_id) "
					+ "VALUES (seq_qna_board_id.nextval, ?, ?, ?, SYSDATE,?) ";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, qnaDTO.getProduct_id());
			pstmt.setString(2, qnaDTO.getQna_board_title());
			pstmt.setString(3, qnaDTO.getQna_board_content());
			pstmt.setString(4, qnaDTO.getUsers_id());

			rsResult = pstmt.executeUpdate();
			pstmt.close();
			if (rsResult == 1) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} 		
		return result;
	}

	public QnABoardDTO selectOneQnA(int idNum, Connection conn) throws Exception {		
		QnABoardDTO qnaContentDTO = new QnABoardDTO();
		try {
			// JSON으로 사용자로부터 입력받은 게시물 번호를 가져온

			// SQL문작성하여 가져온번호를 넣고 DB에 데이터를 요청한다
			String sql = ""
					+ "SELECT qna_board_id, p.product_id, product_name, qna_board_title, qna_board_content, users_id, qna_board_date, nvl(qna_board_answer, 'N') as qna_board_answer "
					+ "FROM qna_board q, product p " 
					+ "WHERE p.product_id = q.product_id and qna_board_id =?";

			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idNum);
			ResultSet rs = pstmt.executeQuery();
			// 요청한 데이터를 rs로 받아서 QnABoardDTO에 담는다
			if (rs.next()) {
				qnaContentDTO.setQna_board_id(rs.getInt("qna_board_id"));
				//qnaContentDTO.setProduct_id(rs.getInt("product_id"));
				//qnaContentDTO.setProduct_name(rs.getString("product_name"));
				qnaContentDTO.setQna_board_title(rs.getString("qna_board_title"));
				qnaContentDTO.setQna_board_content(rs.getString("qna_board_content"));
				qnaContentDTO.setUsers_id(rs.getString("users_id"));
				qnaContentDTO.setQna_board_date(rs.getDate("qna_board_date"));
				qnaContentDTO.setQna_board_answer(rs.getString("qna_board_answer"));
			}
		} catch (Exception e) {
			e.getMessage();
		} 
		return qnaContentDTO;
	}

	public List<QnABoardProductDTO> selectSearchList(int pageNo, String search_String, Connection conn) throws Exception {
		try {
			// sql문 작성
			String sql = ""
					+ " SELECT RNUM, qna_board_id, product_name, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER "
					+ " FROM ( "
					+ "        SELECT ROWNUM AS RNUM, product_name,qna_board_id, product_id, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER  "
					+ "			   FROM ("
					+ "                    SELECT qna_board_id, product_name, p.product_id, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER "
					+ "                     FROM QNA_BOARD q , Product p "
					+ "                     where q.product_id = p.product_id "
					+ "                            and p.product_name like '%'||?||'%' "
					+ "                     ORDER BY qna_board_date desc) " 
					+ "                WHERE ROWNUM < (? * 5) + 1 "
					+ " ) WHERE RNUM >= ((? - 1) * 5) + 1 ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search_String);
			pstmt.setInt(2, pageNo);
			pstmt.setInt(3, pageNo);
			ResultSet rs = pstmt.executeQuery();

			QnABoardProductDTO qnaBoardProductDTO;

			while (rs.next()) {

				qnaBoardProductDTO = new QnABoardProductDTO();

				// 답변은 답변여부만 담아서 리스트 DTO로 담기 위해 삼항연산자 사용
				String YN = rs.getString("qna_board_answer") != null ? "Y" : "N";
				// 한 행의 데이터를 DTO에 담아준다
				qnaBoardProductDTO.setQna_board_id(rs.getInt("qna_board_id"));
				qnaBoardProductDTO.setProduct_name(rs.getString("product_name"));
				System.out.println(rs.getString("product_name"));
				qnaBoardProductDTO.setQna_board_title(rs.getString("qna_board_title"));
				qnaBoardProductDTO.setUsers_id(rs.getString("users_id"));
				qnaBoardProductDTO.setQna_board_date(rs.getDate("qna_board_date"));
				qnaBoardProductDTO.setQna_board_answer(YN);

				// DB의 한 행 데이터를 담은 DTO를 리스트에 더해준다
				qnaBoardProductDTOs.add(qnaBoardProductDTO);
				System.out.println("DAO: " + qnaBoardProductDTOs.toString());
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			e.getMessage();
		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return qnaBoardProductDTOs;
	}

	public String updateQnABoard(QnABoardDTO qnaDTO, Connection conn) throws Exception {
		int rsResult = 0;
		String result = null;
		try {
			// sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
			String sql = "" + " UPDATE qna_board "
					+ " SET qna_board_title = ? , qna_board_content = ?, qna_board_date = sysdate "
					+ " WHERE qna_board_id = ? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, qnaDTO.getQna_board_title());
			pstmt.setString(2, qnaDTO.getQna_board_content());
			pstmt.setInt(3, qnaDTO.getQna_board_id());

			rsResult = pstmt.executeUpdate();
			pstmt.close();
			if (rsResult == 1) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public String deleteQnABoard(int qna_board_id, Connection conn) throws Exception {
		int rsResult = 0;
		System.out.println("DAO BoardID: " + qna_board_id);
		String result = null;
		try {
			// sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
			String sql = " DELETE FROM qna_board WHERE qna_board_id = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, qna_board_id);
			rsResult = pstmt.executeUpdate();
			pstmt.close();
			if (rsResult == 1) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} 
		return result;
	}

	public String updateAnswerQnABoard(QnABoardDTO qnaDTO, Connection conn) throws Exception {

		int rsResult = 0;
		System.out.println("DAO BoardID: " + qnaDTO.getQna_board_id());
		System.out.println("DAO Answer: " + qnaDTO.getQna_board_answer());

		String result = null;
		try {
			// sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
			String sql = "" + " UPDATE qna_board " + " SET qna_board_answer = ? " + " WHERE qna_board_id = ? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, qnaDTO.getQna_board_answer());
			pstmt.setInt(2, qnaDTO.getQna_board_id());

			rsResult = pstmt.executeUpdate();
			pstmt.close();
			if (rsResult == 1) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public String deleteAnswerQnABoard(int qna_board_id, Connection conn) throws Exception {

		int rsResult = 0;
		System.out.println("DAO BoardID: " + qna_board_id);

		String result = null;
		try {
			// sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
			String sql = "" + " UPDATE qna_board " + "	SET qna_board_answer = null" + "	WHERE qna_board_id = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, qna_board_id);

			rsResult = pstmt.executeUpdate();
			pstmt.close();
			if (rsResult == 1) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public List<QnABoardProductDTO> selectMyList(int pageNo, String users_id, Connection conn) throws Exception {
		try {
			// sql문 작성
			String sql = ""
					+ " SELECT RNUM, qna_board_id, product_name, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER "
					+ " FROM ( "
					+ "        SELECT ROWNUM AS RNUM, product_name,qna_board_id, product_id, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER  "
					+ "			   FROM ("
					+ "                    SELECT qna_board_id, product_name, p.product_id, qna_board_title,users_id,qna_board_date, QNA_BOARD_ANSWER "
					+ "                     FROM QNA_BOARD q , Product p "
					+ "                     where q.product_id = p.product_id "
					+ "                            and users_id like '%'||?||'%' "
					+ "                     ORDER BY qna_board_date desc) " 
					+ "                WHERE ROWNUM < (? * 5) + 1 "
					+ " ) WHERE RNUM >= ((? - 1) * 5) + 1 ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, users_id);
			pstmt.setInt(2, pageNo);
			pstmt.setInt(3, pageNo);
			ResultSet rs = pstmt.executeQuery();

			QnABoardProductDTO qnaBoardProductDTO;

			while (rs.next()) {

				qnaBoardProductDTO = new QnABoardProductDTO();

				// 답변은 답변여부만 담아서 리스트 DTO로 담기 위해 삼항연산자 사용
				String YN = rs.getString("qna_board_answer") != null ? "Y" : "N";
				// 한 행의 데이터를 DTO에 담아준다
				qnaBoardProductDTO.setQna_board_id(rs.getInt("qna_board_id"));
				qnaBoardProductDTO.setProduct_name(rs.getString("product_name"));
				System.out.println(rs.getString("product_name"));
				qnaBoardProductDTO.setQna_board_title(rs.getString("qna_board_title"));
				qnaBoardProductDTO.setUsers_id(rs.getString("users_id"));
				qnaBoardProductDTO.setQna_board_date(rs.getDate("qna_board_date"));
				qnaBoardProductDTO.setQna_board_answer(YN);

				// DB의 한 행 데이터를 담은 DTO를 리스트에 더해준다
				qnaBoardProductDTOs.add(qnaBoardProductDTO);
				System.out.println("DAO: " + qnaBoardProductDTOs.toString());
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			e.getMessage();
		} finally {
			try {
				// Connection 반납
				conn.close();
				System.out.println("반납 성공");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return qnaBoardProductDTOs;
	}

}
