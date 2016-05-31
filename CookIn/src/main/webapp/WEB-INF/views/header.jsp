<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.header {
	width: 100%;
}

.toolbar {
	background-color: rgb(71, 48, 32);
	text-align: right;
}

.toolbar>a {
	color: white;
}

.logo {
	height: 130px;
	background-color: rgb(244, 235, 114);
	text-align: center;
}

.topmenu {
	background-color: rgb(244, 235, 114);
	height: 30px;
	text-align: center;
}

.topmenu>a {
	color: rgb(71, 48, 32);
	font-weight: bold;
}
.btn{
	background-color: rgb(244, 235, 114);
	font-weight: bold;
}
.dropdown-menu{
	margin-left: 120px;
}
/* Log in 글귀 설정 */
#myModalLabel{
	text-align:center;
	color:rgb(71, 48, 32);
	font-size:30pt;
	font-weight: bold;
}
/* 하단 SIGN IN 위치 DIV 설정 */
.bottomColor{
	background-color: rgb(244, 235, 114);
	text-align: center;
	border-radius: 10px;
	width:20%;
	margin: 0px auto;
}
/* 하단 SIGN IN 버튼 설정 */
.bottomColor button {
	background-color: rgb(244, 235, 114);
	color: white;
	font-size: 20px;
	border: 0px;
}

</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="header col-md-12">
		<div class="toolbar">
			<a href="/cook">HOME/</a><a href="#" data-toggle="modal" data-target="#myModal">LOGIN/</a><a href="join">JOIN/</a>
			<a href="/cook/mypage">마이페이지/</a><a href="#">장바구니/</a><a href="/cook/qna">FAQ</a>
		</div>
		<div class="logo">
			<a href="/cook"><img src="resources/imgs/logo.png"></a>
		</div>
	</div>
	
	<!-- LOGIN 창 IMPORT -->
	<%@ include file="login/login.jsp" %>
</body>
</html>