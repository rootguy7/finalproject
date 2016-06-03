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
		height: 10px;
	}
	.aa{
		width: 700px;
	}
	#bb{
		width:100px;
		height:100px;
	}
	#cc{
		width: 200px;
	}
</style>
</head>
<body>
	<h3>POINT LIST</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<div class="col-md-2">
			<img src="/cook/resources/imgs/profile.jpg" alt="" class="img-circle" id="bb">
			</div>
			<div class="col-md-6">
				<div class="panel panel-default" id="aa">
				 <div class="panel-body">
				    <p>김우빈</p>
				    <p>회원등급 : 쿠키/Level1</p>
							<div class="progress">
								 <div class="progress-bar progress-bar-warning progress-bar-striped active" 
								 role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
									<span class="sr-only">50% Complete</span>
								</div>
							</div>
							<p>포인트 : ${userOne.point }</p>
				    <p> > 총 보유 포인트
				    <span class="label label-warning">${userOne.point }</span> 
				    <p> > 사용가능 포인트 
				     <span class="label label-warning">${userOne.point }</span>  
				    <p> > 사용된 포인트
				     <span class="label label-warning">0</span> 
				  </div>
				</div>
			</div>
				<!-- <div class="alert alert-warning" role="alert">[박지윤]님이 쇼핑몰에서 사용 가능한 포인트 내역입니다.</div> -->
					*적립된 포인트가 100점 이상 누적되었을 때, 사용하실 수 있습니다.
				    <img alt="" src="/cook/resources/imgs/money.JPG" align="right" >
				<table class="table table-hover">
			  		<colgroup>
		                <col width="100" />
		                <col width="200" />
		                <col width="200" />
		            </colgroup>
		            <thead>
					<tr><th class="title">날짜</th><th class="title">포인트 적립내역</th><th class="title">포인트</th></tr>
					</thead>
					<tbody>
					<tr>
						<td>2016-05-29</td><td>물품구입에 대한 적립포인트입니다^^</td><td>230점</td>
					</tr>
					</tbody>
				</table>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>