package soul2763.kr.studio.service;

import java.awt.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.studio.config.DBConfig;
import soul2763.kr.studio.config.SQL;
import soul2763.kr.studio.controller.CommonAction;
import soul2763.kr.studio.vo.PictureVO;

public class PictureFamService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String pg = req.getParameter("pg");
		int start = getLimitStart(pg);
		//page번호 계산
		int total = getTotal();
		int pageEnd = getPageEnd(total);
		
		//글 카운트번호 계산
		int count = getPageCountStart(total, start);
		
		//페이지 그룹 계산
		int[] groupStartEnd = getPageGroupStart(pg, pageEnd);
		
		Connection conn = DBConfig.getConnection();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_PICTURE_FAM);
		psmt.setInt(1, start);
		
		ResultSet rs = psmt.executeQuery();
		
		ArrayList<PictureVO> list = new ArrayList<>(); 
		
		while(rs.next()){
			PictureVO vo = new PictureVO();
			vo.setFileName(rs.getString(1));
			list.add(vo);
			
		}
		rs.close();
		psmt.close();
		conn.close();
		
		
		
		//view로 list 객체 공유
		req.setAttribute("list", list);
		req.setAttribute("pageEnd", pageEnd);
		req.setAttribute("count", count);
		req.setAttribute("groupStartEnd", groupStartEnd);
		
		
		return "../picture/picture_fam.jsp";
	}

	//리스트 페이징 : 스타트 계산 함수
	public int getLimitStart(String pg) {
		//limit용 start 계산
		int start = 0;
		if(pg == null){
			start = 1;
		}
		else{
			start = Integer.parseInt(pg);
		}
		return (start-1)*9;
	}
	//리스트 페이징 : 총 게시판 수 계산 함수	
	public int getTotal() throws Exception{
		int total = 0;

		Connection conn = DBConfig.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(SQL.SELECT_PICTURE_FAM_COUNT);
		if(rs.next()) {
			total = rs.getInt(1);
		}
		rs.close();
		stmt.close();
		conn.close();
		
		return total;
	}
	//리스트 페이징 : 마지막 계산 함수
	public int getPageEnd(int total) {
		int pageEnd = 0;
		
		if(total % 9 == 0){
			pageEnd = total / 9;
		}
		else{
			pageEnd = total / 9 + 1;
		}
		return pageEnd;
	}
	//리스트 페이징 : 페이지 카운트 계산 함수
	public int getPageCountStart(int total, int limit) {
		return total - limit;
	}
	//리스트 페이징 : 한 페이지에 보여질 인덱싱 페이지 수 계산 함수
	public int[] getPageGroupStart(String pg, int pageEnd) {
		
		int current = 0;
		int[] groupStartEnd = new int[2];
		
		if(pg == null) {
			current = 1;
		}
		else {
			current = Integer.parseInt(pg);
		}
		int currentPage = current;
		int currentPageGroup	= (int)Math.ceil(currentPage/10.0);
		int groupStart	= (currentPageGroup - 1) * 10 + 1;
		int groupEnd	= currentPageGroup * 10;
		
		if(groupEnd > pageEnd){
			groupEnd = pageEnd;	
		}
		groupStartEnd[0] = groupStart;
		groupStartEnd[1] = groupEnd;
		return groupStartEnd;
	}
}
