package com.hk.th.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
 public ActionForward execute (HttpServletRequest req, HttpServletResponse res)
 throws Exception; //추상함수(메소드) 없음
}
