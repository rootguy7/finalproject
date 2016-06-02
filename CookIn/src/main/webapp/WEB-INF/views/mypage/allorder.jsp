<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui"/>
<link rel="stylesheet" type="text/css" href="/cook/resources/css/jquery-ui.css"/>
<script type="text/javascript" src="/cook/resources/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="/cook/resources/js/jquery-ui.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	h3{
		text-align: center;
	}
	.form-control5{
		width: 30%;
	}
	#datepicker,#datepicker2{
		width: 80px;
	}
	#jj{
		text-align: center;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#datepicker").datepicker({
			showOn: "button", // 버튼을 캘린더에 표시함
			changeYear: true, //년도 변경 가능
			changeMonth: true, //월 변경 가능
			prevText: '이전달',
			nextText: '다음달',  
			currentText: '오늘',
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],  
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],  
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],   
	        yearSuffix: '년',  
			buttonImage: "/cook/resources/imgs/calendar.png", //달력 표시 버튼 이미지 경로
			buttonImageOnly: true, // 버튼에 있는 이미지만 표시
			buttonText: "Select date",
			dateFormat:"yymmdd", //날짜 출력 포맷 20160501
		});		
		$("#datepicker2").datepicker({
			showOn: "button", // 버튼을 캘린더에 표시함
			changeYear: true, //년도 변경 가능
			changeMonth: true, //월 변경 가능
			prevText: '이전달',
			nextText: '다음달',  
			currentText: '오늘',
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],  
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],  
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],   
	        yearSuffix: '년',  
			buttonImage: "/cook/resources/imgs/calendar.png", //달력 표시 버튼 이미지 경로
			buttonImageOnly: true, // 버튼에 있는 이미지만 표시
			buttonText: "Select date",
			dateFormat:"yymmdd", //날짜 출력 포맷 20160501
		});		
	});
	
	function getRow(rowValue) {//테이블 클릭시 row num 넘겨주는 함수
		var rowIndex = rowValue.rowIndex;
		return rowIndex;
	}

		$(document).ready(function(){
			$('.rownum').on('click', function() {
				var ridx=getRow(this);
			    var index = $('.rownum:eq('+(ridx)+')>td:eq(0)').text();
				location.href="/cook/mypage/orderdetail";
			});
			
		});
</script>
</head>
<body>
	<h3>ORDER LIST</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="col-md-12" id="jj">
						기간별조회
						<button class="btn btn-default" type="submit">1주일</button>
						<button class="btn btn-default" type="submit">15일</button>
						<button class="btn btn-default" type="submit">1개월</button>
							
						<span>Date:<input type="text" id="datepicker">~<input type="text" id="datepicker2"></span>

						<button class="btn btn-default" type="submit">조회</button>
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
					<tr class="rownum">
						<th>1</th><td>2016-05-29</td><td>허쉬초콜렛</td><td>5,000원</td><td>배송준비중</td>
					</tr>
					<tr class="rownum">
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