<%@page import="kr.co.board1.service.BoardService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.board1.vo.BoardVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.board1.config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1.config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="kr.co.board1.vo.MemberVO"%>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
	if(member == null){
		pageContext.forward("./login.jsp");
	}
	
	Connection conn = DBConfig.getConnection();
	
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LIST);
	
	ResultSet rs = psmt.executeQuery();
	
	ArrayList<BoardVO> list = new ArrayList<>(); 
	
	while(rs.next()){
		BoardVO vo = new BoardVO();
		
		vo.setSeq(rs.getInt(1));
		vo.setParent(rs.getInt(2));
		vo.setComment(rs.getInt(3));
		vo.setCate(rs.getString(4));
		vo.setTitle(rs.getString(5));
		vo.setContent(rs.getString(6));
		vo.setFile(rs.getInt(7));
		vo.setHit(rs.getInt(8));
		vo.setUid(rs.getString(9));
		vo.setRegip(rs.getString(10));
		vo.setRdate(rs.getString(11));
		vo.setNick(rs.getString(12));
		list.add(vo);
	}
	rs.close();
	psmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>글목록</title> 
		<link rel="stylesheet" href="./css/style.css" />
	</head>
	<body>
		<div id="board">
			<h3>글목록</h3>
			<!-- 리스트 -->
			<div class="list">
				<p class="logout"><%= member.getNick()%>님! 반갑습니다. <a href="./proc/logout.jsp">[로그아웃]</a><p>
				<table>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>
						<td>조회</td>
					</tr>
				
					<%
						for(BoardVO vo : list){
					%>
					<tr>
						<td><%=vo.getSeq() %></td>
						<td><a href="./view.jsp?seq=<%=vo.getSeq()%>"><%=vo.getTitle() %></a> &nbsp;[<%= vo.getComment()%>]</td>
						<td><%=vo.getNick() %></td>
						<td><%=vo.getRdate().substring(2,10) %></td>
						<td><%=vo.getHit() %></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<!-- 페이징 -->
			<nav class="paging">
				<span> 
				<a href="#" class="prev">이전</a>
				<a href="#" class="num">1</a>
				<a href="#" class="next">다음</a>
				</span>
			</nav>
			<a href="./write.jsp" class="btnWrite">글쓰기</a>
		</div>
	</body>

</html>










