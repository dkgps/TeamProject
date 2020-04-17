package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mini.dao.QnaDao;
import mini.vo.Qnavo;


public class QnaUpFrmAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		int no =Integer.valueOf(req.getParameter("no")); // str-->int

		QnaDao bbs = QnaDao.getInstance();	
		Qnavo vo = bbs.viewBBS(no);
		System.out.println("vo="+vo);
		req.setAttribute("bbsvo",vo);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);    //리다이렉트 없음
		forward.setPath("qnaupfrm.jsp");
		
		return forward;
	}

}
