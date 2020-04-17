<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import ="mini.vo.Qnavo" %> 
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
font-family: 나눔고딕;
color: rgb(102,102,102);
}
h2{
text-align:center;}
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
margin-bottom:0px;
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
	padding:0px 0px 0px 0px;
	}
	#title p{
	color:grey;
	padding-top:10px;
	}
	
	#footer{
font-family:나눔고딕;
width:100%;
background-color:grey;
color:white;
text-align:center;
margin-top:200px;
padding:20px}


table{
 margin-left:30%;
 }
 
 tr,td{
 border: 1px solid #eee;}
 
input[type=submit],input[type=button]{
padding:8px 15px 8px 15px;
margin-left:10px;

}


input[type=text]{
padding: 10px;
margin:0px;
}
</style>
</head>
<%
Qnavo tempvo = (Qnavo)request.getAttribute("bbsvo");
%>
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
	<h1>글 수정</h1>
	<br>
	</div>
	
<form method = "get" action="/qnaupdate.go">
<input type="hidden" name="no" value="<%=tempvo.getNo() %>">
<table>
<tr>
<th width="200" style="background-color:#eee;"height="40">작성자</th>
<td width="300"><input type="text" name="author" value="<%=tempvo.getAuthor()%>"></td>
</tr>
<tr>
<th style="background-color:#eee;"height="40">제목</th>
<td><input type="text" name="title" value="<%= tempvo.getTitle() %>" size="50"></td>
</tr>
<tr>
<th style="background-color:#eee;"height="40">아이디</th>
<td><input type="text" name="email" value="<%= tempvo.getMemberid() %>" size="40" readonly></td>
</tr>
<tr>
<td colspan="2" style="background-color:#eee;">
<textarea name ="content" cols="90" rows="20">
<%= tempvo.getContent() %>
</textarea>
</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="글수정">
<input type="button" value="취소" onclick="history.back();">
</td>
</tr>

</table>

</form>
</body>
</html>