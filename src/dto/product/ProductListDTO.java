package dto.product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductListDTO {
	private int product_id;
	private String product_name;
	private int product_price;
	private double product_totalpoint;
	private int subcategory_id;
	private int category_id;
	
	private String category_name;
	private String subcategory_name;
	
	private String main_filename;
	private String main_savedname;
	private String main_content_type;
	
	public ProductListDTO(int category_id, int subcategory_id) {
		this.category_id = category_id;
		this.subcategory_id = subcategory_id;
	}

}
