package soul2763.kr.farmstory.service.board;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.BoardVO;
import soul2763.kr.farmstory.vo.MemberVO;

public class ModifyService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		
		if(req.getMethod().equals("POST")) {
			HttpSession session = req.getSession();
			MemberVO member = (MemberVO)session.getAttribute("member");
			String uid = member.getUid();
			
			String seq		= req.getParameter("seq");
			String title	= req.getParameter("subject");
			String content	= req.getParameter("content");
			String gr 		= req.getParameter("gr");
			String cate		= req.getParameter("cate");		
			
			String regip	= req.getRemoteAddr();
			
			req.setAttribute("seq", seq);
			req.setAttribute("gr", gr);
			req.setAttribute("cate", cate);
			
			Connection conn = DBConfig.getConnection();
			
			PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_BOARD);
			
			psmt.setString(1, title);
			psmt.setString(2, content);
			psmt.setString(3, seq);
			
			psmt.executeUpdate();
			
			psmt.close();
			conn.close();
			
			return "redirect:/farmstory/board/view.do?gr="+gr+"&cate="+cate+"&seq="+seq;
		}
		else {
			String seq = req.getParameter("seq");
			String gr = req.getParameter("gr");
			String cate = req.getParameter("cate");
			req.setAttribute("seq", seq);
			req.setAttribute("gr", gr);
			req.setAttribute("cate", cate);
			return "/board/modify.jsp";
			
			
		}
	}
}
