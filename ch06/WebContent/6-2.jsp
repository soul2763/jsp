<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>6-1</title>
</head>
<body>
	<h3>500에러발생 페이지</h3>
	<%
		String uid = request.getParameter("uid");
		out.println("uid : " + uid.toString());
	%>
</body>
</html>