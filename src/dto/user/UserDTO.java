package dto.user;

import lombok.Data;

@Data
public class UserDTO {
	String user_id;
	String user_password;
	String user_email;
	String user_address;
	String user_phone;
	int user_level;
	String user_name;
	String user_birthday;
	int user_point;
}