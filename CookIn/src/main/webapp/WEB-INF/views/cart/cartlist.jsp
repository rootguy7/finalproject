<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cartlist</title>
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
#crtb2{
	background-color:rgb(248,248,248);
	font-weight: bold;
}
#crtb3{
	background-color:rgb(248,248,248);
	text-align: right;
	font-weight: bold;
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
	<!-- Navigation -->


    <!-- Page Content -->
    <div class="container"> <!-- container start -->
        <div class="row">	


            <div class="col-md-12"> <!-- col-md- start -->
            <br/>
           		<h2>장바구니</h2> 
				<hr/>
				
				<div class="row">	
				 <div class="col-md-12">
				<table class="table table-striped">
				<tr>
					<td>
					<div class="checkbox">
					  <label>
					    <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
					  </label>
					</div>
					</td>
					<td>상품 정보</td><td>수량</td><td>상품금액</td><td>배송비</td>
				</tr>
				<tr>
					<td>
					<div class="checkbox">
					  <label>
					    <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
					  </label>
					</div>
					</td>
					<td>헬로키티 흰색</td><td>1개</td><td>8,900원</td><td>2,500원</td>
				</tr>
				</table>  
				
				</div>
				</div>
				<br/>
				<div class="row">	
				 <div class="col-md-4"> <!-- 구매혜택 -->
				 <h4>구매 혜택</h4>
				<table class="table">
				<tr>
					<td id="tbclr">포인트</td><td>100점</td>
				</tr>
				</table>
				</div>
				<div class="col-md-8"><!-- 결제 예정금액  -->
				<table class="table" >
				<tr>
					<td id="crtb2" colspan="2">결제 예정금액</td>
				</tr>
				<tr>
					<td>상품가격(총2개)</td><td>12,500원</td>
				</tr>
				<tr>
					<td>할인금액</td><td>1,000원</td>
				</tr>
				<tr>
					<td>배송비</td><td>2,500원</td>
				</tr>
				<tr>
					<td id="crtb3" colspan="2">14,000원</td>
				</tr>
				</table>
				</div>
			
				<div class="text-center">
				<button type="button" class="btn btn-default" >선택상품삭제</button>
				<button type="button" class="btn btn-default" onclick="location.href='/cook/ordersheet'">선택상품주문</button>
				</div>
				<br/><br/>
            </div>
            </div> <!-- col-md- end -->

	   	   
	   	</div>	
	</div>	   	<!-- container end -->

	<%@ include file="../footer.jsp"%>
	<!-- container div end -->
</body>
</html>


