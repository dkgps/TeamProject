<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="mini.dao.*" %>
<%@ page import="mini.vo.*" %>
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

<%
 //String memberid = request.getParameter("memberid");
	String memberid=(String)session.getAttribute("memberid");
	
	if(memberid==null){
		response.sendRedirect("home.jsp");
	}

	MiniDao md1 = MiniDao.getInstance();
	
	Member m1 = md1.selectMember(memberid);

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
	<form method="get" value="" action="information_update.jsp">
			<div class='data'>
			 
			     아이디: <%=m1.getMemberid() %>
			    <br>
				이름: <%=m1.getName() %>
				<br>
				사업자번호: <%=m1.getNumber() %>
			</div>	
				
					
			<input id="bt1" type="submit" value="사업자번호 변경">	
			
			<input id="bt1" type="button" value="홈으로..." onclick="location.href='http://localhost/TeamProject/home2.jsp'">
			
	
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