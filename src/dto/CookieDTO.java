package dto;

import lombok.Data;

@Data
public class CookieDTO {
	private boolean isLogin;
	private String user_id;
	private String user_name;
	private int user_level;
	private int user_point;
	private String user_address;
	/*
	private ArrayDeque<String> visitedView;
	private ArrayDeque<String> visitedAction;
	private ArrayDeque<JSONObject> visitedData;*/
}