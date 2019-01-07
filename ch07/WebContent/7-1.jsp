<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>7-1</title>
</head>
<body>
	<h3>1.인클루드</h3>
	<!-- 인클루드 지시자 -->
	<%@ include file="./inc/config.jsp" %>
	<p>
		데이터베이스 주소 : <%= HOST %><br/>
		데이터베이스 아이디 : <%= USER %><br/>
		데이터베이스 비밀번호 : <%= PASS %><br/>
	</p>
	<!-- 인클루드 액션태그 -->
	
</body>
</html>