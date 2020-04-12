<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import='mini.dao.*'%>
<%@ page import='mini.vo.*'%>
<%@ page import='java.util.ArrayList'%>
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
	h1{	
		font-family: DX시인과나;
		color: white;
		/* background-color:black; */
		width:80px;
		margin-top:0px;
		font-size:400%;
		height:50px;
		margin-bottom:100px;
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

button{
padding:10px 25px 10px 25px;
margin-left:650px;
}



.box1, .box2, .box3, .box4, .box5, .box6, .box7, .box8, .box9, .box10,
	.box11 {
	color: #311f13;
	text-align: center;
	width: 120px;
	height: 70px;
	position: absolute;
	border: 3px solid white;
}

.box1 {
	position: absolute;
	top: 330px;
	left: 770px;
}

#box1_1{
	position: absolute;
	top: 330px;
	left: 770px;
	z-index: 1;
	padding:25px 0px 0px 20px;
}


.box2 {
	top: 330px;
	left: 900px;
}

#box2_1 {

	position: absolute;
	top: 330px;
	left: 900px;
	z-index: 1;
	padding:25px 0px 0px 20px;
}

.box3 {
	width: 50px;
	height: 50px;
	top: 408px;
	left: 770px;
}

#box3_1 {
	position: absolute;
	top: 408px;
	left: 770px;
	z-index: 1;
	padding:10px 0px 0px 5px;
}


.box4 {
	width: 120px;
	height: 50px;
	top: 403px;
	left: 1080px;
}

#box4_1 {
	position: absolute;
	top: 403px;
	left: 1080px;
	z-index: 1;
	padding:25px 0px 0px 20px;
}

.box5 {
	width: 50px;
	height: 150px;
	top: 403px;
	left: 1250px;
}

#box5_1 {
	position: absolute;
	top: 403px;
	left: 1250px;
	z-index: 1;
}

.box6 {
	width: 80px;
	height: 30px;
	top: 530px;
	left: 920px;
}

#box6_1 {
	position: absolute;
	top: 530px;
	left: 920px;
	z-index: 1;
}

.box7 {
	width: 80px;
	height: 50px;
	top: 600px;
	left: 630px;
}

#box7_1 {
	position: absolute;
	top: 600px;
	left: 630px;
	z-index: 1;
}

.box8 {
	width: 80px;
	height: 70px;
	top: 660px;
	left: 630px;
}

#box8_1 {
	position: absolute;
	top: 660px;
	left: 630px;
	z-index: 1;
}

.box9 {
	width: 120px;
	height: 40px;
	top: 690px;
	left: 830px;
}

#box9_1 {
	position: absolute;
	top: 690px;
	left: 830px;
	z-index: 1;
}

.box10 {
	width: 170px;
	height: 40px;
	top: 690px;
	left: 970px;
}

#box10_1 {
	position: absolute;
	top: 690px;
	left: 970px;
	z-index: 1;
}

.box11 {
	width: 100px;
	height: 90px;
	top: 640px;
	left: 1200px;
}

#box11_1 {
	position: absolute;
	top: 640px;
	left: 1200px;
	z-index: 1;
}

.blank1, .blank2 {
	width: 640px;
	height: 0.1px;
	position: absolute;
	border-top: 3px solid white;
}

.blank3, .blank4 {
	width: 0.1px;
	height: 300px;
	position: absolute;
	border-top: 3px solid white;
}

.blank1 {
	top: 403px;
	left: 630px;
}

.blank2 {
	top: 733px;
	left: 630px;
}

.blank3 {
	position: absolute;
	top: 403px;
	left: 630px;
	border-left: 3px solid white;
}

.blank4 {
	position: absolute;
	top: 403px;
	left: 1303px;
	border-right: 3px solid white;
}

.dd {
	position: absolute;
	top: 410px;
	left: 730px;
	border: 3px solid white;
}

.aa {
	position: absolute;
	top: 500px;
	left: 630px;
	border: 3px solid white;
}

.ee {
	position: absolute;
	top: 410px;
	left: 650px;
}

