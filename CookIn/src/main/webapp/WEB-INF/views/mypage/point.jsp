<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h3{
		text-align: center;
	}
	.alert{
		width: 70%;
	}
	.well{
		width: 20%;
	}
	.panel{
		width: 80%;
	}
</style>
</head>
<body>
	<h3>POINT LIST</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="alert alert-warning" role="alert">[박지윤]님이 쇼핑몰에서 사용 가능한 적립금 내역입니다.</div>
				<div class="panel panel-default">
				 <div class="panel-body">
				    > 총 보유 적립금액
				    <span class="well well-sm">240원</span> 
				    > 사용가능 적립금 
				    <span class="well well-sm">240원</span> 
				    > 사용된 적립금
				    <span class="well well-sm">0원</span>
				  </div>
				</div>
					*적립된 금액이 100원 이상 누적되었을 때, 사용하실 수 있습니다.
				    <img alt="" src="/cook/resources/imgs/money.JPG" align="right" >
				<table class="table table-hover">
			  		<colgroup>
		                <col width="100" />
		                <col width="200" />
		                <col width="200" />
		            </colgroup>
		            <thead>
					<tr><th class="title">날짜</th><th class="title">적립내역</th><th class="title">적립금</th></tr>
					</thead>
					<tbody>
					<tr>
						<td>2016-05-29</td><td>물품구입에 대한 적립금입니다^^</td><td>230원</td>
					</tr>
					</tbody>
				</table>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>