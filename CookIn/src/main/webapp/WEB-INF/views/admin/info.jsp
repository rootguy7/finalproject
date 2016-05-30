<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.title{ 
   color: rgb(71,48,32);
   background-color: rgb(244,235,114);
   border: 1px solid rgb(71,48,32);
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
<div class="container-fluid">
	<div class="row">
	  	<div class="col-md-2">
			<%@ include file="../adminmenu.jsp" %>
		</div>
		<div class="col-md-1 content"></div>
	 	<div class="col-md-8 content">
			<div>
		  		<span class="titlename">회원 정보</span>
		  		<table class="table table-condensed table-bordered">
			  		<colgroup>
		                <col width="100" />
		                <col width="200" />
		                <col width="200" />
		                <col width="300" />
		                <col width="300" />
		            </colgroup>
					<tr><th class="title">index</th><th class="title">id</th><th class="title">name</th><th class="title">mobile</th><th class="title">point</th></tr>	
					<tr>
						<td>내용1</td>
						<td>내용1</td>
						<td>내용1</td>
						<td>내용1</td>
						<td>내용1</td>	
					</tr>
					<tr>
						<td>내용2</td>
						<td>내용2</td>
						<td>내용2</td>
						<td>내용2</td>
						<td>내용2</td>
					</tr>
				</table>
			</div>
	  	</div>
	  	<div class="col-md-1 content"></div>
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