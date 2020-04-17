package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QnaWriteFrmAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);    //리다이렉트 없음
		forward.setPath("qnawritefrm.jsp");
		return forward;
	}

}
