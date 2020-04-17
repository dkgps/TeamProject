package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mini.dao.QnaDao;



public class QnaWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String author = req.getParameter("author");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String email = req.getParameter("email");
		
		
		QnaDao board = QnaDao.getInstance();
		board.insertBBS(author,title,content,email);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./qnalist.go");
		return forward;
	}

}
