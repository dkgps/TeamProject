<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
font-family: 나눔고딕;

}


.llogo{
float:left;
font-size:260%;
margin-left:5%;
margin-bottom:10px;
border:3px solid rgb(102,102,102);
padding:5px;
color:rgb(102,102,102);
margin-top:10px;
}

#all{
width:100%;
height:500px;
/* background-image: url('../images_shin/d1.jpg');
background-repeat: no-repeat;
background-size: 100%, 50%; */ 
}

#top {
width:1500px;
height:110px;
color:rgb(102,102,102);
margin-bottom:30px;
padding-top:10px;
}

.h1{
font-family: DX시인과나;
color:#eee;
font-size:500%;
background-img:url('../images_shin/en.jpg');
}

#box {
font-family: DX시인과나;
position:absolute;
top:115px;
left:49.5%;
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
a:hover{
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



.menu li{
padding:10px 0px 10px 100px;
font-size:120%;
}


#content2{
text-align:center;
width:1500px;
margin:0px 50px 20px 50px;

}

.con{
padding-left:70px;
text-align:center;
}
#footer{
width:100%;
background-color:grey;
color:white;
text-align:center;
margin-top:50px;
padding:20px}

#left{
float:left;
margin-left:5.3%;
width:100%;
height:600px;
}


</style>

</head>


<body>
<div id="all">
<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="/qnalist.go">QnA</a></li>
	<li><a href="shop_add.jsp">입/퇴점관리</a></li>
	<li><a href="information_select.jsp">정보보기</a></li>
	<li><a href="home.jsp">로그아웃</a></li>
	</ul>

<div id="middle">	
<div id ="left">
<p><img src="../images_shin/en.jpg" width="700" height="500"></p>
</div>
	</div>
	<div id="box">
	<h1>Top 10 Brands</h1>
	<p>We share our selection, picking the best<br> from around the stores</p>
	<p class="btn"><a href="shop_add.jsp"><img src="../images_shin/btn.JPG"></a></p>
	</div>
</div>
</div>

<div id="content2">
<h2 class="title">Your Office Development Master</h2>
<p>E-iceblue Co., Ltd. is a vendor of .NET, Silverlight and WPF development components. 
The goal of e-iceblue is always to offer high-quality components for reading and<br />
writing different formats of office files.<br /><br />
Our components have been widely-used by most of the Fortune 500 corporations. 
The key developers of e-iceblue have over 10 years of combined experience <br />
developing high-performance, high-quality .NET, Silverlight and WPF component technology.<br /><br />
Everyday, e-iceblue products help a large number of developers from large/small companies 
in more than sixty countries to easier, better, faster and to be more <br />productive develop 
and deliver reliable applications to their customers.
</p>
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