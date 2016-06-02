<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#tbclr{	 	/* table td  */
	background-color: rgb(248,248,248);
	width: 25%;
}
.form-control1{
	width: 40%;
}
.form-control2{
	width:20%;
}
.form-control3{
	width: 10%;
}
#detailaddress{
	width:100%;
}
</style>
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
		<h3>회원정보수정</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<table class="table">
				<tr>
					<td id="tbclr">아이디</td><td>jiyoon1261</td>
				</tr>
				<tr>
					<td id="tbclr">비밀번호</td><td>  
					<input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="비밀번호는 6~12 이내의 영문/숫자조합으로 해주세요" maxlength="30"></td>
				</tr>
				<tr>
					<td id="tbclr">비밀번호확인</td><td><input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="비밀번호 확인" maxlength="30"></td>
				</tr>
				<tr>
					<td id="tbclr">이름</td><td> <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15"></td>
				</tr>
				<tr>
					<td id="tbclr">주소</td>
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
						   <input type="text" name="subAddress" class="form-control" id="sample6_address2" data-rule-required="true" placeholder="상세 주소를 입력하세요" >
						  </div>
						</form>
					</td>
				</tr>
				<tr>
					<td id="tbclr">성별</td>
						<td>
						 <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
						</td>
					</tr>
				<tr>
					<td id="tbclr">전화번호</td>
					<td><input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"></td><tr>
				</tr>
				<tr>
					<td id="tbclr">휴대폰번호</td>
					<td><input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11"></td><tr>
				</tr>
				<tr>
					<td id="tbclr">이메일</td><td><input type="text" class="form-control2" placeholder="">@
					<select class="form-control2">
					  <option>naver.com</option>
					  <option>nate.com</option>
					  <option>daum.net</option>
					  <option>google.com</option>
					</select>
					</td><tr>
				</tr>
				</table>
			<div class="text-center">
				<button type="button" class="btn btn-default" onclick="location.href='/cook/'" >정보수정</button>
				<button type="button" class="btn btn-default" onclick="location.href='/cook/'">취소</button>
				<button type="button" class="btn btn-default" onclick="location.href='/cook/'">회원탈퇴</button>
				</div><br/>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>