.es1 {
	position: absolute;
	top: 490px;
	left: 930px;
}

.es2 {
	position: absolute;
	top: 570px;
	left: 930px;
}


</style>

<script src="/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript">
	/* StoreDao st = StoreDao.getInstance();
	 int result = st.selectTotal(); */
	
     function test(){
		 location.href='shop_add.jsp';
		
	 }
	 function del(floor,location){
			
			var f=floor;
			var l=location;
			
			$.ajax({
				url:"/del",
				type:"get",
				data: {floor:f, location:l},
				success:function(data){
			
					alert("퇴점 성공하셨습니다");		
					
					test();
				},
				error:function(data){
					alert("에러입니다");
				}
			});
			
			
		} 
	 
	 
	function msg(box) {

		if (box == 'box1') {
			var image = $("#box1").attr("src");
		} else if (box == 'box2') {
			var image = $("#box2").attr("src");
		} else if (box == 'box3') {
			var image = $("#box3").attr("src");
		} else if (box == 'box4') {
			var image = $("#box4").attr("src");
		} else if (box == 'box5') {
			var image = $("#box5").attr("src");
		} else if (box == 'box6') {
			var image = $("#box6").attr("src");
		} else if (box == 'box7') {
			var image = $("#box7").attr("src");
		} else if (box == 'box8') {
			var image = $("#box8").attr("src");
		} else if (box == 'box9') {
			var image = $("#box9").attr("src");
		} else if (box == 'box10') {
			var image = $("#box10").attr("src");
		} else if (box == 'box11') {
			var image = $("#box11").attr("src");
		}

		if (image == "../images_shin/box.PNG") {
			//var name = prompt("매장명을 입력하세요", "매장명");
			
			if (box == 'box1') {
				$(function() {
					location.href='storeform.jsp?no=1&floor=1';	
					$("#box1").attr("src", "../images_shin/box_in.png");
					$("#box1_1").text(name);
									
				});
			} else if (box == 'box2') {
				$(function() {
					location.href='storeform.jsp?no=2&floor=1';	
					$("#box2").attr("src", "../images_shin/box_in.png");
					$("#box2_1").text(name);
				});
			} else if (box == 'box3') {
				$(function() {
					location.href='storeform.jsp?no=3&floor=1';	
					$("#box3").attr("src", "../images_shin/box_in.png");
					$("#box3_1").text(name);
				});
			} else if (box == 'box4') {
				$(function() {
					location.href='storeform.jsp?no=4&floor=1';	
					$("#box4").attr("src", "../images_shin/box_in.png");
					$("#box4_1").text(name);
				});
			} else if (box == 'box5') {
				$(function() {
					location.href='storeform.jsp?no=5&floor=1';	
					$("#box5").attr("src", "../images_shin/box_in.png");
					$("#box5_1").text(name);
				});
			} else if (box == 'box6') {
				$(function() {
					location.href='storeform.jsp?no=6&floor=1';	
					$("#box6").attr("src", "../images_shin/box_in.png");
					$("#box6_1").text(name);
				});
			} else if (box == 'box7') {
				$(function() {
					location.href='storeform.jsp?no=7&floor=1';	
					$("#box7").attr("src", "../images_shin/box_in.png");
					$("#box7_1").text(name);
				});
			} else if (box == 'box8') {
				$(function() {
					location.href='storeform.jsp?no=8&floor=1';	
					$("#box8").attr("src", "../images_shin/box_in.png");
					$("#box8_1").text(name);
				});
			} else if (box == 'box9') {
				$(function() {
					location.href='storeform.jsp?no=9&floor=1';	
					$("#box9").attr("src", "../images_shin/box_in.png");
					$("#box9_1").text(name);
				});
			} else if (box == 'box10') {
				$(function() {
					location.href='storeform.jsp?no=10&floor=1';	
					$("#box10").attr("src", "../images_shin/box_in.png");
					$("#box10_1").text(name);
				});
			} else if (box == 'box11') {
				$(function() {
					location.href='storeform.jsp?no=11&floor=1';	
					$("#box11").attr("src", "../images_shin/box_in.png");
					$("#box11_1").text(name);
				});
			}
		} else if (image == "../images_shin/box_in.png") {
			var name = prompt("퇴점 원할 시, 퇴점을 입력해주세요");

			if (box == 'box1' && name == '퇴점') {
				$(function() {
					$("#box1").attr("src", "../images_shin/box.PNG");
					$("#box1_1").text("");
					del('1','1');
					
				});
			} else if (box == 'box2' && name == '퇴점') {
				$(function() {
					$("#box2").attr("src", "../images_shin/box.PNG");
					$("#box2_1").text("");
					del('1','2');
				});
			} else if (box == 'box3' && name == '퇴점') {
				$(function() {
					$("#box3").attr("src", "../images_shin/box.PNG");
					$("#box3_1").text("");
					del('1','3');
				});
			} else if (box == 'box4' && name == '퇴점') {
				$(function() {
					$("#box4").attr("src", "../images_shin/box.PNG");
					$("#box4_1").text("");
					del('1','4');
				});
			} else if (box == 'box5' && name == '퇴점') {
				$(function() {
					$("#box5").attr("src", "../images_shin/box.PNG");
					$("#box5_1").text("");
					del('1','5');
				});
			} else if (box == 'box6' && name == '퇴점') {
				$(function() {
					$("#box6").attr("src", "../images_shin/box.PNG");
					$("#box6_1").text("");
					del('1','6');
				});
			} else if (box == 'box7' && name == '퇴점') {
				$(function() {
					$("#box7").attr("src", "../images_shin/box.PNG");
					$("#box7_1").text("");
					del('1','7');
				});
			} else if (box == 'box8' && name == '퇴점') {
				$(function() {
					$("#box8").attr("src", "../images_shin/box.PNG");
					$("#box8_1").text("");
					del('1','8');
				});
			} else if (box == 'box9' && name == '퇴점') {
				$(function() {
					$("#box9").attr("src", "../images_shin/box.PNG");
					$("#box9_1").text("");
					del('1','9');
				});
			} else if (box == 'box10' && name == '퇴점') {
				$(function() {
					$("#box10").attr("src", "../images_shin/box.PNG");
					$("#box10_1").text("");
					del('1','10');
				});
			} else if (box == 'box11' && name == '퇴점') {
				$(function() {
					$("#box11").attr("src", "../images_shin/box.PNG");
					$("#box11_1").text("");
					del('1','11');
				});
			}

		}
	}
