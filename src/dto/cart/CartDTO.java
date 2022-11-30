package dto.cart;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CartDTO {
	private int cart_detail_id;
	private int cart_detail_item_count;
	private int product_id;
	private String user_id;
	
	private long user_cart_price;
	
	//DB에서 받아올 정보
	private String product_name;
	private int product_price;
	
	public CartDTO(int product_id, int cart_detail_item_count, String user_id) {
		this.product_id = product_id;
		this.cart_detail_item_count = cart_detail_item_count;
		this.user_id = user_id;
	}
}
