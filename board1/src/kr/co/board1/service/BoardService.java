package kr.co.board1.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import kr.co.board1.config.DBConfig;
import kr.co.board1.config.SQL;
import kr.co.board1.vo.BoardVO;
import kr.co.board1.vo.MemberVO;

public class BoardService {
	
	private static BoardService service = new BoardService();
	
	public static BoardService getInstance() {
		return service;
	}
	private BoardService() {}
	
	public MemberVO getMember(HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		return vo;
	}
	
	//글쓰기 함수
	public void insertBoard(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		String title 	= request.getParameter("subject");
		String content	= request.getParameter("content");
		String regip = request.getRemoteAddr();
		MemberVO member = (MemberVO)session.getAttribute("member");
		String uid = member.getUid();
		
		Connection conn = DBConfig.getConnection();

		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_BOARD);
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setString(3, uid);
		psmt.setString(4, regip);
		
		psmt.executeUpdate();
		
		conn.close();
		psmt.close();
		response.sendRedirect("../list.jsp");
	}
	
	//리스트 출력 함수
	public void listBoard(HttpSession session, PageContext pageContext) throws Exception{
		

	}
	
	//조회수 증가 함수
	public void updateHit(int seq) throws Exception{
				
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_HIT);
		psmt.setInt(1, seq);
		
		psmt.executeUpdate();
		psmt.close();
	}
	
	//글 수정 함수
	public String modifyBoard(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		String seq		= request.getParameter("seq");
		String title	= request.getParameter("subject");
		String content	= request.getParameter("content");
		
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_BOARD);
		
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setString(3, seq);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		return seq;
	}
	
	//게시판 내용 출력 함수
	public BoardVO viewBoard(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("UTF-8");
		String seq = request.getParameter("seq");		
		
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_VIEW);
		
		psmt.setString(1, seq);
		
		ResultSet rs = psmt.executeQuery();
		
		
		BoardVO vo = null;
		if(rs.next()){
			vo = new BoardVO();
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
		}
		
		rs.close();
		psmt.close();
		conn.close();
		return vo;
	}
	
	//글 삭제 함수
	public void deleteBoard(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");
		String seq = request.getParameter("seq");
		
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.DELETE_CONTENT);
		
		psmt.setString(1, seq);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();

	}

	public String insertComment(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");
		String parent = request.getParameter("parent");
		String content = request.getParameter("comment");
		String uid =  request.getParameter("uid");
		String regip = request.getRemoteAddr();
		
		
		Connection conn = DBConfig.getConnection();
		
		CallableStatement call = conn.prepareCall(SQL.INSERT_COMMENT);
		
		call.setString(1, parent);
		call.setString(2, content);
		call.setString(3, uid);
		call.setString(4, regip);
		
		call.execute();
		
		call.close();
		conn.close();
		
		return parent;
	}
	
	public void updateCommentCount() throws Exception{}

	public String deleteComment(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("UTF-8");
		String seq = request.getParameter("seq");
		String parent = request.getParameter("parent");
		
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.DELETE_COMMENT);
		
		psmt.setString(1, seq);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		return parent;
	}
	public ArrayList<BoardVO> listComment(String parent) throws Exception{
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_COMMENT);
		psmt.setString(1, parent);
		
		ResultSet rs = psmt.executeQuery();
		
		ArrayList<BoardVO> list = new ArrayList<>(); 
		
		while(rs.next()){
			BoardVO vo = new BoardVO();
			
			vo.setSeq(rs.getInt(1));
			vo.setParent(rs.getInt(2));
			vo.setComment(rs.getInt(3));
			
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
		return list;
	}
}
