package soul2763.kr.farmstory.service.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.MemberVO;

public class DeleteService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
			
		
		String seq = req.getParameter("seq");
		String gr = req.getParameter("gr");
		String cate = req.getParameter("cate");
		
		req.setAttribute("gr", gr);
		req.setAttribute("cate", cate);
		
		Connection conn = DBConfig.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(SQL.DELETE_CONTENT);
		
		psmt.setString(1, seq);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		return "redirect:/farmstory/board/list.do?gr="+gr+"&cate="+cate;
	}
}
