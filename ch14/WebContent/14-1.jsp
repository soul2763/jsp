<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�������</h3>
	<form action="./14-2.jsp">
		<table border="1">
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="uid" /></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>�޴���</td>
				<td><input type="text" name="hp" maxlength="13" /></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>
				<select name="addr">
					<option>����</option>
					<option>����</option>
					<option>�뱸</option>
					<option>�λ�</option>
					<option>����</option>	
				</select></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<select name="pos">
					<option>���</option>
					<option>�븮</option>
					<option>����</option>
					<option>����</option>
					<option>����</option>	
				</select>
				</td>
			</tr>
			<tr>
				<td>�μ�</td>
				<td>
				<select name="dep">
					<option value="101">�濵������</option>
					<option value="102">�λ��</option>
					<option value="103">���ߺ�</option>
					<option value="104">����1��</option>
					<option value="105">����2��</option>	
				</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="����ϱ�"/></td>
			</tr>
		</table>
	</form>
</body>
</html>