<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp" %>
<jsp:include page="./_aside_${gr}.jsp" />
<div id="board">
	<h3>글수정</h3>
	<div class="write">
		<form action="/farmstory/board/modify.do" method="post">
		<input type="text" name="seq" value="${seq}"/>
		<input type="text" name="gr" value="${gr}" />
		<input type="text" name="cate" value="${cate}" />
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="subject" placeholder="제목을 입력하세요." required /></td>
				</tr>				
				<tr>
					<td>내용</td>
					<td>
						<textarea name="content" rows="20" required></textarea>
					</td>
				</tr>
				<tr>
					<td>첨부</td>
					<td>
						<input type="file" name="file" />
					</td>
				</tr>
			</table>
			<div class="btns">
				<a href="/farmstory/board/write.do?gr=${gr}&cate=${cate}&seq=${seq}" class="cancel">취소</a>
				<input type="submit" class="submit" value="수정완료" />
			</div>
		</form>
	</div>
</div>

</article>
</div>
</section>
<%@include file="../_footer.jsp" %>