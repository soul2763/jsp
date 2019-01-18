<%@page import="kr.co.board1.service.BoardService"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardService service = BoardService.getInstance();
	service.deleteBoard(request);
	response.sendRedirect("../list.jsp");
%>