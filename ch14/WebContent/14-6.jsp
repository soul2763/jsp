<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="sub1.USER"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid= request.getParameter("uid");
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String addr= request.getParameter("addr");
	String pos= request.getParameter("pos");
	String dep= request.getParameter("dep");
	
	int dp = Integer.parseInt(dep);
	//데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.156:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	//객체 선언
	Connection conn = null;
	PreparedStatement psmt = null;
	
	try{
	//1단계 = jdbc 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 = 데이터베이스 접속
	conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계 = 쿼리실행객체 생성
	String sql = "update `USER` set name=?, hp=?, addr=?, pos=?, dep=? ";
		sql += "where uid=?";
		
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, name);
	psmt.setString(2, hp);
	psmt.setString(3, addr);
	psmt.setString(4, pos);
	psmt.setInt(5, dp);
	psmt.setString(6, uid);
	//4단계 = 쿼리실행
				
	psmt.executeUpdate();
	//5단계
	
	
	}catch(Exception e){
		e.printStackTrace();
	}finally{
	//6단계	
		psmt.close();
		conn.close();
	}
	response.sendRedirect("./14-3.jsp");
%>
