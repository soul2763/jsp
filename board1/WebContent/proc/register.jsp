<%@page import="kr.co.board1.config.SQL"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String pass = request.getParameter("pw1");
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String hp = request.getParameter("hp");
	String zip = request.getParameter("zip");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String regip = request.getRemoteAddr();
	
	

	Connection conn = DBConfig.getConnection();
	//3단계 = 쿼리실행객체 생성
	
		
	//Statement stmt = conn.createStatement();
	
	/*
	String sql = "insert into `JSP_MEMBER` set ";
		sql += "uid='" +uid+ "', ";
		sql += "pass='" +pass+ "', ";
		sql += "name='" +name+ "', ";
		sql += "nick='" +nick+ "', ";
		sql += "email='" +email+ "', ";
		sql += "hp='" +hp+ "', ";
		
		sql += "zip='" +zip+ "', ";
		sql += "addr1='" +addr1+ "', ";
		sql += "addr2='" +addr2+ "', ";
		sql += "regip='" +regip+ "', ";
		sql += "rdate=NOW()";*/
	
	
	
	
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_REGISTER);
	psmt.setString(1, uid);
	psmt.setString(2, pass);
	psmt.setString(3, name);
	psmt.setString(4, nick);
	psmt.setString(5, email);
	psmt.setString(6, hp);
	psmt.setString(7, zip);
	psmt.setString(8, addr1);
	psmt.setString(9, addr2);
	psmt.setString(10, regip);
	
	psmt.executeUpdate();
	
	conn.close();
	psmt.close();
	

	// 리다이렉트
	response.sendRedirect("../login.jsp?register=success");
%>