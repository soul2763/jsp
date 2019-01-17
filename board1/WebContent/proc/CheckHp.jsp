<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	//파라미터 수신
	request.setCharacterEncoding("utf-8");

	String hp = request.getParameter("hp");
	
	//데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.126:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	
	
	//1단계
	Class.forName("com.mysql.jdbc.Driver");
	//2단계
	Connection conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계
	Statement stmt = conn.createStatement();	
	//4단계
	
	ResultSet rs = stmt.executeQuery("select count(*) from `JSP_MEMBER` where hp = '" + hp+"'");
	
	//5단계
	int count = 0;
	if(rs.next()){
		count =	rs.getInt(1);
	}
	
	
	//6단계
	rs.close();
	conn.close();
	stmt.close();
	
	//json 데이터 생성
	JSONObject json = new JSONObject();
	json.put("result", count);
	
	out.print(json);
%>