<%@ page import = "sub1.User" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�α��� ���</h3>
	<%
		request.setCharacterEncoding("UTF-8");
		String result = request.getParameter("result");
		
		if(result.equals("success")){
			User user = (User)session.getAttribute("user");
	%>
	<p>
		<%=user.getName()%>�� �ݰ����ϴ�..<br />
		<a href="./logout.jsp">�α׾ƿ�</a>
	</p>
	<%
		}
		else{
	%>
		<p>
			�ش��ϴ� ȸ���� �����ϴ�.<br/>
			�ٽ� Ȯ���Ͻñ� �ٶ��ϴ�.<br/>
			<a href="./login.jsp">�ٽ� �α��� �ϱ�</a>
		</p>
	<%} %>
</body>
</html>