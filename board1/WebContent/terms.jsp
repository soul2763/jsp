<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	//데이터베이스 정보
	final String HOST = "jdbc:mysql://192.168.0.126:3306/rgs";
	final String USER = "rgs";
	final String PASS = "1234";
	
	//1단계 - jdbc 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	//2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(HOST,USER,PASS);
	//3단계 - 쿼리실행 객체 생성
	Statement stmt = conn.createStatement();
	//4단계 - 쿼리실행
	ResultSet rs = stmt.executeQuery("select * from `JSP_TERMS`;");
	//5단계 - 결과셋 처리(select 경우)
	
	String terms = null;
	String privacy = null;
	if(rs.next()){
		terms 	= rs.getString(1);
		privacy = rs.getString(2);
	}
	//6단계
	rs.close();
	conn.close();
	stmt.close();
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>terms</title>
		<link rel="stylesheet" href="./css/style.css" />		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				$('.btnNext').click(function(){
					
					var rs1 = $('input[name=chk1]').is(':checked');
					var rs2 = $('input[name=chk2]').is(':checked');
					
					if(!rs1){
						alert('이용약관 동의를 하셔야 합니다.');
						return false;
					}
					else if(!rs2){
						alert('개인정보 동의를 하셔야 합니다.');
						return false;
					}
					else{
						return true;
					}
					
				});
			});
			
		</script>
	</head>

	<body>
		<div id="terms">
			<section>
				<table>
					<caption>사이트 이용약관</caption>
					<tr>
						<td>
							<textarea readonly><%=terms%></textarea>
							<div>
								<label><input type="checkbox" name="chk1" />&nbsp;동의합니다.</label>        
							</div>
						</td>
					</tr>
				</table>
			</section>			
			<section>
				<table>
					<caption>개인정보 취급방침</caption>
					<tr>
						<td>
							<textarea readonly><%=privacy%></textarea>
							<div>
								<label><input type="checkbox" name="chk2" />&nbsp;동의합니다.</label>        
							</div>
						</td>
					</tr>
				</table>
			</section>
			
			<div>
				<a href="./login.jsp" class="btnCancel">취소</a>
				<a href="./register.jsp" class="btnNext">다음</a>
			</div>
			
		</div>
	</body>
</html>











