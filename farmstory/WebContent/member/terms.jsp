<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				
				$('.btnNext').click(function(){
					
					var rs1 = $('input[name=chk1]').is(':checked');
					var rs2 = $('input[name=chk2]').is(':checked');
					
					if(!rs1){
						alert('이용약관 동의를 하셔야 합니다.');
						return false;
					}else if(!rs2){
						alert('개인정보 동의를 하셔야 합니다.');
						return false;
					}else{
						return true;
					}
				});
			});
</script>
<div id="terms">
	<section>
		<table>
			<caption>사이트 이용약관</caption>
			<tr>
				<td>
					<textarea readonly>${vo.getTerms()}</textarea>
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
					<textarea readonly>${vo.privacy}</textarea>
					<div>
						<label><input type="checkbox" name="chk2" />&nbsp;동의합니다.</label>        
					</div>
				</td>
			</tr>
		</table>
	</section>
	
	<div>
		<a href="/farmstory/member/login.do" class="btnCancel">취소</a>
		<a href="/farmstory/member/register.do" class="btnNext">다음</a>
	</div>
	
</div>
<%@include file="../_footer.jsp" %>











