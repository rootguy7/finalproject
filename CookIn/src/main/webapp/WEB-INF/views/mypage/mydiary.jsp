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
	$("#datepicker3").datepicker({
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
	$("#datepicker4").datepicker({
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
						<p>기간별조회</p>
						<button class="btn btn-default" type="submit">1주일</button>
						<button class="btn btn-default" type="submit">15일</button>
						<button class="btn btn-default" type="submit">1개월</button>
							
						<span>Date:<input type="text" id="datepicker3">~<input type="text" id="datepicker4"></span>
						<button class="btn btn-default" type="submit">조회</button>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
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