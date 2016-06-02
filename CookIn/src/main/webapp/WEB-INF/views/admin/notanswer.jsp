<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-미답변확인 페이지</title>
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
.limit{
	color: red;
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

</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid"><br/>
	<div class="row">
		<div class="col-md-2 content"></div>
	  	<div class="col-md-8 content">
			<div>
		  		<span class="titlename">
					<h3>오늘의 할일<small>미 답변</small></h3>
				</span>
		  		<table class="table">
			  		<colgroup>
		                <col width="50" />
		                <col width="100" />
		                <col width="500" />
		                <col width="200" />
		            </colgroup>
					<tr class="active"><th class="title">No</th><th class="title">작성자</th><th class="title">Title</th><th class="title">작성일</th></tr>	
				</table>
				<table class="table-condensed table-hover table tabletd">
					<colgroup>
		              	<col width="50" />
		                <col width="100" />
		                <col width="500" />
		                <col width="200" />
		            </colgroup>
					<tr class="rownum">						
						<td>1</td>
						<td>손지현</td>
						<td>흑석동우럭</td>
						<td class="limit">2016.05.30</td>
					</tr>
					<tr class="rownum">
						<td>2</td>
						<td>진연성</td>
						<td>왕십리음악대장</td>
						<td class="limit">2016.05.29</td>
					</tr>
				</table>
			</div>
			<div class="col-md-10"></div>
			<div class="col-md-1">
			</div>
	  </div>
		<div class="col-md-2 content"></div>
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