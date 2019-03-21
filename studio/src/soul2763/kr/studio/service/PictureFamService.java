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
		//page��ȣ ���
		int total = getTotal();
		int pageEnd = getPageEnd(total);
		
		//�� ī��Ʈ��ȣ ���
		int count = getPageCountStart(total, start);
		
		//������ �׷� ���
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
		
		
		
		//view�� list ��ü ����
		req.setAttribute("list", list);
		req.setAttribute("pageEnd", pageEnd);
		req.setAttribute("count", count);
		req.setAttribute("groupStartEnd", groupStartEnd);
		
		
		return "../picture/picture_fam.jsp";
	}

	//����Ʈ ����¡ : ��ŸƮ ��� �Լ�
	public int getLimitStart(String pg) {
		//limit�� start ���
		int start = 0;
		if(pg == null){
			start = 1;
		}
		else{
			start = Integer.parseInt(pg);
		}
		return (start-1)*9;
	}
	//����Ʈ ����¡ : �� �Խ��� �� ��� �Լ�	
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
	//����Ʈ ����¡ : ������ ��� �Լ�
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
	//����Ʈ ����¡ : ������ ī��Ʈ ��� �Լ�
	public int getPageCountStart(int total, int limit) {
		return total - limit;
	}
	//����Ʈ ����¡ : �� �������� ������ �ε��� ������ �� ��� �Լ�
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
