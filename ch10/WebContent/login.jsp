<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�α���</h3>
	<form action="./loginProc.jsp" method="post">
		<table border="1">
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="uid" placeholder="���̵� �Է�"/></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pass" placeholder="��й�ȣ �Է�"/></td>
			</tr>
			
			<tr>
				<td colspan="2" align="right"><input type="submit" value="�α���"/></td>
			</tr>
			
		</table>
	</form>
</body>
</html>