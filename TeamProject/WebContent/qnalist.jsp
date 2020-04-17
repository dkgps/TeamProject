<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="mini.vo.Qnavo" %>
<%@ page import="mini.dao.QnaDao" %> 
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
	
	
/* 
 table{ border-collapse: collapse;
 }
 table, th,td { border: 1px solid black;} */
 
 #list{
 margin-left:34%;
  }
  
  #footer{
font-family:나눔고딕;
width:100%;
background-color:grey;
color:white;
text-align:center;
margin-top:200px;
padding:20px}
	
  button{
padding:8px 15px 8px 15px;
margin-left:48%;
margin-top:20px;
}
 
</style>
</head>
<%
//String total = (String)request.getAttribute("test");
int total = ((Integer)request.getAttribute("test")).intValue();
List list = (List)request.getAttribute("bbslist");
%>
<body>


<div id="all">
<h2 class="llogo"><a href="home.jsp">DSMS</a></h2>
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
	<h1>QnA</h1>
	<br>
	</div>

<div id="list">	
<h3>총 게시물 수: <%=total %></h3>
<table class="table table-striped" style="border: 1px solid #ddd;">
<tr>
<th style="background-color:#eee;" align="center" >번호</th>
<th style="background-color:#eee;" width ="400" height="30">제목</th>
<th  style="background-color:#eee;" align="center">작성자</th>
</tr>


<%
for(int i=0; i<list.size(); i++){
	Qnavo vo = (Qnavo)list.get(i);
%>
<tr>
<td  align="center"><%=vo.getNo() %></td>
<td height="30"><a href="qnaview.go?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a></td> <!-- 제목 -->
<td  align="center"><%=vo.getAuthor() %></td></tr>

<%} %>
</table>
</div>
<p><button type="button" onclick="location.href='qnawritefrm.go' ">글쓰기</button></p>


</div>


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