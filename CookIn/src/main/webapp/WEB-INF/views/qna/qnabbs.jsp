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
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$('.carousel').carousel({
		  interval: 2000
		})
</script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	  
				<%-- 	<!-- nav start -->
				<%@ include file="nav.jsp" %> --%>
	
	<div class="container">
		<div class="row rowmain">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h1>질의응답 게시판</h1>
			<table class="table tabletd">
				<tr>
					<th class="bno">No</th>
					<th class="btit">Title</th>
					<th class="btime">작성일</th>
					<th class="bname">작성자</th>
					<th class="bcount">조회수</th>
				</tr>
			</table>
			<table class="table table-hover">
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr>
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
			</table>
			<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<button type="button" class="btn btn-default">글쓰기</button>
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
	
	
	<%@ include file="../footer.jsp" %>
</body>
</html>