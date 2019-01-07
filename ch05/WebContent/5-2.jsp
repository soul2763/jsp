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
		String pname = (String)pageContext.getAttribute("name");
		String sname = (String)request.getAttribute("name");
		String rname = (String)session.getAttribute("name");
		String aname = (String)application.getAttribute("name");
	%>
	<h4>pageContext name : <%=pname %></h4>
	<h4>request name : <%=sname %></h4>
	<h4>session name : <%=rname %></h4>
	<h4>application name : <%=aname %></h4>
	
</body>
</html>