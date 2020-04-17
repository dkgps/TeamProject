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
color: rgb(102,102,102);
}

.llogo{
float:left;
font-size:200%;
margin-left:70px;
border:3px solid rgb(102,102,102);
padding:5px;
color:rgb(102,102,102);
}

a:link, a:visited{
color:white;
text-decoration:none;}

#all{
width:100%;
height:100px;
background-image: url('images/en.jpg');
background-repeat: no-repeat;
background-size: 100%, 5%;
}

#top {
width:100%;
height:110px;
color:rgb(102,102,102);
margin-bottom:50px;
}
li{
display:inline;
padding:0px 0px 10px 10px;
margin-right:10px;
}
a:link, a:visited{
color:rgb(102,102,102);
text-decoration:none;}
a:hover{
text-decoration:underline;}

.lo{
text-align:right;
padding-left:7px;
margin:20px;
font-size:85%
}



	#title{
	text-align:center;
	padding:100px 0px 200px 0px;
	}
	#title p{
	color:grey;
	padding-top:10px;
	}
	
	
	.data{
	margin:10px 0px 0px 60px;
	padding:10px 0px 0px 0px;
	text-align:center;
	margin-left:20px;
	}
	
	input[type=text], input[type=password]{
	padding:18px;
	margin:0px}
	
	#main{
	margin-bottom:150px;}
	
#footer{
font-family:나눔고딕;
width:100%;
background-color:grey;
color:white;
text-align:center;
margin-top:0px;
padding:20px}
	
</style>
</head>

<body>

	<div id="all">
		<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
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
			<input type="button" value="Home으로" onclick="location.href='http://localhost/TeamProject/home.jsp'">
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