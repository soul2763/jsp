package cf.chhak.service.board;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import cf.chhak.config.DBConfig;
import cf.chhak.config.SQL;
import cf.chhak.controller.CommonAction;

public class CommentService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		
		if(req.getMethod().equals("POST")) {
			String parent = req.getParameter("parent");
			String uid = req.getParameter("uid");
			String content = req.getParameter("content");
			String nick= req.getParameter("nick");
			String regip = req.getRemoteAddr();
			
			Connection conn = DBConfig.getConnection();
			
			CallableStatement call = conn.prepareCall(SQL.INSERT_COMMENT);
			call.setString(1, parent);
			call.setString(2, content);
			call.setString(3, uid);
			call.setString(4, regip);
			
			call.execute();
			
			call.close();
			conn.close();
			
			//������ ������
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
			String date = sdf.format(new Date());
			
			JSONObject json = new JSONObject();
			json.put("content", content);
			json.put("nick", nick);
			json.put("date", date);
			
			return json.toString();

		}
		else {
			return null;
		}
	}
}
