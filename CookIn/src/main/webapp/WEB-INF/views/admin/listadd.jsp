<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-전체상품 페이지</title>
<style type="text/css">
.spinner {
  width: 100px;
}
.spinner input {
  text-align: right;
}
.input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 1%;
  vertical-align: middle;
  display: table-cell;
}
.input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px;
  margin-left: -1px;
  position: relative;
  border-radius: 0;
}
.input-group-btn-vertical > .btn:first-child {
  border-top-right-radius: 4px;
}
.input-group-btn-vertical > .btn:last-child {
  margin-top: -2px;
  border-bottom-right-radius: 4px;
}
.input-group-btn-vertical i{
  position: absolute;
  top: 0;
  left: 4px;
}
.upkey, .downkey{
	height: 10px;
}
</style>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.spinner .btn:first-of-type').on('click', function() {
	  $('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1);
	});
	$('.spinner .btn:last-of-type').on('click', function() {
	  $('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);
	});
});
</script>
</head>
<body>
	<div class="container">
	<div class="page-header"><h1>Bootstrap 3 input-spinner</h1></div>  
	  <div class="input-group spinner">
	    <input type="text" class="form-control" value="42">
	    <div class="input-group-btn-vertical">
	      <button class="btn btn-default upkey" type="button">▲<i class="fa fa-caret-up"></i></button>
	      <button class="btn btn-default downkey" type="button">▼<i class="fa fa-caret-down"></i></button>
	    </div>
	  </div>
	</div>
</body>
</html> --%>

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

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="/cook/resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<title>관리자-상품 등록페이지</title>
<style type="text/css">
#listimg{
	width: 200px;
	height: 200px;
}
.spinner {
  width: 100px;
}
.spinner input {
  text-align: right;
}
.input-group-btn-vertical {
  position: relative;
  white-space: nowrap;
  width: 1%;
  vertical-align: middle;
  display: table-cell;
}
.input-group-btn-vertical > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
  padding: 8px;
  margin-left: -1px;
  position: relative;
  border-radius: 0;
}
.input-group-btn-vertical > .btn:first-child {
  border-top-right-radius: 4px;
}
.input-group-btn-vertical > .btn:last-child {
  margin-top: -2px;
  border-bottom-right-radius: 4px;


}
.input-group-btn-vertical i{

  position: absolute;
  top: 0;
  left: 4px;
}
.upkey, .downkey{
	height: 10px;
}
</style>
<script type="text/javascript">
$(function(){
	$('.spinner .btn:first-of-type').on('click', function() {
	  $('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1);
	});
	$('.spinner .btn:last-of-type').on('click', function() {
	  $('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);
	});
	$('.spinner>input').spinner({
		min: 0, 
		max: 100
	});
	
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
</head>`
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
	            	<td><input type="text" class="form-control" id="productname" placeholder="상품명을 입력하세요."
	            	></td>
	            </tr>
	            <tr>
	            	<th class="active">입고 날짜</th>
	            	<td><input type="text" class="form-control" id="datepicker" placeholder="날짜를 선택하려면 클릭하세요."></td>
	            </tr>
	            <tr>
	            	<th class="active">수량</th>
	            	<td>
						<div class="input-group spinner">
						  <input type="text" class="form-control" value="100">
						  <div class="input-group-btn-vertical">
						    <button class="btn btn-default" type="button"><i class="fa fa-caret-up"></i></button>
						    <button class="btn btn-default" type="button"><i class="fa fa-caret-down"></i></button>
						  </div>
						</div>
	            	</td>
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