<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>complete</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
#tbclr{	 	/* table td  */
	background-color: rgb(248,248,248);
	width: 25%;
}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
   
</script>
</head>
<body>

	<%@ include file="../header.jsp"%>
	<%@ include file="../nav.jsp" %>
	<!-- Navigation -->


    <!-- Page Content -->
    <div class="container"> <!-- container start -->
        <div class="row">	


            <div class="col-md-12"> <!-- col-md- start -->
           		<h2>주문 완료</h2> 
				<hr/>
				
				<h3>주문 상품</h3> 
				<table class="table table-striped">
				<tr>
					<td>구입상품 명</td><td>상품가격</td><td>개수</td><td>주문금액</td>
				</tr>
				<tr>
					<td>헬로키티 흰색</td><td>8,900원</td><td>1개</td><td>8,900원</td>
				</tr>
				<tr>
					<td colspan="4">결제금액 : 8,900원 + 배송료 2,500원 = 11,400원</td>
				</tr>
				</table>
				<h3>결제 방법</h3> 
				<table class="table">
				<tr>
					<td>무통장입금 : 국민은행 00000-00-000000 (예금주:(주)달콤쿡인)손지현<br>
						(입금 확인 후 배송이 됩니다.)</td>
				</tr>
				</table>
				<h3>주문자 정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr">이름</td><td>손지현</td>
				</tr>
				<tr>
					<td id="tbclr">E-mail</td><td>hello@world</td>
				</tr>
				<tr>
					<td id="tbclr">연락처</td><td>010-0000-0000</td>
				</tr>
				</table>
				<h3>배송지 정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr">이름</td><td>손지현</td>
				</tr>
				<tr>
					<td id="tbclr">연락처</td><td>010-0000-0000</td>
				</tr>
				<tr>
					<td id="tbclr">주소</td><td>서울시 서대문구 동동동 </td>
				</tr>
				<tr>
					<td id="tbclr">주문메세지</td>
					<td>부재시 경비실에 놔주세요.</td>
				</tr>
				</table>
				<br/>
				<div class="text-center">
				<table class="table">
				<tr>
					<td id="tbclr">손지현님의 주문이 완료되었습니다.<br>
					귀하의 주문확인 번호는 0000000-00000000000000 입니다.<br>
					입금방법이 무통장 입금인 경우 계좌번호를 메모하세요<br>
					입금 확인 후 상품을 준비하여 배송해 드리겠습니다.<br><br>
					주문해주셔서 감사합니다.<br>
					오늘도 행복한 하루 되세요.</td>
				</tr>
				</table>
				</div>
				<div class="text-center">
				<button type="button" class="btn btn-default" onclick="location.href='/cook/'" >계속 쇼핑하기</button>
				<button type="button" class="btn btn-default" onclick="location.href='/mypage/allorder'">주문내역 확인</button>
				</div>
				<br/><br/>
            </div> <!-- col-md- end -->


	   	   
	   	</div>	
	</div>	   	<!-- container end -->

	<%@ include file="../footer.jsp"%>
	<!-- container div end -->
</body>
</html>


