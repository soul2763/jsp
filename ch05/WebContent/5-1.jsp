<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1.내장객체 범위</h3>
	<%
		pageContext.setAttribute("name", "김유신");
		request.setAttribute("name", "김춘추");
		session.setAttribute("name", "장보고");
		application.setAttribute("name", "이순신");
		
		pageContext.forward("./5-2.jsp");
	%>
	<h4>내장객체값 세팅 완료</h4>
	<a href="./5-2.jsp">내장객체 세팅값 확인하기</a>
</body>
</html>