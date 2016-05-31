<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.dropdown-toggle
{
	color: rgb(71, 48, 32);
	font-weight: bold;
}
.container-fluid{
	height: 20px;
}
.best,.new,.notice,.qna{
	color: rgb(71, 48, 32);
	font-weight: bold;
}
.navbar-collapse{
	background-color: rgb(244, 235, 114);
}
.col-md-4{
	text-align: center;
}
.dropdown-menu{
	margin-left: 8px;
}
</style>
</head>
<body>
		
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div class="container">
				<div class="row">
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
					<div class="col-md-4">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">전체상품보기
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">전체상품</a></li>
							<li class="divider"></li>
							<li><a href="#">과자</a></li>
							<li class="divider"></li>
							<li><a href="#">젤리</a></li>
							<li class="divider"></li>
							<li><a href="#">사탕</a></li>
							<li class="divider"></li>
							<li><a href="#">초콜렛</a></li>
							<li class="divider"></li>
							<li><a href="#">가루쿡</a></li>
							<li class="divider"></li>
							<li><a href="#">안주류</a></li>
							<li class="divider"></li>
							<li><a href="#">한잔의 여유</a></li>
							<li class="divider"></li>
							<li><a href="#">기타</a></li>
						</ul></li></ul></div>
						<div class="col-md-2">
						<p class="navbar-text"><a href="/cook/best" class="best navbar-link">베스트상품</a></p>
						</div>
						<div class="col-md-2">
						<p class="navbar-text"><a href="/cook/new" class="new navbar-link">신규상품</a></p>
						</div>
						<div class="col-md-2">
						<p class="navbar-text"><a href="/cook/notice" class="notice navbar-link">공지사항</a></p>
						</div>
						<div class="col-md-2">
						<p class="navbar-text"><a href="/cook/qna" class="qna navbar-link">질의응답</a></p>
						</div>
				
				<!-- 주 메뉴목록 end -->
			</div>
			<!-- /.navbar-collapse -->
			</div> <!--row end  -->
			</div><!-- container end -->
			</div>
		<!-- /.container-fluid -->
	<!-- 메뉴 구성 끝  -->
</body>
</html>