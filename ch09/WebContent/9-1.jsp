<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1. 쿠키</h3>
	<%
		//쿠키 생성
		Cookie ck1 = new Cookie("NAME","홍길동");
		ck1.setMaxAge(60*3);
		response.addCookie(ck1);
		
	%>
	<h4>쿠키 생성해서 클라이언트로 전송완료!</h4>
	
</body>
</html>