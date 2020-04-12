<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ page import="mini.dao.*"%>
<%@ page import="mini.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Start</title>
<style type="text/css"></style>
</head>

<%	
	
	
	StoreDao s1 = StoreDao.getInstance();
	MiniDao md1 = MiniDao.getInstance();
	Member m1 = new Member();
	//String memberid=request.getParameter("memberid");
	String memberid = (String) session.getAttribute("memberid");
	
	 m1 = md1.getNameNumber(memberid);

	
	if (memberid == null) {
		response.sendRedirect("home.jsp");
	}
	String number = request.getParameter("number");

	md1.updateMember(memberid, number);
	s1.updateInfo(m1.getName(), number);
	response.sendRedirect("information_select.jsp");
%>

<body>

</body>
</html>