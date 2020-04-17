package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import mini.dao.QnaDao;

public class QnaUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		int no = Integer.valueOf(req.getParameter("no"));
		String author = req.getParameter("author");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String email = req.getParameter("email");
		
		QnaDao bbs = QnaDao.getInstance();
		int result = bbs.updateBBS(no,author,title,content,email); //실패:0 성공:1
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./qnaview.go?no="+no);
		return forward;

	}

}
