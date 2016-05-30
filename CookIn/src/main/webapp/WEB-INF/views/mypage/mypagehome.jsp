<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>마이페이지 메인 화면</title>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/css/bootstrap.min.css"></script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	  
				 	<!-- nav start -->
				<%@ include file="../nav.jsp" %>
				
<div class="container">
	<div class="row">
		<div class="col-md-12">
	<ul class="nav nav-tabs nav-justified">
	  <li role="presentation" class="active"><a href="/cook/mypage/allorder">전체주문내역</a></li>
	  <li role="presentation"><a href="/cook/mypage/point">내포인트</a></li>
	  <li role="presentation"><a href="/cook/mypage/allorder">내가쓴글</a></li>
	  <li role="presentation"><a href="/cook/mypage/setting">나의설정</a></li>
	</ul>
		</div>
	</div>
</div>
	
		<%@ include file="../footer.jsp" %>
</body>
</html>