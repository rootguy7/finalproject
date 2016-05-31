<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-질의응답 페이지</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/commbbs.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">

.titleName{
	text-align: center;
 	padding: 7px 4px;
 	margin: 5px; 
 	color: black; 
 	font-size: 10pt; 
}

#titleBox {
	width: 80%;
}

#li1 {
	list-style-type: none;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../resources/write/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<%@include file="../header2.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<%@ include file="../adminmenu.jsp"%>
			</div>
			<div class="col-md-1 content"></div>
			<div class="col-md-8 content">
				<div>
					<span>
						<h3>글쓰기<small>공지사항</small></h3>
					</span>
				</div>
				<!-- 주요 컨텐츠 시작 -->
				<form action="../customer/noticeinsert.do" method="post">
					<div class="col-md-12 content">
						<span class="bbstit titleName">제목</span>
						<span>
							<input type="text" id="titleBox" name="title" value="" class="inputText">
						</span>
						<!-- 아이디 값 벨류 히든으로 넘길 자리 -->
						<input type="hidden" name="name" value="동적으로 아이디" readonly="readonly">
					</div>
					<ul>  
						<li id="li1">
								<textarea cols="80" id="contents" name="contents" rows="10"></textarea>
								<script	type="text/javascript">
									window.onload = function() {
										CKEDITOR.replace('contents', {
											enterMode : '2',
											shiftEnterMode : '3'
										});
									};
								</script>
						</li>
					</ul>
					<br />
					<button type="submit" class="join">작성</button>
					<button type="reset" class="back">취소</button>
				</form>
				<!-- 주요 컨텐츠 끗 -->
			</div>
			<div class="col-md-1 content"></div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>