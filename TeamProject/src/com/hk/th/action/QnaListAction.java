package com.hk.th.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mini.dao.QnaDao;

public class QnaListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {

		QnaDao bbs = QnaDao.getInstance();
		int testrst = bbs.selectTotal(); //String testrst = bbs.TestFunction();
		
		List bbslist = bbs.listBBS();
		System.out.println("testrst= "+testrst);
		
		req.setAttribute("test", testrst); //jsp(view화면)에 처리한 값을 전달 (숫자형태로 넘어감)
		req.setAttribute("bbslist", bbslist);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);    //리다이렉트 없음
		forward.setPath("qnalist.jsp");
		
		return forward;
	}

}
