<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>2.쿠키값 확인</h3>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			String name = c.getName();
			String value = c.getValue();
			
			out.println("<h4>name : " + name + ", Cookie value : " +value + "</h4>");
		}
	%>
</body>
</html>