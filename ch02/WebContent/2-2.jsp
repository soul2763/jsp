<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>2. java 반복문</h3>
	
	<h4>for</h4>
	<%
		int sum = 0;
		for(int i = 1; i <=10 ; i++){
			sum += i;
		}
	%>
	<i>1에서 10까지 합 : <%= sum %></i>
	<h4>구구단표</h4>
	
	<table border = "1">
		<tr>
			<td>2단</td>
			<td>3단</td>
			<td>4단</td>
			<td>5단</td>
			<td>6단</td>
			<td>7단</td>
			<td>8단</td>
			<td>9단</td>
		</tr>	
		
		<%for(int a = 1; a<10; a++){%>
			<tr>
			<% for(int b = 2; b<10; b++){%>
					<td><%=a %> x <%=b %> = <%=a*b %></td>
			<% } %>
			</tr>			
		<% } %>
	</table>
</body>
</html>