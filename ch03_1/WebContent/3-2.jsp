<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>2.파라미터</h3>
	<%
		String uid = request.getParameter("uid");
		String pass = request.getParameter("pass");
	%>
	<ul>
		<li>아이디 : <%=uid %></li>
		<li>비밀번호 : <%=pass %></li>
	</ul>
	<a href=".3-2.jsp">로그인하기</a>
</body>
</html>