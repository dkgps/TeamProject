<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Information</title>
<link rel="stylesheet" href="css/reg.css"/>
<style type="text/css">
body{
font-family: 나눔고딕;
color: rgb(102,102,102);
}

#all{
width:100%;
height:100px;
background-image: url('images/en.jpg');
background-repeat: no-repeat;
background-size: 100%, 5%;
}

#title{
width:100%;
height:450px;
}


</style>
</head>
<body>
<div id="all">
<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="shop_add.jsp">입/퇴점관리</a></li>
	<li><a href="home.jsp">로그아웃</a></li>
	</ul>
	<br>
</div>
</div>
	
<div id ="title">
	<br>
	<br>
	<h1>MEMBERSHIP</h1>
	<br><br>
	<form method="get" value="" action="information_select.jsp">
	<div class='data'>	
	아이디: <input type="text" name="memberid"/>
				<input id="bt1" type="submit" value="정보보기" onclick="action='information_select.jsp'">
			
	<div class='data'>	
	<input type="button" value="Home으로" onclick="location.href='http://localhost/TeamProject/home2.jsp'">
</div>
	</div>
	</div>
	</form>
		<div id="footer">
<ul>
	<li class="b"><b>Download Center</b></li>
	<li class="b"><b>Forums</b></li>
	<li class="b"><b>Contact us</b></li>
</ul>
<p><b>Copyright &copy; 2018 e-iceblue. All Rights Reserved.</b></p>

</div>
</body>
</html>