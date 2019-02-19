package soul2763.kr.farmstory.service.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.TermsVO;

public class TermsService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		
		Connection conn = DBConfig.getConnection();
		//3단계 - 쿼리실행 객체 생성
		Statement stmt = conn.createStatement();
		//4단계 - 쿼리실행
		ResultSet rs = stmt.executeQuery(SQL.SELECT_TERMS);
		//5단계 - 결과셋 처리(select 경우)
		TermsVO vo = null;
		
		if(rs.next()){
			vo = new TermsVO();
			vo.setTerms(rs.getString(1));
			vo.setPrivacy(rs.getString(2));
		}
		//6단계
		rs.close();
		conn.close();
		stmt.close();
		
		//request객체 공유
		req.setAttribute("vo", vo);
		return "/member/terms.jsp";
	}
}
