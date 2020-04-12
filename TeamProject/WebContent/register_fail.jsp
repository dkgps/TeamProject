<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
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


<body>
<div id="all">
<h2 class="llogo"><a href="home.jsp">DSMS</a></h2>
<br>


</div>
	
	<div id ="title">
	<br>
	<br>
	<h1>회원등록 취소 하였습니다.</h1>
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