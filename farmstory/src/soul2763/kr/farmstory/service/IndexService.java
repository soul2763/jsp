package soul2763.kr.farmstory.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.BoardVO;

public class IndexService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		
		//최신글 3개 가져오기
		
		req.setAttribute("latest1", getLatest("grow"));
		req.setAttribute("latest2", getLatest("school"));
		req.setAttribute("latest3", getLatest("story"));
		
		return "/index.jsp";
	}
	
	private ArrayList<BoardVO> getLatest(String cate) throws Exception{
		Connection conn = DBConfig.getConnection();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LATEST1_LIST);
		psmt.setString(1, cate);
		ResultSet rs = psmt.executeQuery();
		
		ArrayList<BoardVO> list = new ArrayList<>(); 
		
		while(rs.next()){
			BoardVO vo = new BoardVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setCate(rs.getString("cate"));
			vo.setTitle(rs.getString("title"));
			vo.setRdate(rs.getString("rdate"));
			list.add(vo);
		}
		rs.close();
		psmt.close();
		conn.close();
		//2단계
		//3단계
		//4단계
		//5단계
		//6단계
		return list;
		
	}
}
