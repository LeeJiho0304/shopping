package dto.review;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor //매개변수가 없는 생성자
@AllArgsConstructor // 모든 값을 파라미터로 받는 생성자
public class ReviewBoardDTO {
	private int review_board_id;
	private String review_board_title;
	private String review_board_content;
	private int review_board_reviewpoint;
	private int product_id;
	private String users_id;
	private Date review_board_date;
	private String review_board_comment;
}
