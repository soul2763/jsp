package soul2763.kr.studio.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import soul2763.kr.studio.controller.CommonAction;


public class WriteService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {	
		
		return "redirect:/studio/index.do";
	}
}
