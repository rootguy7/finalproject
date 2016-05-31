<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<title>Insert title here</title>
<style type="text/css">
#pagination{/*  페이징 */
	display: inline-block;
	margin-left: 280px;
}
	#datepicker3,#datepicker4{
		width: 80px;
	}
	#dd{
		width: 600px;
	}
		h3{
		text-align: center;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#datepicker3").datepicker();		
		$("#datepicker4").datepicker();		
	});
</script>
</head>
<body>
<h3>내가쓴글</h3>
<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<div class="col-md-1"></div>
				<div class="col-md-6">
				<div class="panel panel-default" id="dd">
					<div class="panel-body">
						기간별조회 
						<button class="btn btn-default" type="submit">1주일</button>
						<button class="btn btn-default" type="submit">15일</button>
						<button class="btn btn-default" type="submit">1개월</button>
							
						<span>Date:<input type="text" id="datepicker3">~<input type="text" id="datepicker4"></span>
						<button class="btn btn-default" type="submit">조회하기</button>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<table class="table table-hover">
				<thead>
					<tr><th>번호</th><th>문의종류</th><th>내용</th><th>문의날짜</th><th>상태</th></tr>
					</thead>
					<tbody>
					<tr>
						<th>1</th><td>배송문의</td><td>언제쯤 배송되나요?</td><td>2016-05-30</td><td>답변완료</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div id="pagination">
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
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>