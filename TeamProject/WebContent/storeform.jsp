<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="mini.dao.StoreDao " %>
<%@ page import="mini.vo.StoreVo" %>
<%@ page import="mini.dao.MiniDao" %>
<%@ page import="mini.vo.Member" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
font-family: 나눔고딕;
color:white;
}
#floor{
background-image: url("../images_shin/en.jpg");
width:89%;
height:760px;
margin-left:5.2%;
margin-top:57px;
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
	h2{
	text-align:center;
	font-size:200%;
	}
	
	h3{
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
/* background-image: url('../images_shin/d1.jpg');
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
/* background-../images_shin: url('../images_shin/brown2.PNG'); */
/* width:100%;
height:50px; */
/* margin:0px; */
text-align:right;
padding-left:7px;
margin:20px 40px 20px 20px;
font-size:85%
}

.bg{
background: black;
opacity:0.7;
width:1050px;
height:570px;
padding:10px 0px 0px 50px; 
margin:40px 0px 0px 160px;
}

	.tit {background-color: #c5b8a5; text-align:center;}
	.data { background-color: #c5b8a5; }
	.tit2{background-color: white;}
	
table{
margin-left:230px;
margin-top:20px;
}

input[type=text]{
padding: 15px;
margin:0px;
}
input[type=button],input[type=submit]{
padding:10px;}

.bt2{
margin-left:450px;
margin-top:30px;
}

</style>

</head>

 <%
	 	String memberid="";
	 	
	 	MiniDao md1 = MiniDao.getInstance();
	 	
	 	Member m1 = new Member();
	 	
	 	memberid=(String)session.getAttribute("memberid");
	 	
	 	if(memberid!=null){
	 		 m1 = md1.getNameNumber(memberid);
	 	}else if(memberid==null){
	 		response.sendRedirect("home.jsp");
	 	}
	 	
	 	String name=m1.getName();
	 	String number=m1.getNumber();
	 	
	 	String location=request.getParameter("no");
	 	String floor=request.getParameter("floor");
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
<div id="floor">
	<br><br><br>
	<div class="bg">
<h2>매장등록폼</h2>

<form method='get' action='storereg.jsp'>

<table>
	<tr><td class='tit' width="200" height="50" >사업자등록번호</td>
	      <td class='data' width="350">
	       <input type='text' name='number' value='<%=number%>' size='50' readonly></td>
	</tr>
	<tr><td class='tit' height="50">층</td>
	      <td class='data'>
	       <input type='text' name='floor' value='<%=floor%>'size='50' readonly></td>
	</tr>
	<tr><td class='tit' height="50">위치</td>
	      <td class='data'>
	      <input type='text' name='location' value='<%=location%>' size='50' readonly></td>
	</tr>
	<tr><td class='tit' height="50">매장명</td>
	      <td class='data'>
	      <input type='text' name='s_name' value='' size='50' ></td>
	</tr>
	<tr><td class='tit' height="50">회원이름</td>
	      <td class='data'>
	       <input type='text' name='name' value='<%=name%>' size='50' readonly></td>
	</tr>
	

	

	</table>
	<div class="bt2">
		  <input type='submit' value='매장등록'>
		  <input type='button'  value='취소' onclick="history.back()">
	</div>
</form>
</div>
</div>
</body>
</html>