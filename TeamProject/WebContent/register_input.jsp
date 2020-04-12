<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ page import="mini.vo.Member" %>
<%@ page import="mini.dao.MiniDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reg.css"/>
<style type="text/css">
body{
font-family: 나눔고딕;
/* background-color:#f2f2f2; */
color: rgb(102,102,102);
}

#all{
width:100%;
height:100px;
background-image: url('../images_shin/en.jpg');
background-repeat: no-repeat;
background-size: 100%, 5%;
}

#title{
width:100%;
height:450px;
}
</style>
</head>
<%
	
	Member m1 = new Member();
	m1.setName(request.getParameter("name"));
	m1.setMemberid(request.getParameter("memberid"));
	m1.setPassword(request.getParameter("password"));
	m1.setNumber(request.getParameter("number"));

	 MiniDao md1 = MiniDao.getInstance();
	
	int result=md1.insertMember(m1.getMemberid(), m1.getNumber(), m1.getPassword(), m1.getName());

	/* response.sendRedirect("home.html"); */
%>
<body>

<div id="all">
<h2 class="llogo"><a href="home.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="login.jsp">로그인</a></li>
	<li><a href="register.jsp">회원가입</a></li>
	</ul>
	<br>
</div>
</div>
	
	<div id ="title">
	<br>
	<br>
	<h1>회원가입을 축하드립니다</h1>
	<br><br>
	<div class='data'>	
	<input type="button" value="Home으로" onclick="location.href='http://localhost/miniproject/home.jsp'">
</div>
	</div>
		<div id="footer">
<ul>
	<li class="b"><b>About</b></li>
	<li class="b"><b>Forums</b></li>
	<li class="b"><b>Catalogues</b></li>
	<li class="b"><b>Contact us</b></li>
</ul>
<p><b>Copyright &copy; 2019 DSMS. All Rights Reserved.</b></p>
</div>

	</body>
</html>