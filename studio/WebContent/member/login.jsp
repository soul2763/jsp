<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
		<link rel="stylesheet" href="../css/style.css" />
	</head>
	<body>
		<div id="member">
			<section class="login">		
				<form action="../member/login.do" method="post">
					<table>
						<tr>
							<td><img src="/studio/img/login_ico_id.png" alt="아이디" /></td>
							<td><input type="text" name="id" required placeholder="아이디 입력" autocomplete="off" /></td>
						</tr>
						<tr>
							<td><img src="/studio/img/login_ico_pw.png" alt="비밀번호" /></td>
							<td><input type="password" name="pw" required placeholder="비밀번호 입력" /></td>
						</tr>
					</table>
					<input type="submit" class="btnLogin" value="로그인" />
				</form>			
				
				<div class="info">
					<h3>관리자 로그인</h3>
					<p>관지라 이외에 이용하실 수 없습니다.</p>
				</div>			
			</section>
		</div>
	
	</body>
</html>