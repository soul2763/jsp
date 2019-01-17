package kr.co.board1.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.board1.config.DBConfig;
import kr.co.board1.config.SQL;
import kr.co.board1.vo.TermsVO;

public class MemberService  {
	
	//�̱��� ��ü : ���� 440p
	private static MemberService service = new MemberService();
	
	public static MemberService getInstance() {
		return service;
	}
	private MemberService() {}
	
	public void login() throws Exception {}
	public void logout() throws Exception {}
	
	public TermsVO terms() throws Exception {
		Connection conn = DBConfig.getConnection();
		//3�ܰ� - �������� ��ü ����
		Statement stmt = conn.createStatement();
		//4�ܰ� - ��������
		ResultSet rs = stmt.executeQuery(SQL.SELECT_TERMS);
		//5�ܰ� - ����� ó��(select ���)
		TermsVO vo = null;
		
		if(rs.next()){
			vo = new TermsVO();
			vo.setTerms(rs.getString(1));
			vo.setPrivacy(rs.getString(2));
		}
		//6�ܰ�
		rs.close();
		conn.close();
		stmt.close();
		return vo;
	}
	public void register() throws Exception {}
	
}

