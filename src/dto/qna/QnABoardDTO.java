package dto.qna;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QnABoardDTO {
	private int rownum;
	private int qna_board_id;
	private String qna_board_title;
	private String qna_board_content;
	private String users_id;
	private int product_id;
	private Date qna_board_date;
	private String qna_board_answer;
}
