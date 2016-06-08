<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	#kk{
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

function getRow(rowValue) {//테이블 클릭시 row num 넘겨주는 함수
	var rowIndex = rowValue.rowIndex;
	return rowIndex;
}

	$(document).ready(function(){
		$('.rownum2').on('click', function() {
			var ridx=getRow(this);
		    var index = $('.rownum2:eq('+(ridx)+')>td:eq(0)').text();
			location.href="/cook/qnadetail";
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
				<div class="col-md-12" id="kk">
						기간별조회
						<button class="btn btn-default" type="submit">1주일</button>
						<button class="btn btn-default" type="submit">15일</button>
						<button class="btn btn-default" type="submit">1개월</button>
							
						<span>Date:<input type="text" id="datepicker3">~<input type="text" id="datepicker4"></span>

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
					<tr><th>번호</th><th>문의종류</th><th>제목</th><th>문의날짜</th></tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="var">
					<tr class="rownum2">
						<td>${var.bbs_idx}</td><td>${var.kind_num}</td><td>${var.title}</td><td>${var.time}</td>
					</tr>
					</c:forEach>
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