<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	.mcont{
 		width: 100%;
 	}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
function getRow(rowValue) {//테이블 클릭시 row num 넘겨주는 함수
	var rowIndex = rowValue.rowIndex;
	return rowIndex;
}

	$(document).ready(function(){
		$('.rownum').on('click', function() {
			var ridx=getRow(this);
		    var index = $('.rownum:eq('+(ridx)+')>td:eq(0)').text();
			alert('클릭한 No : '+index);
			location.href="/cook/qnadetail";
		});
		
		$('.btnwrite').on('click',function(){
			alert('클릭');
			location.href="/cook/addqna";
		});
		
	});
</script>
</head>
<body>
	<%@ include file="../header.jsp" %>
			
	<div class="container mcont">
		<div class="row ">
		<br/><br/><br/>
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h2>질의응답</h2>
			<table class="table tabletd">
				<tr>
					<th class="bno">No</th>
					<th class="btit">Title</th>
					<th class="btime">작성일</th>
					<th class="bname">작성자</th>
					<th class="bcount">조회수</th>
				</tr>
			</table>
			<table class="table table-hover table-condensed ">
				<c:forEach items="${list}" var="var">
					<tr class="rownum">
						<td class="bno">${var.bbs_idx}</td>
						<td class="btit">${var.title}</td>
						<td class="btime">${var.time}</td>
						<td class="bname">${var.id}</td>
						<td class="bcount">${var.count }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<button type="button" class="btn btn-default btnwrite">글쓰기</button>
					</div>
			</div>
			<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-2 sel">
						<select class="form-control">
							<option>제목</option>
							<option>내용</option>
							<option>작성자</option>
							<option>제목+내용</option>
						</select>
					</div>
					<div class="col-md-4">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
					<!-- col-md-8>col-md-10 end -->
				<!-- col-md-8>row end -->
			</div><!-- col-md-8 end -->
			<div class="col-md-2"></div>
		</div><!-- row div end -->
		
	</div><!-- container div end -->
	
	
</body>
</html>