<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Number Update</title>
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

#hidden2{
		visibility: hidden;
	}
</style>
</head>

<%
	String memberid=request.getParameter("memberid");
	
%>

<body>
<div id="all">
<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
<br>


</div>
	
<div id ="title">
	<br>
	<br>
	<h1>MEMBERSHIP</h1>
	<br><br>
	<form method="get" value="" action="information_update_start.jsp">
		<div class='data'>			
				사업자 등록번호 : <input type="text" name="number"/>
				<input id="bt1" type="submit" value="수정하기" onclick="action='information_update_start.jsp'">
				<br>
				<input id="hidden2" name="memberid" type="text" value="<%=memberid%>">
	
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