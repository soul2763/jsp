<%@page import="java.util.ArrayList"%>
<%@page import="sub1.USER"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.156:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	
	Connection conn = null;
	List<USER> list = new ArrayList<>();
	
	try{
	//1단계 - jdbc 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 - 데이터베이스 접속
	conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계 - 쿼리실행 객체 생성
	Statement stmt = conn.createStatement();
	//4단계 - 쿼리실행
	ResultSet rs = stmt.executeQuery("select * from `USER`;");
	//5단계 - 결과셋 처리(select 경우) 
	
	
	while(rs.next()){
		USER user = new USER();
				
		user.setSeq(rs.getInt(1));
		user.setUid(rs.getString(2));
		user.setName(rs.getString(3));
		user.setHp(rs.getString(4));
		user.setAddr(rs.getString(5));
		user.setPos(rs.getString(6));
		user.setDep(rs.getInt(7));
		user.setRdate(rs.getString(8));
		
		list.add(user);
	}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
	//6단계 - DB종료
		conn.close();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14-3</title>
</head>
<body>
	<h3>직원목록</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>주소</th>
			<th>직급</th>
			<th>부서번호</th>
			<th>등록일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<%
			for(USER user : list){
		%>
		<tr>
			<td><%=user.getSeq() %></td>
			<td><%=user.getUid() %></td>
			<td><%=user.getName() %></td>
			<td><%=user.getHp() %></td>
			<td><%=user.getAddr() %></td>
			<td><%=user.getPos() %></td>
			<td><%=user.getDep() %></td>
			<td><%=user.getRdate().substring(2, 10) %></td>
			<td><a href="./14-5.jsp?seq=<%=user.getSeq()%>">수정</a></td>
			<td><a href="./14-4.jsp?seq=<%=user.getSeq()%>">삭제</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="./14-1.jsp">직원 추가하기</a>
</body>
</html>