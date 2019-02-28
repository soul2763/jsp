package soul2763.kr.studio.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soul2763.kr.studio.controller.CommonAction;

public class IndexService implements CommonAction{
@Override
public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {

	return "./index.jsp";
}
}
