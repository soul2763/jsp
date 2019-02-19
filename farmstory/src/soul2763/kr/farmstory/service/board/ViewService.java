package soul2763.kr.farmstory.service.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.BoardVO;

public class ViewService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		String seq = req.getParameter("seq");	
		
		String gr = req.getParameter("gr");
		String cate = req.getParameter("cate");
		
		req.setAttribute("gr", gr);
		req.setAttribute("cate", cate);
		
		Connection conn = DBConfig.getConnection();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_VIEW_WITH_FILE);
		psmt.setString(1, seq);
		
		ResultSet rs = psmt.executeQuery();
		BoardVO vo = new BoardVO();
				
		if(rs.next()){
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
			vo.setFileseq(rs.getInt(12));
			vo.setFileparent(rs.getInt(13));
			vo.setOldname(rs.getString(14));
			vo.setNewname(rs.getString(15));
			vo.setDownload(rs.getInt(16));
			vo.setFilerdate(rs.getString(17));
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		req.setAttribute("vo", vo);
		
		return "/board/view.jsp";
	}
}
