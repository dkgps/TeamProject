<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="mini.dao.StoreDao" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
</style>

</head>
<body>

<%
String number=request.getParameter("number");
String floor=request.getParameter("floor");
String location=request.getParameter("location");
String s_name=request.getParameter("s_name");
String name=request.getParameter("name");




StoreDao empreg = StoreDao.getInstance();


int rst=empreg.insert(floor,number,location,s_name,name);

if(rst==1)
	response.sendRedirect("shop_add.jsp");

%>
	
</body>
</html>