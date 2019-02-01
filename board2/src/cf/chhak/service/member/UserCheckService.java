package cf.chhak.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import cf.chhak.config.DBConfig;
import cf.chhak.config.SQL;
import cf.chhak.controller.CommonAction;
import cf.chhak.vo.TermsVO;

public class UserCheckService implements CommonAction {
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String id = req.getParameter("id");
		
		Connection conn = DBConfig.getConnection();
		//3�ܰ� - �������� ��ü ����
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_UID_COUNT);
		psmt.setString(1, id);
		//4�ܰ� - ��������
		ResultSet rs = psmt.executeQuery();
		//5�ܰ�
		int count = 0;
		if(rs.next()){
			count =	rs.getInt(1);
		}
		
		
		//6�ܰ�
		rs.close();
		conn.close();
		psmt.close();
		
		//json �������� ��ȯ
		JSONObject json = new JSONObject();
		json.put("result", count);
		
		return json.toJSONString();
	}
}
