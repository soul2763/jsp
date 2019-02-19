package soul2763.kr.farmstory.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.farmstory.controller.CommonAction;

public class WriteService implements CommonAction{
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		
		String gr = req.getParameter("gr");
		String cate = req.getParameter("cate");
		
		req.setAttribute("gr", gr);
		req.setAttribute("cate", cate);
		
		return "/board/write.jsp";
	}
}
