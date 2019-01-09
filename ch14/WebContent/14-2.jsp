<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid= request.getParameter("uid");
	String name= request.getParameter("name");
	String hp= request.getParameter("hp");
	String addr= request.getParameter("addr");
	String pos= request.getParameter("pos");
	String dep= request.getParameter("dep");
	
	//전송 파라미터 수신
	final String HOST = "jdbc:mysql://192.168.0.156:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	
	//데이터베이스 작업
	
	//1단계 = jdbc 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 = 데이터베이스 접속
	Connection conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계 = 쿼리실행객체 생성
	Statement stmt = conn.createStatement();
	//4단계 = 쿼리실행
	String sql = "insert into `USER` (uid,name,hp,addr,pos,dep,rdate) ";
			sql +="values ('"+uid +"','"+name+"','"+hp+"','"+addr+"','"+pos+"',"+dep+" , now());";
	stmt.executeUpdate(sql);
	//5단계 = 결과셋 처리(select)
	//6단계 = 데이터베이스 종료
	conn.close();
	
	response.sendRedirect("./14-3.jsp");
%>

<h2>등록완료</h2>