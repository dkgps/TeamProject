package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mini.dao.QnaDao;

public class QnaDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		int no = Integer.valueOf(req.getParameter("no"));
		QnaDao bbs = QnaDao.getInstance();
		int result = bbs.deleteBBS(no); 
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./qnalist.go"); //삭제 확인을 누르면 리스트로 돌아가기
		return forward;
	}

}
