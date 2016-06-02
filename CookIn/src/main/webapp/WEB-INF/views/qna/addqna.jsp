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
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/commbbs.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
/* 	.container>.row>div {
		border: 1px solid red;
	} */
	
	.item>img{
		margin: 0px auto;
	}
	.container{
		width:100%;
	}
	.titleName {
	text-align: center;
	padding: 7px 4px;
	margin: 5px;
	color: rgb(191, 191, 191);
	font-size: 12pt;
	font-weight: bold;
	}

	#titleBox {
		width: 60%;
	}

	.bbsTitle {
		border: 1px solid rgb(213, 213, 213);
		padding: 10px;
	}
	#li1 {
		list-style-type: none;
	}
	.bbsBtnGroup{
		text-align: right;
	}
	.tfwrite{
		padding-left: 0px;
	}
	.bbstit{
		margin-left: 25px;
		margin-right: 25px;
	}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="/cook/resources/write/ckeditor/ckeditor.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		
	});
</script>
</head>
<body>
	<%@ include file="../header.jsp" %>
			
	<div class="container">
		<div class="row rowmain">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h2>문의글</h2>
			<form action="#" method="post">
						<div>
							<div class="bbsTitle">
								<span class="bbstit titleName">제 목</span> 
								<span> 
									<input type="text" id="titleBox" name="title" value="" class="inputText">
								</span>
								<span class="bbstit titleName">비밀번호</span> 
								<span> 
									<input type="password" id="pwBox" name="title" value="" class="inputText">
								</span>
								<!-- 아이디 값 벨류 히든으로 넘길 자리 -->
								<input type="hidden" name="name" value="동적으로 아이디" readonly="readonly">
							</div>
						</div>
						<div>
							<ul class="tfwrite">
								<li id="li1"><textarea cols="80" id="contents"
										name="contents" rows="10"></textarea> <script
										type="text/javascript">
											window.onload = function() {
												CKEDITOR.replace('contents', {
													enterMode : '2',
													shiftEnterMode : '3'
												});
											};
										</script>
								</li>
							</ul>
						</div>
						<div class="bbsBtnGroup">
							<span>
								<button type="submit" class="join btn btn-default">작 성</button>
								<button type="reset" class="back btn btn-default">취 소</button>
							</span>
						</div>
				</form>
				<!-- 주요 컨텐츠 끗 -->
			</div><!-- col-md-8 end -->
			<div class="col-md-2"></div>
		</div><!-- row div end -->
		
	</div><!-- container div end -->
	
	
</body>
</html>