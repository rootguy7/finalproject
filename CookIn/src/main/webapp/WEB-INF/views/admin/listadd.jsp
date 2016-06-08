<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/cook/resources/css/jquery-ui.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="/cook/resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<title>관리자-상품 등록페이지</title>
<style type="text/css">
#listimg{
	width: 200px;
	height: 200px;
}
</style>
<script type="text/javascript">
	$(function(){
		$("#datepicker").datepicker({
			dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    dayNames: ['일','월','화','수','목','금','토'],
		    dayNamesShort: ['일','월','화','수','목','금','토'],
		    dayNamesMin: ['일','월','화','수','목','금','토'],
		    showMonthAfterYear: true,
		    changeMonth: true,
		    changeYear: true,
		    yearSuffix: '년'
		});		
	});
</script>
</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid"><br/>
	<div class="row">
		<div class="col-md-2 content"></div>
	  <div class="col-md-8 content">
		<div>
	  		<span class="titlename">
				<h3>상품관리<small>상품 등록페이지</small></h3>
			</span>
	  		<table class="table">
		  		<colgroup>
	                <col width="200" />
	                <col width="500" />
	            </colgroup>
	            <tr>
	            	<th class="active">상품 대표사진</th>
	            	<td><input type="file"id="InputFile">
	            	<p class="help-block">파일 대표사진 선택</p></td>
	            </tr>
	            <tr>
	            	<th class="active">상품 번호</th>
	            	<td><input type="text" class="form-control" id="serialnum" placeholder="상품 번호를 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">상품명</th>
	            	<td><input type="text" class="form-control" id="productname" placeholder="상품명을 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">입고 날짜</th>
	            	<td><input type="text" class="form-control" id="datepicker" placeholder="날짜를 선택하려면 클릭하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">수량</th>
	            	<td><input type="text" class="form-control" id="ea" placeholder="수량을 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">제조사</th>
	            	<td><input type="text" class="form-control" id="company" placeholder="제조사를 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">원산지</th>
	            	<td><input type="text" class="form-control" id="country" placeholder="원산지를 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">소비자가</th>
	            	<td><input type="text" class="form-control" id="price1" placeholder="소비자가격을 입력하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">판매가</th>
	            	<td><input type="text" class="form-control" id="price2" placeholder="소비자가격*0.8"></td>
	            </tr>
	            <tr>
	            	<th class="active">상품 상세사진</th>
	            	<td><input type="file"id="InputFile">
	            	<p class="help-block">제품 상세설명 파일 선택</p></td>
	            </tr>
			</table>
		</div>
		<div class="col-md-11"></div>
			<div class="col-md-1">
				<div class="btn">
					<a class="btn btn-default" href="/cook/admin/list" role="button">등록</a>
			  	</div>
			</div>
	  	</div>
	<div class="col-md-2 content"></div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>