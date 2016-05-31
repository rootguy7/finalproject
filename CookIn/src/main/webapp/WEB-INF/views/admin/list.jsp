<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-전체상품 페이지</title>
<style type="text/css">
table {
	border-collapse: collapse;
}
table tr>th{
    text-align: center;
}
table tr{
    text-align: center;
}
.tabletd{
	margin-top: -21px;
}
#pagination{/*  페이징 */
	display: inline-block;
	text-align: center;
}
</style>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
function getRow(rowValue) {
	var rowIndex = rowValue.rowIndex;
	return rowIndex;
}
$(document).ready(function(){
	$('.rownum').on('click', function() {
		var ridx=getRow(this);
	    var index = $('.rownum:eq('+(ridx)+')>td:eq(0)').text();//$('.rownum:eq(1)>td:eq(0)').text();
		/* alert('클릭한 No : '+index); */
		location.href="/cook/admin/listdetail";
	});
});
</script>
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
				<h3>상품관리<small>전체 상품 리스트</small></h3>
			</span>
	  		<table class="table">
		  		<colgroup>
	                <col width="100" />
	                <col width="300" />
	                <col width="500" />
	                <col width="200" />
	            </colgroup>
				<tr class="active">
					<th class="title">No</th><th class="title">상품 번호</th><th class="title">상품명</th><th class="title">상품가격</th>
				</tr>	
			</table>
			<table class="table-condensed table-hover table tabletd">
				<colgroup>
	                <col width="100" />
	                <col width="300" />
	                <col width="500" />
	                <col width="200" />
	            </colgroup>
				<tr class="rownum">
					<td>1</td>
					<td>내용1</td>
					<td>내용1</td>
					<td>내용1</td>
				</tr>
				<tr class="rownum">
					<td>2</td>
					<td>내용2</td>
					<td>내용2</td>
					<td>내용2</td>
				</tr>
			</table>
		</div>
		<div class="col-md-10"></div>
			<div class="col-md-1">
			<div class="btn">
				<a class="btn btn-default" href="../admin/listadd" role="button">상품 등록</a>
		  	</div>
		</div>
	  </div>
	<div class="col-md-1 content"></div>
	<!-- 페이징 start -->
	  <div class="col-md-10" id="pagination">
			<ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			 </ul>
		</div>
	  <!-- 페이징 end -->
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>