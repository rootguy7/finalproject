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
	h3{
		text-align: center;
	}
	#dd{
		width: 600px;
	}
	.form-control5{
		width: 30%;
	}
	#datepicker,#datepicker2{
		width: 80px;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#datepicker").datepicker();		
		$("#datepicker2").datepicker();		
	});
</script>
</head>
<body>
	<h3>ORDER LIST</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default" id="dd">
					<div class="panel-body">
						기간별조회 
						<button class="btn btn-default" type="submit">1주일</button>
						<button class="btn btn-default" type="submit">15일</button>
						<button class="btn btn-default" type="submit">1개월</button>
							
						<span>Date:<input type="text" id="datepicker">~<input type="text" id="datepicker2"></span>

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
					<tr><th>번호</th><th>주문일자</th><th>상품명</th><th>결제금액</th><th>배송현황</th></tr>
					</thead>
					<tbody>
					<tr>
						<th>1</th><td>2016-05-29</td><td>허쉬초콜렛</td><td>5,000원</td><td>배송준비중</td>
					</tr>
					<tr>
						<th>2</th><td>2016-05-30</td><td>하리보젤리</td><td>7,000원</td><td>배송완료</td>
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