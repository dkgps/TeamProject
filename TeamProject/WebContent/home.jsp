<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
font-family: 나눔고딕;
background-color:#f2f2f2;
}

#header{
width:100%;
height:130px;
}

.llogo{
float:left;
font-size:260%;
margin-left:46%;
margin-bottom:20px;
border:3px solid rgb(102,102,102);
padding:5px;
color:rgb(102,102,102);

}

#menu{
width:1100px;
height:40px;
margin-left:32%;
margin-bottom:30px;
font-size:120%;
font-family: 나눔명조 옛한글;
}


li{
margin-right:70px;
padding:0px;
display:inline;
color:rgb(102,102,102);
}


a:link, a:visited{
color:rgb(102,102,102);
text-decoration:none;}
a:hover{
text-decoration:underline;}

.ff{
width:100%;
height:600px;
display:block;
}

.f2{
float: left;
padding-left:5%;
}

.f1{
float: left;
padding-left:3%;
}



#top {
border:1px solid black;
width:100%;
height:60px;
color:rgb(102,102,102);
margin-bottom:50px;
}






#footer{
font-family:나눔명조 옛한글;;
width:100%;
/* background-color:grey; */
color:rgb(102,102,102);
text-align:center;
margin-top:130px;
padding:20px}

#icons{
width: 1500px;
height: 30px;
margin-right:5%;
}
.icon{
float:right;
margin-right:20px;}

</style>
<script src="/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".contact").click(function() {
		alert("Tel: 010-4567-8910")
	});

});
</script>
</head>
<body>
<br>
<div id="icons">
<p class="icon"><img src="images/login.png" width="40" height="40" onclick="location.href='login.jsp' "></p>
<p class="icon"><img src="images/search.png" width="40" height="40" onclick="location.href='login.jsp' "></p>
<p class="icon"><img src="images/reg.png" width="40" height="40" onclick="location.href='register.jsp' "></p>
</div>

<div id="header">
<h2 class="llogo"><a href="home.jsp">DSMS</a></h2>
</div>

<div id="menu">
	<ul class="lo">
	<li><a href="login.jsp"><b>LOGIN</b></a></li>
	<li><a href="login.jsp"><b>QnA</b></a></li>
	<li><a href="register.jsp"><b>REGISTER</b></a></li>
	<li class="contact"><b>CONTACT US</b></li>
	</ul>
</div>

<div class="ff">
<p class="f2"><img src="images/f2.jpg" width="900" height="550"></p>
<p class="f1"><img src="images/f1.jpg"  width="400" height="550"></p>
</div>

<div id="footer">
<ul>
	<li class="b"><b>About</b></li>
	<li class="b"><b>Forums</b></li>
	<li class="b"><b>Catalog</b></li>
	<li class="b"><b>Contact us</b></li>
</ul>
<p><b>Copyright &copy; 2019 DSMS. All Rights Reserved.</b></p>
</div>

</body>
</html>