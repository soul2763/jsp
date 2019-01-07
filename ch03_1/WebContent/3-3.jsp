<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String addr = request.getParameter("addr");
	%>
	<table border="1">
			<tr>
				<td>이름</td>
				<td><%=request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=request.getParameter("gender") %></td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<%
					for(int i = 0; i < hobby.length; i++){
					%>
					<%= hobby[i]%>
					<%	
					}
				%></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><%=addr %></td>
			</tr>
		</table>
</body>
</html>