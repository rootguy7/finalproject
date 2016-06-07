<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-회원정보 페이지</title>
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
<script type="text/javascript">
	$('tr').click( function() {
	    window.location = $(this).find('a').attr('href');
	}).hover( function() {
	    $(this).toggleClass('hover');
	});
</script>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid"><br/>
	<div class="row">
		<div class="col-md-2 content"></div>
	 	<div class="col-md-8 content">
			<div>
		  		<span class="titlename">
					<h3>고객관리<small>회원 정보</small></h3>
				</span>
		  		<table class="table">
			  		<colgroup>
		                <col width="100" />
		                <col width="200" />
		                <col width="200" />
		                <col width="300" />
		                <col width="300" />
		            </colgroup>
					<tr class="active"><th class="title">No</th><th class="title">ID</th><th class="title">이름</th><th class="title">휴대폰 번호</th><th class="title">POINT</th></tr>	
		        </table>
		        <table class="table-condensed table-hover table tabletd">
					<colgroup>
						<col width="100" />
		                <col width="200" />
		                <col width="200" />
		                <col width="300" />
		                <col width="300" />
		            </colgroup>
		            <c:forEach items="${list }" var="var">
					<tr class="rownum">
						<td>no</td>
						<td>${var.id }</td>
						<td>${var.name }</td>
						<td>${var.phone }</td>
						<td>${var.point }</td>	
					</tr>
					</c:forEach>
				</table>
			</div>
	  	</div>
	  	<div class="col-md-2 content"></div>
	  	<!-- 검색 start  -->
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-1 sel">
				<select class="form-control">
					<option>ID</option>
					<option>이름</option>
					<option>휴대폰번호</option>
					<option>POINT</option>
				</select>
			</div>
			<div class="col-md-3">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search for..."/> 
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">검색</button>
					</span>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
		<!-- 검색 end  -->
	
	<!-- 페이징 start -->
	  <div class="col-md-12" id="pagination">
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