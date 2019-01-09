<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String seq = request.getParameter("seq");
	//데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.156:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	//객체 선언
	Connection conn = null;
	Statement stmt = null;
	try{
	//1단계 = jdbc 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 = 데이터베이스 접속
	conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계 = 쿼리실행객체 생성
	stmt = conn.createStatement();
	//4단계 = 쿼리실행
	String sql = "delete from `USER` where seq=" + seq;
			
	stmt.executeUpdate(sql);
	
	//5단계 = 결과셋 처리(select)
	}catch(Exception e){
		e.printStackTrace();
	}finally{
	//6단계 = 데이터베이스 종료
		stmt.close();
		conn.close();
	}
	
	
	response.sendRedirect("./14-3.jsp");
 %>

