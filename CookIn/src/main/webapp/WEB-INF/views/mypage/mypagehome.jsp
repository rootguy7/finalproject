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
<script>
        $(document).ready(function() {
            $('a[data-toggle="tab"]').on('hidden.bs.tab', function(e){
            });
        });
</script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	  
				 	<!-- nav start -->
				<%@ include file="../nav.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>MY PAGE</h2>
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a data-target="#home"
						id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
						aria-expanded="true">전체주문내역</a></li>
					<li role="presentation" class=""><a data-target="#point"
						role="tab" id="point-tab" data-toggle="tab"
						aria-controls="point" aria-expanded="false">내포인트</a></li>
					<li role="presentation" class=""><a data-target="#diary"
						id="diary-tab" role="tab" data-toggle="tab" aria-controls="diary"
						aria-expanded="false">내가쓴글</a></li>
					<li role="presentation" class=""><a data-target="#setting"
						role="tab" id="setting-tab" data-toggle="tab"
						aria-controls="setting" aria-expanded="false">나의설정</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home"
						aria-labelledby="home-tab">
						<%@ include file="../mypage/allorder.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="point"
						aria-labelledby="point-tab">
						<%@ include file="../mypage/point.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="diary"
						aria-labelledby="diary-tab">
						<%@ include file="../mypage/mydiary.jsp"%>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="setting"
						aria-labelledby="setting-tab">
						<%@ include file="../mypage/setting.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="../footer.jsp" %>
</body>
</html>