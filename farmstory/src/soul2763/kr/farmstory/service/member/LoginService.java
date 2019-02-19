package soul2763.kr.farmstory.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;
import soul2763.kr.farmstory.vo.MemberVO;

public class LoginService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = req.getSession();
		if(req.getMethod().equals("POST")){
			String uid = req.getParameter("id");
			String pass = req.getParameter("pw");
				
			String redirectUrl = null;
			
			//1,2�ܰ�	
			Connection conn = DBConfig.getConnection();

			//3�ܰ� = �������ఴü ����
			PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LOGIN);

			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			//4�ܰ�
			ResultSet rs = psmt.executeQuery();
			//5�ܰ�
			if(rs.next()){
				//id, password�� ��ġ�ϴ� ȸ�� �� ���̺� �������
				//���� ����		
				MemberVO vo = new MemberVO();
				vo.setSeq(rs.getInt(1));
				vo.setUid(rs.getString(2));
				vo.setPass(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setNick(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setHp(rs.getString(7));
				vo.setGrade(rs.getInt(8));
				vo.setZip(rs.getString(9));
				vo.setAddr1(rs.getString(10));
				vo.setAddr2(rs.getString(11));
				vo.setRgip(rs.getString(12));
				vo.setRdate(rs.getString(13));
				
				
				session.setAttribute("member", vo);
				
				redirectUrl = "/farmstory/index.do";
			}
			else{
				//ȸ���� �ƴҰ��
				
				redirectUrl = "/farmstory/member/login.do?result=fail";
			}
			//6�ܰ�
			rs.close();
			conn.close();
			psmt.close();
			
			return "redirect:"+redirectUrl;			
		}
		
		else {
			//�α��� üũ
			if(session.getAttribute("member") != null) {
				return "redirect:/farmstory/index.do";
			}
			else {
				return "/member/login.jsp";
			}
			
		}
	}
}
