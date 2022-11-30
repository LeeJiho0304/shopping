package connection;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;

public class ConnectionProvider {
	//싱글톤패턴 활용 -> 커넥션 풀 만들기 dataSource = dataPool
	private static BasicDataSource dataSource;
	static {
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@kosa402.iptime.org:50011/orcl");
		dataSource.setUsername("team1");
		dataSource.setPassword("oracle");
		dataSource.setMaxTotal(5); // 최대 커넥션 갯수 
		dataSource.setInitialSize(1); //처음 커넥션 갯수 
		dataSource.setMaxIdle(1); // 몇개까지 남기고 줄일 것 인가 (사용되지 않을때 남길 커넥션) 
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/*
	public static Connection getConnection() {
		Connection conn = null;

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url = "jdbc:oracle:thin:@kosa402.iptime.org:50011/orcl";
			String user = "team1";
			String password = "oracle";
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}*/
}
