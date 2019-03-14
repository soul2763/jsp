package soul2763.kr.studio.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import soul2763.kr.studio.config.DBConfig;
import soul2763.kr.studio.config.SQL;
import soul2763.kr.studio.controller.CommonAction;
import soul2763.kr.studio.vo.MemberVO;

public class LoginService implements CommonAction{
@Override
public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {

	
	HttpSession session = req.getSession();
	if(req.getMethod().equals("POST")){
		String uid = req.getParameter("id");
		String pass = req.getParameter("pw");
			
		String redirectUrl = null;
		
		//1,2단계	
		Connection conn = DBConfig.getConnection();

		//3단계 = 쿼리실행객체 생성
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LOGIN);

		psmt.setString(1, uid);
		psmt.setString(2, pass);
		
		//4단계
		ResultSet rs = psmt.executeQuery();
		//5단계
		if(rs.next()){
			//id, password가 일치하는 회원 이 테이블에 있을경우
			//세션 저장		
			MemberVO vo = new MemberVO();
			vo.setUid(rs.getString(1));
			vo.setPass(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setNick(rs.getString(4));
			
			
			session.setAttribute("member", vo);
			
			redirectUrl = "/studio/index.do";
		}
		else{
			//회원이 아닐경우
			
			redirectUrl = "/studio/member/login.do?result=fail";
		}
		//6단계
		rs.close();
		conn.close();
		psmt.close();
		
		return "redirect:"+redirectUrl;			
	}
	
	else {
		//로그인 체크
		if(session.getAttribute("member") != null) {
			return "redirect:/studio/index.do";
		}
		else {
			return "/member/login.jsp";
		}
		
	}
}
}