</script>

</head>
<%
	
StoreDao sd1 = StoreDao.getInstance();
//int length = sd1.getlength("1");


ArrayList<String> s1 = sd1.getStatus("1");




ArrayList<String> location = new ArrayList<String>();

for(int i=0;i<s1.size();i++)
{
	
		location.add(s1.get(i));
	
}




%>

<body>

<div id="all">
<h2 class="llogo"><a href="home2.jsp">DSMS</a></h2>
<br>

<div id="top">
	<ul class="lo">
	<li><a href="shop_add.jsp">입/퇴점관리</a></li>
	<li><a href="information.jsp">정보보기</a></li>
	<li><a href="home.html">로그아웃</a></li>
	</ul>
</div>
</div>

<br><br><br>
<div id="floor">
	<br><br><br>
	<div class="bg">
	<table class="first">
			<tr>
				<td><h1>1F</h1></td>
				<td>&nbsp&nbsp</td>
				<td>화장품 | 패션잡화</td>
				<td>Cosmetics | fashion</td>
			</tr>
		</table>
	<table>
		<tr>
			<td><img src="../images_shin/es.png" width="40px"></td>
			<td>에스컬레이터</td>
		</tr>
		<tr>
			<td><img src="../images_shin/ele.png" width="40px"></td>
			<td>엘리베이터</td>
		</tr>
		<tr class="m">
			<td><img src="../images_shin/man.png" width="40px"></td>
			<td>남성화장실</td>
		</tr>
		<tr class="f">
			<td><img src="../images_shin/woman.png" width="40px"></td>
			<td>여성화장실</td>
		</tr>
	</table>
	
	
	<% if(!location.contains("1")) {%>
	<p class="box1">
		<input type="image" id="box1" name="box1" src="../images_shin/box.PNG"
			alt="submit" width="120px" height="70px" onclick="msg('box1')">
	<p class="box1_1" id="box1_1"></p>
	</p>
	<%} %>
	<% if(location.contains("1")){%>
	<p class="box1">
		<input type="image" id="box1" name="box1"
			src="../images_shin/box_in.png" alt="submit" width="120px"
			height="70px" onclick="msg('box1')">
	<p class="box1_1" id="box1_1"><%=sd1.getSNAME("1", "1")%></p>
	</p>
	<%} %>


	<% if(!location.contains("2")) {%>
	<p class="box2">
		<input type="image" id="box2" name="box2" src="../images_shin/box.PNG"
			alt="submit" width="120px" height="70px" onclick="msg('box2')">
	<p class="box2_1" id="box2_1"></p>
	</p>
	<%} %>
	<% if(location.contains("2")){%>
	<p class="box2">
		<input type="image" id="box2" name="box2"
			src="../images_shin/box_in.png" alt="submit" width="120px"
			height="70px" onclick="msg('box2')">
	<p class="box2_1" id="box2_1"><%=sd1.getSNAME("1", "2")%></p>
	</p>
	<%} %>



	<% if(!location.contains("3")) {%>
	<p class="box3">
		<input type="image" id="box3" name="box3" src="../images_shin/box.PNG"
			alt="submit" width="50px" height="50px" onclick="msg('box3')">
	<p class="box3_1" id="box3_1"></p>
	</p>
	<%} %>
	<% if(location.contains("3")){%>
	<p class="box3">
		<input type="image" id="box3" name="box3"
			src="../images_shin/box_in.png" alt="submit" width="50px"
			height="50px" onclick="msg('box3')">
	<p class="box3_1" id="box3_1"><%=sd1.getSNAME("1", "3")%></p>
	</p>
	<%} %>

	<% if(!location.contains("4")) {%>
	<p class="box4">
		<input type="image" id="box4" name="box4" src="../images_shin/box.PNG"
			alt="submit" width="120px" height="50px" onclick="msg('box4')">
	<p class="box4_1" id="box4_1"></p>
	</p>
	<%} %>
	<% if(location.contains("4")){%>
	<p class="box4">
		<input type="image" id="box4" name="box4"
			src="../images_shin/box_in.png" alt="submit" width="120px"
			height="50px" onclick="msg('box4')">
	<p class="box4_1" id="box4_1"><%=sd1.getSNAME("1", "4")%></p>
	</p>
	<%} %>

	<% if(!location.contains("5")) {%>
	<p class="box5">
		<input type="image" id="box5" name="box5" src="../images_shin/box.PNG"
			alt="submit" width="50px" height="150px" onclick="msg('box5')">
	<p class="box5_1" id="box5_1"></p>
	</p>
	<%} %>
	<% if(location.contains("5")){%>
	<p class="box5">
		<input type="image" id="box5" name="box5"
			src="../images_shin/box_in.png" alt="submit" width="50px"
			height="150px" onclick="msg('box5')">
	<p class="box5_1" id="box5_1"><%=sd1.getSNAME("1", "5")%></p>
	</p>
	<%} %>

	<% if(!location.contains("6")) {%>
	<p class="box6">
		<input type="image" id="box6" name="box6" src="../images_shin/box.PNG"
			alt="submit" width="80px" height="30px" onclick="msg('box6')">
	<p class="box6_1" id="box6_1"></p>
	</p>
	<%} %>
	<% if(location.contains("6")){%>
	<p class="box6">
		<input type="image" id="box6" name="box6"
			src="../images_shin/box_in.png" alt="submit" width="80px"
			height="30px" onclick="msg('box6')">
	<p class="box6_1" id="box6_1"><%=sd1.getSNAME("1", "6")%></p>
	</p>
	<%} %>

	<% if(!location.contains("7")) {%>
	<p class="box7">
		<input type="image" id="box7" name="box7" src="../images_shin/box.PNG"
			alt="submit" width="80px" height="50px" onclick="msg('box7')">
	<p class="box7_1" id="box7_1"></p>
	</p>
	<%} %>
	<% if(location.contains("7")){%>
	<p class="box7">
		<input type="image" id="box7" name="box7"
			src="../images_shin/box_in.png" alt="submit" width="80px"
			height="50px" onclick="msg('box7')">
	<p class="box7_1" id="box7_1"><%=sd1.getSNAME("1", "7")%></p>
	</p>
	<%} %>

	<% if(!location.contains("8")) {%>
	<p class="box8">
		<input type="image" id="box8" name="box8" src="../images_shin/box.PNG"
			alt="submit" width="80px" height="70px" onclick="msg('box8')">
	<p class="box8_1" id="box8_1"></p>
	</p>
	<%} %>
	<% if(location.contains("8")){%>
	<p class="box8">
		<input type="image" id="box8" name="box8"
			src="../images_shin/box_in.png" alt="submit" width="80px"
			height="70px" onclick="msg('box8')">
	<p class="box8_1" id="box8_1"><%=sd1.getSNAME("1", "8")%></p>
	</p>
	<%} %>

	<% if(!location.contains("9")) {%>
	<p class="box9">
		<input type="image" id="box9" name="box9" src="../images_shin/box.PNG"
			alt="submit" width="120px" height="40px" onclick="msg('box9')">
	<p class="box9_1" id="box9_1"></p>
	</p>
	<%} %>
	<% if(location.contains("9")){%>
	<p class="box9">
		<input type="image" id="box9" name="box9"
			src="../images_shin/box_in.png" alt="submit" width="120px"
			height="40px" onclick="msg('box9')">
	<p class="box9_1" id="box9_1"><%=sd1.getSNAME("1", "9")%></p>
	</p>
	<%} %>





	<% if(!location.contains("10")) {%>
	<p class="box10">
		<input type="image" id="box10" name="box10"
			src="../images_shin/box.PNG" alt="submit" width="170px" height="40px"
			onclick="msg('box10')">
	<p class="box10_1" id="box10_1"></p>
	</p>
	<%} %>
	<% if(location.contains("10")){%>
	<p class="box10">
		<input type="image" id="box10" name="box10"
			src="../images_shin/box_in.png" alt="submit" width="170px"
			height="40px" onclick="msg('box10')">
	<p class="box10_1" id="box10_1"><%=sd1.getSNAME("1", "10")%></p>
	</p>
	<%} %>


	<% if(!location.contains("11")) {%>
	<p class="box11">
		<input type="image" id="box11" name="box11"
			src="../images_shin/box.PNG" alt="submit" width="100px" height="90px"
			onclick="msg('box11')">
	<p class="box11_1" id="box11_1"></p>
	</p>
	<%} %>
	<% if(location.contains("11")){%>
	<p class="box11">
		<input type="image" id="box11" name="box11"
			src="../images_shin/box_in.png" alt="submit" width="100px"
			height="90px" onclick="msg('box11')">
	<p class="box11_1" id="box11_1"><%=sd1.getSNAME("1", "11")%></p>
	</p>
	<%} %>


	<p class="blank1">
		<br> <br>
	</p>
	<p class="blank2">
		<br> <br>
	</p>
	<p class="blank3">
		<br> <br>
	</p>
	<p class="blank4">
		<br> <br>
	</p>
	<p class="dd">
		<img src="../images_shin/man.png" width="28px">
	</p>
	<p class="aa">
		<img src="../images_shin/woman.png" width="28px">
	</p>
	<p class="ee">
		<img src="../images_shin/ele.png" width="70px">
	</p>
	<p class="es1">
		<img src="../images_shin/es.png" width="40px">
	</p>
	<p class="es2">
		<img src="../images_shin/esc.png" width="40px">
	</p>
	
	</div>
<br>
	<button value="" name="bt5" onclick="location.href='shop_add.jsp'">뒤로가기</button>
</div>
</body>
</html>