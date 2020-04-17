package com.hk.th.action;

public class ActionForward {
	private boolean isRedirect = false; //redirect를 할지 말지 결정
	private String path = null;  //자신이 만든 jsp 페이지로 가는 경우
	
	
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
}
