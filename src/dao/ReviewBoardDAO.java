package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Pager;
import dto.review.ReviewBoardDTO;

public class ReviewBoardDAO {
   
   public int getTotalRows(Connection conn) throws Exception {
      int totalRows = 0;
      try {
         String sql = "" + "select count(*) " + "from review_board ";
         PreparedStatement pstmt;
         pstmt = conn.prepareStatement(sql);
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
   
   public int getTotalSearchRows(String search, Connection conn) throws Exception {
      int totalRows = 0;
      try {
         String sql = "" + " select count(*) " + "FROM review_board r , product p "
               + " WHERE r.product_id = p.product_id  "
               + " and product_name like '%'||?||'%'";
         PreparedStatement pstmt;
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, search);
         ResultSet rs = pstmt.executeQuery();
         if (rs.next()) {
            totalRows = rs.getInt(1);
            System.out.println("ReviewDAO totalrows: "+rs.getInt(1));
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
         }finally {
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

   public int getTotalSearchRows(int product_id, Connection conn) throws Exception {
      int totalRows = 0;
      try {
         String sql = "" + "select count(*) " + "FROM review_board WHERE product_id = ? ";
         PreparedStatement pstmt;
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, product_id);
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
         }finally {
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

   public List<ReviewBoardDTO> selectAllList(Pager pager, Connection conn) throws Exception {
      List<ReviewBoardDTO> reviewBoardDTOs = new ArrayList<>();
      // sql문 작성
      String sql = ""
            +" SELECT RNUM, review_board_id, product_id, review_board_title, users_id, review_board_date, review_board_reviewpoint, product_name "
            +" FROM ("
            +"    SELECT ROWNUM AS RNUM, review_board_id, product_id, review_board_title, users_id,review_board_date, review_board_reviewpoint, product_name  "
            +"    FROM ( "
            +"       SELECT review_board_id, p. product_id, review_board_title, users_id, review_board_date, review_board_reviewpoint, product_name  "
            +"        FROM REVIEW_BOARD r, product p "
            +"        where r.product_id = p.product_id "      
            +"        ORDER BY review_board_date desc)"
            +"   WHERE ROWNUM < ? "
            +") WHERE RNUM >= ? ";
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, pager.getPageNo() * pager.getRowsPerPage());
      pstmt.setInt(2, (pager.getPageNo() - 1) * pager.getRowsPerPage() + 1);
      ResultSet rs = pstmt.executeQuery();

      while (rs.next()) {
         ReviewBoardDTO reviewBoardDTO = new ReviewBoardDTO();

         reviewBoardDTO.setReview_board_id(rs.getInt("review_board_id"));
         reviewBoardDTO.setProduct_id(rs.getInt("product_id"));
         reviewBoardDTO.setProduct_name(rs.getString("product_name"));
         reviewBoardDTO.setReview_board_title(rs.getString("review_board_title"));
         reviewBoardDTO.setUsers_id(rs.getString("users_id"));
         reviewBoardDTO.setReview_board_date(rs.getDate("review_board_date"));
         reviewBoardDTO.setReview_board_reviewpoint(rs.getInt("review_board_reviewpoint"));

         reviewBoardDTOs.add(reviewBoardDTO);
      }
      rs.close();
      pstmt.close();
      
      return reviewBoardDTOs;
   }
   
   public int insertReviewBoard(ReviewBoardDTO reviewDTO, Connection conn) throws Exception {
      int result = 0;

      String sql1 = ""
            + "INSERT INTO review_board (review_board_id, product_id, review_board_title, review_board_content, review_board_reviewpoint, review_board_date, "
            + "users_id, REVIEW_FILENAME, REVIEW_SAVEDNAME, REVIEW_CONTENT_TYPE) "
            + "VALUES (seq_review_board_id.nextval, ?, ?, ?, ?, SYSDATE,?, ?, ?, ?)";
      
      PreparedStatement pstmt1 = conn.prepareStatement(sql1);

      pstmt1.setInt(1, reviewDTO.getProduct_id());
      pstmt1.setString(2, reviewDTO.getReview_board_title());
      pstmt1.setString(3, reviewDTO.getReview_board_content());         
      pstmt1.setInt(4, reviewDTO.getReview_board_reviewpoint());
      pstmt1.setString(5, reviewDTO.getUsers_id());
      pstmt1.setString(6, reviewDTO.getFilename());
      pstmt1.setString(7, reviewDTO.getSavedname());
      pstmt1.setString(8, reviewDTO.getContent_type());
      
      int rows1 = pstmt1.executeUpdate();
      if (rows1 == 0) throw new Exception("리뷰게시판에 게시글이 추가되지 않음.");
      pstmt1.close();

      // 리뷰 게시판 평균 평점 가져오기
      String sql2 = ""+
            "SELECT ROUND(avg(review_board_reviewpoint), 1)  as avg_point " +
            "FROM review_board " +
            "WHERE product_id = ? ";

      double avg_point = 0.0;
      if (rows1 == 1) {
         PreparedStatement pstmt2 = conn.prepareStatement(sql2);
         pstmt2.setInt(1, reviewDTO.getProduct_id());

         ResultSet rs = pstmt2.executeQuery();

         if (rs.next()) {
            avg_point = rs.getDouble("avg_point");
         }
         pstmt2.close();
      }

      //Product의 평균 별점 업데이트 해주기
      String sql3 = "UPDATE product " 
               + "SET product_totalpoint = ? " 
               + "WHERE product_id = ? ";

      PreparedStatement pstmt3 = conn.prepareStatement(sql3);
      pstmt3.setDouble(1, avg_point);
      pstmt3.setInt(2, reviewDTO.getProduct_id());

      int rows2 = pstmt3.executeUpdate();
      if (rows2 == 0) throw new Exception("상품의 평균 별점이 업데이트되지 않음.");
      pstmt3.close();

      result = rows1 + rows2;

      return result;
   }

   public ReviewBoardDTO selectOnereview(int idNum, Connection conn) throws Exception {
      ReviewBoardDTO reviewContentDTO = new ReviewBoardDTO();
      
      String sql = ""
            + "SELECT review_board_id, p.product_id, product_name, review_board_title, review_board_content, users_id, review_board_date ,review_board_reviewpoint "
            + "FROM review_board q, product p " + "WHERE p.product_id = q.product_id and review_board_id =?";

      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idNum);
      ResultSet rs = pstmt.executeQuery();
      
      if (rs.next()) {
         reviewContentDTO.setReview_board_id(rs.getInt("review_board_id"));
         reviewContentDTO.setReview_board_reviewpoint(rs.getInt("review_board_reviewpoint"));
         reviewContentDTO.setProduct_name(rs.getString("product_name"));
         reviewContentDTO.setReview_board_title(rs.getString("review_board_title"));
         reviewContentDTO.setReview_board_content(rs.getString("review_board_content"));
         reviewContentDTO.setUsers_id(rs.getString("users_id"));
         reviewContentDTO.setReview_board_date(rs.getDate("review_board_date"));
      }
      
      return reviewContentDTO;
   }
   
   public int getProductTotalRows(int pid, Connection conn) {
         int totalRows = 0;
         try {
            String sql = "" + "select count(*) " + "FROM review_board WHERE product_id = ? ";
            PreparedStatement pstmt;
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, pid);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
               totalRows = rs.getInt(1);
            }
         } catch (SQLException e) {
            e.printStackTrace();
         } 
         return totalRows;
   }

   public int getAvgRate(int pid, Connection conn) {
      int avgRate = 0;
      try {
         String sql = "" + "select PRODUCT_TOTALPOINT " + "FROM PRODUCT WHERE product_id = ? ";
         PreparedStatement pstmt;
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, pid);
         ResultSet rs = pstmt.executeQuery();
         if (rs.next()) {
            avgRate = rs.getInt(1);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } 
      
      return avgRate;
   }
   /*
   public List<ReviewBoardDTO> selectSearchReview(int pageNo, String search, Connection conn) throws Exception {
      System.out.println("리뷰 서치 DAO: "+pageNo +"/ "+ search);
      try {
      
         // sql문 작성
         String sql = ""
               +" SELECT RNUM, review_board_id, users_id,product_name, review_board_title,review_board_date,review_board_reviewpoint "
               + "                FROM ("
               + "                   SELECT ROWNUM AS RNUM, review_board_id, product_name, review_board_title,users_id,review_board_date, review_board_reviewpoint "
               + "                   FROM ( "
               + "                      SELECT review_board_id, product_name, review_board_title,users_id,review_board_date, review_board_reviewpoint  "
               + "                      FROM REVIEW_BOARD q , product p "
               + "                       WHERE q.product_id = p.product_id   "
               + "                     and product_name like '%'||?||'%' "
               + "                       ORDER BY REVIEW_BOARD_ID) "
               + "                  WHERE ROWNUM < (? * 5) + 1 "
               + "               ) WHERE RNUM >= ((? - 1) * 5) + 1 ";
         PreparedStatement pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, search);
         pstmt.setInt(2, pageNo);
         pstmt.setInt(3, pageNo);
         ResultSet rs = pstmt.executeQuery();
         
         
         ReviewBoardProductDTO reviewBoardDTO;
         
         while (rs.next()) {
            reviewBoardDTO = new ReviewBoardProductDTO();
            // 답변은 답변여부만 담아서 리스트 DTO로 담기 위해 삼항연산자 사용 
            //String YN = rs.getString("review_board_comment") != null? "Y": "N";
            reviewBoardDTO.setReview_board_id(rs.getInt("review_board_id"));
               reviewBoardDTO.setProduct_name(rs.getString("product_name"));
               reviewBoardDTO.setReview_board_title(rs.getString("review_board_title"));
               reviewBoardDTO.setUsers_id(rs.getString("users_id"));
               reviewBoardDTO.setReview_board_date(rs.getDate("review_board_date"));
               reviewBoardDTO.setReview_board_reviewpoint(rs.getInt("review_board_reviewpoint"));

               // DB의 한 행 데이터를 담은 DTO를 리스트에 더해준다
               reviewBoardProductDTOs.add(reviewBoardDTO);
               System.out.println("[리뷰 DAO]DTO에 담긴것 : "+ rs.getString("product_name"));
         }
         rs.close();
         pstmt.close();

      } catch (Exception e) {
         e.getMessage();
      }finally {
         try {
            //Connection 반납
            conn.close();
            System.out.println("반납 성공");
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
      return reviewBoardProductDTOs;
   }
   */
   //MYLIST
   public List<ReviewBoardDTO> selectMyList(Pager pager, String users_id, Connection conn) throws Exception {
      List<ReviewBoardDTO> reviewBoardDTOs = new ArrayList<>();
      
      // sql문 작성
      String sql = ""
                  +"SELECT RNUM, review_board_id, product_id, review_board_title, users_id,review_board_date, review_board_reviewpoint, product_name "
                  +" FROM ("
                  +"    SELECT ROWNUM AS RNUM, review_board_id, product_id, review_board_title,users_id,review_board_date, review_board_reviewpoint, product_name  "
                  +"    FROM ( "
                  +"       SELECT review_board_id, p. product_id, review_board_title,users_id,review_board_date, review_board_reviewpoint, product_name  "
                  +"        FROM REVIEW_BOARD r, product p "
                  +"        where r.product_id = p.product_id and users_id = ? "      
                  +"        ORDER BY review_board_date desc)"
                  +"   WHERE ROWNUM < ? "
                  +") WHERE RNUM >= ?";
      PreparedStatement pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, users_id);
      pstmt.setInt(2, pager.getPageNo() * pager.getRowsPerPage());
      pstmt.setInt(3, (pager.getPageNo() - 1) * pager.getRowsPerPage() + 1);
      ResultSet rs = pstmt.executeQuery();
      
      while (rs.next()) {
         ReviewBoardDTO reviewBoardDTO = new ReviewBoardDTO();

         reviewBoardDTO.setReview_board_id(rs.getInt("review_board_id"));
         reviewBoardDTO.setProduct_id(rs.getInt("product_id"));
         reviewBoardDTO.setProduct_name(rs.getString("product_name"));
         reviewBoardDTO.setReview_board_title(rs.getString("review_board_title"));
         reviewBoardDTO.setUsers_id(rs.getString("users_id"));
         reviewBoardDTO.setReview_board_date(rs.getDate("review_board_date"));
         reviewBoardDTO.setReview_board_reviewpoint(rs.getInt("review_board_reviewpoint"));

         reviewBoardDTOs.add(reviewBoardDTO);
      }
      rs.close();
      pstmt.close();
   
      return reviewBoardDTOs;
   }

