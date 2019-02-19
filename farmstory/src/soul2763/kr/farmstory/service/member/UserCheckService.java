package soul2763.kr.farmstory.service.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import soul2763.kr.farmstory.config.DBConfig;
import soul2763.kr.farmstory.config.SQL;
import soul2763.kr.farmstory.controller.CommonAction;

public class UserCheckService implements CommonAction {
	
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String id = req.getParameter("id");
		
		Connection conn = DBConfig.getConnection();
		//3단계 - 쿼리실행 객체 생성
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_UID_COUNT);
		psmt.setString(1, id);
		//4단계 - 쿼리실행
		ResultSet rs = psmt.executeQuery();
		//5단계
		int count = 0;
		if(rs.next()){
			count =	rs.getInt(1);
		}
		
		
		//6단계
		rs.close();
		conn.close();
		psmt.close();
		
		//json 포맷으로 변환
		JSONObject json = new JSONObject();
		json.put("result", count);
		
		return json.toJSONString();
	}
}
