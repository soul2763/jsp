package cf.chhak.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	private final static String HOST = "jdbc:mysql://192.168.0.126:3306/rgs";
	private final static String USER = "rgs";
	private final static String PASS = "1234";
	
	public static Connection getConnection() throws Exception {
		
		//1단계
		Class.forName("com.mysql.jdbc.Driver");
		
		//2단계
		Connection conn = DriverManager.getConnection(HOST,USER,PASS);
		
		return conn;
	}
}
