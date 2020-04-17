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
 margin-left:34%;
 }
 
 tr,td{
 border: 1px solid #eee;}
 
  button{
padding:8px 15px 8px 15px;
margin-left:20px;
margin-top:20px;
}
#bt{
float:left;
width:70px;

}
.pp{
width:500px;
margin-left:40%;
}
</style>
<script src="./js/jquery-1.7.2.min.js"></script>
<script type = "text/javascript">

		

 function delBBS(no) {
		//alert(no); 
		var ok = confirm("게시물을 삭제하시겠습니까?");
		if(ok){
		location.href='/qnadel.go?no='+no; //ok일때 true
		}else{
			return; //취소일 때 false
		} 
		} 
 
</script>
</head>
<%
 Qnavo tempvo = (Qnavo)request.getAttribute("bbsvo");
%>
<body>
<div id="all">
<h2 class="llogo"><a href="/TeamProject/home2.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="/TeamProject/shop_add.jsp">입/퇴점관리</a></li>
	<li><a href="/TeamProject/home.jsp">로그아웃</a></li>
	</ul>
	<br>
</div>
</div>
	
<div id ="title">
	<br>
	<br>
	<h1>글 읽기</h1>
	<br>
	</div>
	
<input type ="hidden" name="no" id="nid" value="<%= tempvo.getNo() %>">
<table  style="border: 1px solid #ddd;">
<tr>
<th width="200" style="background-color:#eee;">작성자</th>
<th width="300"><%= tempvo.getAuthor() %></th>
</tr>
<tr>
<th style="background-color:#eee;">제목</th>
<th><%= tempvo.getTitle() %></th>
</tr>
<tr>
<th style="background-color:#eee;">아이디</th>
<th><%= tempvo.getMemberid() %></th>
</tr>
<tr>
<td colspan="2" height="250">

<%= tempvo.getContent() %>
</td>
</tr>
</table>

<p class="pp">
<button id ="bt" type="button" onclick="location.href='qnaupfrm.go?no=<%= tempvo.getNo() %>'">수정</button>
<button id ="bt" type="button" onclick="delBBS(<%=tempvo.getNo() %>)">삭제</button>
<button id ="bt" type="button" onclick="location.href='qnalist.go'">목록</button>
</p>



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