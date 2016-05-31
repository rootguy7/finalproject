<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-상품 상세페이지</title>
<style type="text/css">
#listimg{
	width: 200px;
	height: 200px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid">
	<div class="row">
	  	<div class="col-md-2">
			<%@ include file="../adminmenu.jsp" %>
		</div>
		<div class="col-md-1 content"></div>
	  <div class="col-md-8 content">
		<div>
	  		<span class="titlename">
				<h3>상품관리<small>상품 상세페이지</small></h3>
			</span>
	  		<table class="table">
		  		<colgroup>
	                <col width="300" />
	                <col width="200" />
	                <col width="500" />
	            </colgroup>
	            <tr><td rowspan="8"><img id="listimg"  src="../resources/imgs/b1d1.PNG"/></td></tr>
	            <tr>
	            	<th class="active">상품 번호</th>
	            	<td>1622-09</td>
	            </tr>
	            <tr>
	            	<th class="active">상품명</th>
	            	<td>허쉬 자이언트 초콜렛</td>
	            </tr>
	            <tr>
	            	<th class="active">입고 날짜</th>
	            	<td>2016.05.31</td>
	            </tr>
	            <tr>
	            	<th class="active">제조사</th>
	            	<td>제조사 하단참조</td>
	            </tr>
	            <tr>
	            	<th class="active">원산지</th>
	            	<td>미국</td>
	            </tr>
	            <tr>
	            	<th class="active">소비자가</th>
	            	<td>6,000원</td>
	            </tr>
	            <tr>
	            	<th class="active">판매가</th>
	            	<td>3,500원</td>
	            </tr>
			</table>
		</div>
		<div class="col-md-10"></div>
			<div class="col-md-1">
			<div class="btn">
				<a class="btn btn-default" href="/cook/admin/listedit" role="button">수정</a>
				<a class="btn btn-default" href="#" role="button">삭제</a>
		  	</div>
		</div>
	  </div>
	<div class="col-md-1 content"></div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>