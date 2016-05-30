<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-질의응답 페이지</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/commbbs.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid">
	<div class="row">
	  	<div class="col-md-2">
			<%@ include file="../adminmenu.jsp" %>
		</div>
	  <div class="col-md-10 content">
	  	<div>
	  		<span>질의 응답</span>
		</div>
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
	  </div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>