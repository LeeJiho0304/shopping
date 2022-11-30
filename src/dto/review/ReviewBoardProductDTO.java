package dto.review;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewBoardProductDTO {
	private int review_board_id;
	private String review_board_title;
	private String review_board_content;
	private int review_board_reviewpoint;
	private String users_id;
	private int product_id;
	private String product_name;
	private Date review_board_date;
	private String review_board_comment;
}
