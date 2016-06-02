<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>회원가입 페이지</title>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script type="text/javascript" src="/cook/resources/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="/cook/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/cook/resources/js/joinvali.js"></script>
<!-- 주소검색 import -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style> 
	.item>img{
		margin: 0px auto;
	}

	#sample6_postcode{
		width: 68%;
		display: inline-block;
	}
	#postSearch{
		width: 30%;
		display: inline-block;
	}
	#email{
		width: 30%;
		display: inline-block;
	}
	#domain{
		width: 30%;
		display: inline-block;
	}
	#seldomain{
		width: 32%;
		display: inline-block;
	}
	
</style>

<script type="text/javascript">
	 /* 	$(document).ready(function(){
	 	
	 	
	 	}); */
	 	
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
	<%@ include file="../header.jsp" %>
	  
				<%-- 	<!-- nav start -->
				<%@ include file="nav.jsp" %> --%>
	
	<div class="container">
		<div class="row">
		<!-- 모달 관련 -->
            <!-- 모달창 -->
            <div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">알림</h4>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            <!-- 모달 관련 끗 -->
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h1>회원가입 폼</h1>
			<form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
            <div class="form-group">
                <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                <div class="col-lg-10" id="provision">
                    <textarea class="form-control" rows="8" style="resize:none">약관동의</textarea>
                    <div class="radio">
                    	<label>
                            <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>동의합니다.
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" id="provisionYn" name="provisionYn" value="N">동의하지 않습니다.
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                <div class="col-lg-10" id="memberInfo">
                    <textarea class="form-control" rows="8" style="resize:none">개인정보의 항목 및 수집방법</textarea>
                    <div class="radio">
                        <label>
                            <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked>동의합니다.
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">동의하지 않습니다.
                        </label>
                    </div>
                </div>
            </div>
            
            <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
            
            <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-3 control-label">아이디</label>
                <div class="col-lg-9">
                    <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="영문또는 영문과 숫자조합, 6~12글자로 입력 해주세요" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-3 control-label">비밀번호</label>
                <div class="col-lg-9">
                    <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="비밀번호는 6~12 이내의 영문/숫자조합으로 해주세요" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-3 control-label">비밀번호 확인</label>
                <div class="col-lg-9">
                    <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="비밀번호 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-3 control-label">이름</label>
                <div class="col-lg-9">
                    <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                </div>
            </div>
             
<!--             <div class="form-group" id="divNickname"> -->
<!--                 <label for="inputNickname" class="col-lg-3 control-label">별명</label> -->
<!--                 <div class="col-lg-9"> -->
<!--                     <input type="text" class="form-control" id="nickname" data-rule-required="true" placeholder="별명" maxlength="15"> -->
<!--                 </div> -->
<!--             </div> -->
             
            <div class="form-group" id="divEmail">
                <label for="inputEmail" class="col-lg-3 control-label">이메일</label>
                <div class="col-lg-9">
                    <input type="text" class="form-control" id="email" data-rule-required="true" placeholder="이메일" /> @ 
                    <input type="text" class="form-control" id="domain" data-rule-required="true" placeholder="도메인 주소" />
                    <select class="form-control" id="seldomain">
                        <option value="direct">직접입력</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="google.com">google.com</option>
                    </select>
                </div>
            </div>
            <div class="form-group" id="divPostNumber">
                <label for="inputPostNumber" class="col-lg-3 control-label">우편 번호</label>
                <div class="col-lg-9">
                   	<input type="text" name="postNum" class="form-control onlyNumber postcodify_postcode5" id="sample6_postcode" data-rule-required="true" placeholder="주소 검색 시, 자동 입력 됩니다." >
                    <!-- 주소 검색 버튼 -->
                	<button type="button" id="postSearch" class="btn btn-default" onclick="sample6_execDaumPostcode()">주소 검색</button>
                </div>
            </div>
            <div class="form-group" id="divmainaddr">
                <label for="inputaddr" class="col-lg-3 control-label">주소</label>
                <div class="col-lg-9">
                <!-- 하는중 -->
                    <input type="text" name="mainAddress" class="form-control postcodify_address" id="sample6_address" data-rule-required="true" placeholder="주소 검색 시, 자동 입력 됩니다." >
                </div>
            </div>
            <div class="form-group" id="divsubaddr">
                <label for="inputaddr" class="col-lg-3 control-label">상세 주소</label>
                <div class="col-lg-9">
                    <input type="text" name="subAddress" class="form-control" id="sample6_address2" data-rule-required="true" placeholder="상세 주소를 입력하세요" >
                </div>
            </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="inputPhoneNumber" class="col-lg-3 control-label">휴대폰 번호</label>
                <div class="col-lg-9">
                    <input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-3 control-label">성별</label>
                <div class="col-lg-9">
                    <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                </div>
            </div>
            <!-- <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div> -->
            <div class="form-group">
                <div class="col-md-12">
                	<div class="text-center">
                    	<button type="submit" class="btn btn-default">가입</button>
                    	<button type="reset" class="btn btn-default">취소</button>
                    </div>
                </div>
            </div>
            </div><!-- col-md-6 끗 -->
            <div class="col-md-3"></div>
            </div>
        </form>
        
			</div><!-- col-md-8 end -->
			<div class="col-md-2"></div>
		</div><!-- row div end -->
		
	</div><!-- container div end -->
	
	
</body>
</html>