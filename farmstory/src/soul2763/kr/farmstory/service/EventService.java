package soul2763.kr.farmstory.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.farmstory.controller.CommonAction;

public class EventService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		return "/event/event.jsp";
	}
}
