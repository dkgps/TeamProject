<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Membership</title>
<style>
body{
font-family: 나눔고딕;
/* background-color:#f2f2f2; */
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
/* background-../images_shin: url('../images_shin/brown2.PNG'); */
/* width:100%;
height:50px; */
/* margin:0px; */
text-align:right;
padding-left:7px;
margin:20px;
font-size:85%
}



	#title{
	text-align:center;
	padding:100px 0px 20px 0px;
	}
	#title p{
	color:grey;
	padding-top:10px;
	}
	
	
	
	input[type=text], input[type=password]{
	padding:8px;
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
	
.data{
text-align:center;}

#bt1{
width:100px;
height:30px;
margin:20px;}


</style>
</head>
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
<h1>REGISTER</h1>
<p>회원가입하시면 다양한 멤버십 혜택을 누리실 수 있습니다.</p>
</div>
	
	<div id="main">
	<form method="get" value="" action="register_input.jsp">
		
			<div class='data'>
			<p>
				<b>이름:
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				</b> <input type="text" name="name" size="20"/>
			</p>
			</div>
			<div class='data'>
			<p>
				<b>아이디: 
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				</b> <input type="text" name="memberid"/>
			</p>
			</div>
			<div class='data'>
			<p>
				<b>비밀번호: 
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				</b> <input type="password" name="password"/>
			</p>
			</div>
			<div class='data'>			
			<p>
				<b>사업자등록번호:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				</b> <input type="text" name="number"/>
			</p>
			</div>
	<br>
			<div class='data'>	
			<input id="bt1" type="submit" value="등록">
			
			<input id="bt1" type="button" value="취소" onclick="location.href='register_fail.jsp'">
		</div>
	
				
	</form>
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