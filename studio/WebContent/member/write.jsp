<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>파일 첨부</title> 
		<link rel="stylesheet" href="/studio/css/style.css" />
	</head>

	<body>
		<div id="board">
			<h1>파일 첨부</h1>
			<div class="write">
				<form action="#" method="post">
					<table>
						<tr>
							<td>첨부</td>
							<td>
							<select>
								<option value="fam">가족사진</option>
								<option value="snap">스냅사진</option>
							</select>
							</td>
							<td>
								<input type="file" name="file" />
							</td>
						</tr>
					</table>
					<div class="btns">
						<input type="button" class="cancel" onclick="self.close();" value="취 소">
						<input type="submit" class="submit" value="작성완료" />
					</div>
				</form>
			</div>
		</div>
	</body>
</html>