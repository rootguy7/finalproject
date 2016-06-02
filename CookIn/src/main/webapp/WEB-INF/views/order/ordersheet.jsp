<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ordersheet</title>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
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
				<h2>주문/ 결제</h2> 
				<hr/>
				<table class="table table-striped">
				<tr>
					<td>구매정보</td><td>상품가격</td><td>개수</td><td>주문금액</td>
				</tr>
				<tr>
					<td>헬로키티 흰색</td><td>8,900원</td><td>1개</td><td>8,900원</td>
				</tr>
				</table>
				<br/>
				<h3>구매자 정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr" >이름</td><td>손지현</td>
				</tr>
				<tr>
					<td id="tbclr">이메일</td><td>hello@world</td>
				</tr>
				<tr>
					<td id="tbclr">휴대폰 번호</td>
					<td>
						<form class="form-inline">
						  <div class="form-group form-group-sm">
						    <input type="text" class="form-control" id="exampleInputName2" >
						  </div>
						</form>
					 </td>
				</tr>
				</table>
				<br/>
				<h3>받는사람 정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr">이름</td>
					<td>
						<form class="form-inline">
						  <div class="form-group form-group-sm">
						    <input type="text" class="form-control" id="exampleInputName2" >
						  </div>
						</form>
					 </td>
				</tr>
				<tr>
					<td id="tbclr">휴대폰</td>
						<td>
						<form class="form-inline">
						  <div class="form-group form-group-sm">
						    <input type="text" class="form-control" id="exampleInputName2" >
						  </div>
						</form>
					 </td>
				</tr>
				<tr>
					<td id="tbclr">배송주소</td>
					<td>
					<form class="form-inline, col-xs-3" >
						  <div class="form-group form-group-sm" >
						    <input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" >
						  </div>
						</form>
					<button type="button" class="btn btn-default"  onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
						<form class="form-inline, col-xs-15" >
						  <div class="form-group form-group-sm" >
						    <input type="text" class="form-control" id="sample6_address" placeholder="주소를 입력해주세요" >
						  </div>
						</form>
						<form class="form-inline">
						  <div class="form-group form-group-sm">
						    <input type="text" class="form-control" id="sample6_address2" placeholder="상세주소" >
						  </div>
						</form>
					</td>
				</tr>
				<tr>
					<td id="tbclr">추가 연락처</td>	
					<td>
						<form class="form-inline">
						  <div class="form-group form-group-sm">
						    <input type="text" class="form-control" id="exampleInputName2" >
						  </div>
						</form>
					 </td>
				</tr>
				<tr>
					<td id="tbclr">배송 시 요청사항</td>
					<td>
					<select class="form-control  ">
						  <option>배송시 요청사항을 선택해 주세요.</option>
						  <option>배송 전 연락 바랍니다.</option>
						  <option>집 앞에 놔 주세요.</option>
						  <option>경비실에 맡겨 주세요.</option>
						  <option>택배함에 놔 주세요.</option>
					</select>
					<input type="text" class="form-control " placeholder="기타내용을 입력해 주세요.">
					</td>
				</tr>
				</table>
				<div class="checkbox">
				    <label>
				      <input type="checkbox"> 기본 배송지로 설정 
				    </label>
				  </div>
				<br/>
					<h3>상품정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr">업체 상품</td><td>6/02 도착예정</td>
				</tr>
				</table>
				<br/>
				<h3>결제정보</h3> 
				<table class="table">
				<tr>
					<td id="tbclr">총 상품가격</td><td>8,900원</td>
				</tr>
				<tr>
					<td id="tbclr">배송비</td><td>2,500원</td>
				</tr>
				<tr>
					<td id="tbclr">총 결제금액</td><td>11,400원</td>
				</tr>
				<tr>
					<td id="tbclr">결제방법</td>
					<td>
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions"  value="option1">신용/체크카드
						</label>
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions" value="option2"> 휴대폰
						</label>
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions"  value="option3"> 무통장입금
						</label>
				  </td>
				</tr>
				</table>
				<div class="text-center">
				<button type="button" class="btn btn-default" onclick="location.href='/cook/complete'">바로 결제하기</button>
				</div>
				<br/><br/>
            </div> <!-- col-md- end -->


	   	   
	   	</div>	
	</div>	   	<!-- container end -->

	<!-- container div end -->
</body>
</html>


