<%@tag import="java.util.Calendar"%>
<%@ tag language="java" pageEncoding="utf-8"%>
<%
	Calendar cal = Calendar.getInstance();
	
%>

<h4>현재 날짜 : <%=cal.get(Calendar.YEAR) %>년 <%=cal.get(Calendar.MONTH) %>월 <%= cal.get(Calendar.DATE) %>일</h4>