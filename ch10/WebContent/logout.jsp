<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>로그아웃 처리</h3>
	<%
		session.invalidate();
		response.sendRedirect("./login.jsp");
	%>
</body>
</html>