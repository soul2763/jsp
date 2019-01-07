<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1.세션</h3>
	<%
		session.setAttribute("NAME", "홍길동");
		session.setMaxInactiveInterval(60*3);		
	%>
	<h4>서버에 세션값 저장완료</h4>
	<a href="./10-2.jsp">세션 정보 확인</a>
</body>
</html>