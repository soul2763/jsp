<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>2.세션값 출력</h3>
	<%
		String name = (String)session.getAttribute("NAME");
	%>
	<h4>세션 name : <%=name %></h4>
	
</body>
</html>