package dto.order;

import lombok.Data;

@Data
public class OrderDetailDTO {
	private int order_detail_id;
	private int order_detail_item_count;
	private int orders_id;
	private int product_id;
}