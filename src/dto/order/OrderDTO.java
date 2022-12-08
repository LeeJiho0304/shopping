package dto.order;
import lombok.Data;
@Data
public class OrderDTO {
	private int orders_id;
	private String orders_date;
	private int orders_price;
	private String users_id;
	private String orders_address;
	private String orders_status;
	
	private int order_detail_item_count;
	private int product_id;
	private String product_name;
	
	private String main_filename;
	private String main_savedname;
	private String main_content_type;
	
}