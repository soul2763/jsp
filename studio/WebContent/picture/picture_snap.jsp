<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../_header.jsp" %>
<div class="pic_back">
	<div class="pic_fam_header"><h2>스냅 사진</h2></div>
	<div class="p_main_img">
	<ul>
		<c:forEach var="a" items="${list}">
			<li><a href="../pic_img/${a.fileName}" data-lightbox="image"><img src="../pic_img/${a.fileName}"/></a></li>
		</c:forEach>
	</ul>
	</div>
  
	<!-- 페이징 -->
	<nav class="paging">
		<span> 
		<c:if test="${groupStartEnd[0] > 1 }">
		<a href="picture_snap.do?pg=${groupStartEnd[0]-1}" class="prev">이전</a>
		</c:if>
		<c:forEach var="cnt" begin="${groupStartEnd[0]}" end="${groupStartEnd[1]}">
		<a href="picture_snap.do?pg=${cnt}" class="num">${cnt}</a>
		</c:forEach>
		<c:if test="${groupStartEnd[1] < pageEnd}">
		<a href="picture_snap.do?pg=${groupStartEnd[1]+1 }" class="next">다음</a>
		</c:if>
		</span>
	</nav>  
</div>
<%@include file="../_footer.jsp" %>