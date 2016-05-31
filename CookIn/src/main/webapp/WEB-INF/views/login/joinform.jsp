<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- jquery -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/jquery-1.12.2.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="/cook/resources/js/search.js"></script>
<script src="/cook/resources/js/joinvali.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
/* 	.container>.row>div {
		border: 1px solid red;
	} */
	
	.item>img{
		margin: 0px auto;
	}
	.container{
		width:100%;
	}
	#postNumber{
		width: 68%;
		display: inline-block;
	}
	#postcodify_search_button{
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
		$(document).ready(function(){
			
			/* 
			$(function() {
				$("#postcodify_search_button").click(
						function(e){e.preventDefault();
						})});
			$("#postcodify_search_button").postcodifyPopUp();
			 */
			
		});
             
        
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
                    <input type="text" class="form-control onlyNumber postcodify_postcode5" id="postNumber" data-rule-required="true" placeholder="주소 검색 시, 자동 입력 됩니다." >
                    <!-- 주소 검색 -->
                    <button id="postcodify_search_button" type="button" class="btn btn-default">주소 검색</button>
                </div>
            </div>
            <div class="form-group" id="divmainaddr">
                <label for="inputaddr" class="col-lg-3 control-label">주소</label>
                <div class="col-lg-9">
                <!-- 하는중 -->
                    <input type="text" class="form-control postcodify_address" id="mainaddr" data-rule-required="true" placeholder="주소 검색 시, 자동 입력 됩니다." >
                </div>
            </div>
            <div class="form-group" id="divsubaddr">
                <label for="inputaddr" class="col-lg-3 control-label">상세 주소</label>
                <div class="col-lg-9">
                    <input type="text" class="form-control" id="subaddr" data-rule-required="true" placeholder="상세 주소를 입력하세요" >
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
	
	
	<%@ include file="../footer.jsp" %>
</body>
</html>