   public int getMyListRows(String users_id, Connection conn) throws Exception {
      int totalRows = 0;
      
      String sql = "select count(*) " + "FROM review_board WHERE users_id = ? ";
      PreparedStatement pstmt;
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, users_id);
      ResultSet rs = pstmt.executeQuery();
      if (rs.next()) {
         totalRows = rs.getInt(1);
      }
      
      return totalRows;
   }

   public String updateReviewBoard(ReviewBoardDTO reviewDTO, Connection conn) throws Exception {
      int rsResult = 0;
      String result = null;
      try {
         // sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
         String sql = "" + " UPDATE review_board "
               + " SET review_board_title = ? , review_board_content = ?, review_board_date = sysdate , review_board_reviewpoint = ?"
               + " WHERE review_board_id = ? ";
         PreparedStatement pstmt = conn.prepareStatement(sql);

         pstmt.setString(1, reviewDTO.getReview_board_title());
         pstmt.setString(2, reviewDTO.getReview_board_content());
         pstmt.setInt(3, reviewDTO.getReview_board_reviewpoint());
         pstmt.setInt(4, reviewDTO.getReview_board_id());

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

   public String deleteReviewBoard(int review_board_id, Connection conn) throws Exception {
      int rsResult = 0;
      String result = null;
      try {
         // sql문 작성 및 받은 JSONObject에서 데이터 뽑아서 DB로 전송
         String sql = "" + " DELETE FROM review_board " + " WHERE review_board_id = ?";
         PreparedStatement pstmt = conn.prepareStatement(sql);

         pstmt.setInt(1, review_board_id);
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
   
}