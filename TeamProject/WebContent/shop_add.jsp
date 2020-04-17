<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="mini.dao.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
font-family: 나눔고딕;
}
#floor{
background-image: url("images/en.jpg");
width:89%;
height:760px;
margin-left:5.2%;
}

.llogo{
float:left;
font-size:260%;
margin-left:5%;
border:3px solid rgb(102,102,102);
padding:5px;
color:rgb(102,102,102);
margin-top:10px;
}
	h1{	
		font-family: 나눔명조;
		color: white;
		/* background-color:black; */
		width:400px;
		padding-left:100px;
		font-size:250%;
	}
	
	h3{
		background:black;
		opacity:0.6;
		width:600px;
		height:50px;
		color:white;
		font-family: DX시인과나;
		text-align:center;
		padding-top:10px;
		margin:0px;
		font-size:150%;
		
	}
	

#all{
width:100%;
height:50px;
background-color:white;
margin-bottom:0px;
/* background-image: url('images/d1.jpg');
background-repeat: no-repeat;
background-size: 100%, 50%; */ 
}

#top {
width:1500px;
height:110px;
color:rgb(102,102,102);
margin-bottom:50px;
padding-top:10px;
}

#box {
font-family: DX시인과나;
position:absolute;
top:140px;
left:838px;
font-size:130%;
width:640px;
height:380px;
padding:120px 20px 0px 40px;
line-height:1.4em;
background-color:#b51b1d;
color:#eee;
text-align:center;
}

.a{
text-align:left;}
.logo{
padding:20px 0px 0px 70px;
text-align:center;}

li{
display:inline;
padding:0px 0px 10px 10px;
margin-right:10px;
}
a:link, a:visited{
color:rgb(102,102,102);
text-decoration:none;}

h3 a:link, h3 a:visited{
color:white;
text-decoration:none;}

h3 a:hover, a:hover{
text-decoration:underline;}

.lo{
text-align:right;
padding-left:7px;
margin:20px 40px 20px 20px;
font-size:85%
}

.bg{
background-image: url("images/1234.JPG");
background-repeat:no-repeat;
width:85%;
padding:10px 0px 0px 150px;
text-align:center;
margin:58px 0px 0px 245px;
}

button{
padding:10px 25px 10px 25px;
margin-left:650px;
}
</style>
</head>
<%
	
	String number=request.getParameter("number");
	String floor=request.getParameter("floor");
	String location=request.getParameter("location");
	String s_name=request.getParameter("s_name");
	String name=request.getParameter("name");
	
	
	
	StoreDao bbs = StoreDao.getInstance();	
	int vo1 = bbs.countStore("1");
	int vo2 = bbs.countStore("2");
	int vo3 = bbs.countStore("3");
	int vo4 = bbs.countStore("4");
	
/* 	request.setAttribute("bbsvo",vo1);
	request.setAttribute("bbsvo",vo2);
	request.setAttribute("bbsvo",vo3);
	request.setAttribute("bbsvo",vo4); 
 */
%>

<body>

<div id="all">
<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="shop_add.jsp">입/퇴점관리</a></li>
	<li><a href="information.jsp">정보보기</a></li>
	<li><a href="home.jsp">로그아웃</a></li>
	</ul>
</div>
</div>

<br><br><br>
<div id="floor">
	<br><br><br>
	<div class="bg">
	<h1>층별현황</h1> <br>
	<h3><a href='selectone2.jsp'><i>1st Floor</i></a>&nbsp&nbsp&nbsp&nbsp (<%=vo1%>/11)</h3><br><br>
	<h3><a href='selecttwo2.jsp'><i>2nd Floor</i></a>&nbsp&nbsp&nbsp&nbsp (<%=vo2%>/11)</h3><br><br>
	<h3><a href='selectthree2.jsp'><i>3rd Floor</i></a>&nbsp&nbsp&nbsp&nbsp (<%=vo3%>/11)</h3><br><br>
	<h3><a href='selectfour2.jsp'><i>4th Floor</i></a>&nbsp&nbsp&nbsp&nbsp (<%=vo4%>/10)</h3><br><br>
	
	
	<%-- <h3><i>2nd Floor</i>&nbsp&nbsp&nbsp&nbsp (<%=vo2%>/11) &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button value="" name="bt2" onclick="location.href='selecttwo.jsp' ">2층 선택</button></h3><br><br>
	<h3><i>3rd Floor</i> &nbsp&nbsp(<%=vo3%>/11) &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button value="" name="bt3" onclick="location.href='selectthree.jsp' ">3층 선택</button></h3><br><br>
	<h3><i>4th Floor</i> &nbsp&nbsp(<%=vo4%>/10) &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button value="" name="bt4" onclick="location.href='selectfour.jsp' ">4층 선택</button></h3><br><br>
	 --%></div>
<br><br>
	<button value="" name="bt5" onclick="location.href='home2.jsp'">홈으로..</button>
</div>
</body>
</html>