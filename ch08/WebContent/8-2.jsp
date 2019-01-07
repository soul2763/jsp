<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>8-2</title>
</head>
<body>
	<h3>2. 전송 파라미터 출력</h3>
	<% 
			
		/*
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String addr = request.getParameter("addr");
		*/
	%>
	<jsp:useBean id="user" class="sub1.User">
		<jsp:setProperty name="user" property="name" />
		<jsp:setProperty name="user" property="gender" />
		<jsp:setProperty name="user" property="hobby" />
		<jsp:setProperty name="user" property="addr" />
	</jsp:useBean>
	<p>
		이름 : <jsp:getProperty property="name" name="user"/><br/>
		성별 : <jsp:getProperty property="gender" name="user"/> <br/>
		취미 : <jsp:getProperty property="hobby" name="user"/> <br/>
		주소 : <jsp:getProperty property="addr" name="user"/><br/>
	</p>
</body>
</html>