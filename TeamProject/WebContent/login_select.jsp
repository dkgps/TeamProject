<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="mini.vo.Member" %> 
<%@ page import="mini.dao.MiniDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<%
	Member m1 = new Member();
	m1.setMemberid(request.getParameter("memberid"));
	m1.setPassword(request.getParameter("password"));
	
	
	MiniDao md1 = MiniDao.getInstance();
	String g_number = md1.GetNumber(request.getParameter("memberid"));
	
	
	boolean check = md1.login(m1.getMemberid(), m1.getPassword());
	
	if(check==true){
		session.setAttribute("memberid",m1.getMemberid());
		session.setAttribute("password",m1.getPassword());
		session.setAttribute("number", g_number);
		response.sendRedirect("home2.jsp");
	}else if(check==false){
		response.sendRedirect("login_fail.jsp");
	}
	
	
%>
</head>
<body>

</body>
</html>