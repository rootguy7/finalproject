<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-입금확인 페이지</title>
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
.title{ 
   color: rgb(71,48,32);
   background-color: rgb(244,235,114);
   border: 1px solid rgb(71,48,32);
}
#pagination{/*  페이징 */
	display: inline-block;
	text-align: center;
}
.btn{
}
</style>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
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
	  		<span class="titlename">입금 확인</span>
	  		<table class="table table-condensed table-bordered">
		  		<colgroup>
	                <col width="50" />
	                <col width="100" />
	                <col width="200" />
	                <col width="500" />
	                <col width="200" />
	            </colgroup>
				<tr><th class="title">check</th><th class="title">index</th><th class="title">입금 날짜</th><th class="title">상품 정보</th><th class="title">주문자명</th></tr>	
				<tr>
					<td>
						<div class="checkbox">
						  <label>
						    <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
						  </label>
						</div>
					</td>
					<td>내용1</td>
					<td>내용1</td>
					<td>내용1</td>
					<td>내용1</td>
				</tr>
				<tr>
					<td>
						<div class="checkbox">
						  <label>
						    <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
						  </label>
						</div>
					</td>
					<td>내용2</td>
					<td>내용2</td>
					<td>내용2</td>
					<td>내용2</td>
				</tr>
			</table>
		</div>
		<div class="btn">
			<button type="button">배송 승인</button>
	  	</div>
	  </div>
	</div>
	<!-- 페이징 start -->
	<div class="row">
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
	</div>
	<!-- 페이징 end -->
</div>
<%@include file="../footer.jsp" %>
</body>
</html>