<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<c:set var="totalSum" value="0"/>
<c:set var="totalEa" value="0"/>
<c:set var="delCh" value="2500"/>

function sum(){
	var totEa=0;
	var totEaP=0;
	$(".chkitm").each(function(){
		if($(this).prop("checked")){
			var ea=0;
			var eap=0;
			ea=($(this).parent().parent().parent().siblings('.pea').text())*1;
			eap=(($(this).parent().parent().parent().siblings('.peap').text())*1)*ea;
			totEa+=ea;
			totEaP+=eap;
		}
	});
	
	$('.ttea').text("상품가격(총 "+totEa+"개)");
	$('.tteap').text(totEaP+"원");
	if(totEaP==0)
		$('#crtb3').text(0*1+'원');
	else
		$('#crtb3').text('${delCh}'*1+totEaP+'원');
	$('.resPoint').text(totEaP*0.01);
}
   $(document).ready(function(){
	   $('.chkitm').change(function() {
		   sum();
	   });
	   
	   $(".chkAll").click(function(){
	        //눌렀을때 체크 되어 있다면
	        if($(".chkAll").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $(".chkitm").prop("checked",true);
	            sum();
	        //눌렀을때 체크 되어 있지 않다면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $(".chkitm").prop("checked",false);
	            sum();
	        }
	    })
	    
	    
   });
</script>
</head>
<body>

	<%@ include file="../header.jsp"%>
	<!-- Navigation -->


    <!-- Page Content -->
    <div class="container"> <!-- container start -->
        <div class="row">	


            <div class="col-md-12"> <!-- col-md- start -->
            <br/><br/><br/>
           		<h2>장바구니</h2> 
				<hr/>
				
				<div class="row">	
				 <div class="col-md-12">
				<table class="table table-striped">
				<tr>
					<td>
					<div class="checkbox">
					  <label>
					    <input type="checkbox" id="blankCheckbox" value="option1" aria-label="..." class="chkAll">
					  </label>
					</div>
					</td>
					<td>상품 정보</td><td>수량</td><td>상품금액</td><td>배송비</td>
				</tr>
				<c:forEach items="${buyList }" var="cartVo">
				<tr class="itemrow">
					<td>
					<div class="checkbox">
					  <label>
					  <input type="checkbox" id="blankCheckbox" value="option1" aria-label="..." class="chkitm" />
					  </label>
					</div>
					</td>
					<td class="pname">${cartVo.p_name }</td><td class="pea">${cartVo.ea }</td><td class="peap">${cartVo.eaPrice }</td><td>2,500원</td>
				</tr>
				</c:forEach>
				</table>  
				</div>
				
				
				<c:forEach items="${buyList }" var="tot">
					<c:set var="totalSum" value="${tot.ea*tot.eaPrice+totalSum }"/>	
					<c:set var="totalEa" value="${tot.ea+totalEa }"/>	
				</c:forEach>
				
				
				</div>
				<br/>
				<div class="row">	
				 <div class="col-md-4"> <!-- 구매혜택 -->
				 <h4>구매 혜택</h4>
				<table class="table">
				<tr>
					<td id="tbclr">포인트</td><td class="resPoint"></td>
				</tr>
				</table>
				</div>
				<div class="col-md-8"><!-- 결제 예정금액  -->
				<table class="table" >
				<tr>
					<td id="crtb2" colspan="2">결제 예정금액</td>
				</tr>
				<tr>
<%-- 					<td>상품가격(총 ${totalEa }개)</td><td>${totalSum}원</td> --%>
					<td class="ttea">상품가격(총 ${totalEa }개)</td><td class="tteap">0원</td>
				</tr>
				<tr>
					<td>할인금액 (보유 포인트)</td><td>${userOne.point }원</td>
				</tr>
				<tr>
					<td>배송비</td><td>${delCh }원</td>
				</tr>
				<tr>
					<td id="crtb3" colspan="2">0원</td>
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

	<!-- container div end -->
</body>
</html>


