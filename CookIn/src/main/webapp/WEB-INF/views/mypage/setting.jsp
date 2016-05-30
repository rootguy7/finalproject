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
.form-control{
	width: 40%;
}
.form-control2{
	width:20%;
}
.form-control3{
	width: 10%;
}
</style>
</head>
<body>
		<h3>회원정보수정</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<table class="table">
				<tr>
					<td id="tbclr">이름</td><td>박지윤</td>
				</tr>
				<tr>
					<td id="tbclr">아이디</td><td>jiyoon1261</td>
				</tr>
				<tr>
					<td id="tbclr">비밀번호</td><td><input type="text" class="form-control" placeholder=""></td>
				</tr>
				<tr>
					<td id="tbclr">비밀번호확인</td><td><input type="text" class="form-control" placeholder=""></td>
				</tr>
				<tr>
					<td id="tbclr">생일/성별</td>
					<td>
					<input type="text" class="form-control3" placeholder="">년
					<input type="text" class="form-control3" placeholder="">월
					<input type="text" class="form-control3" placeholder="">일
					<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">남
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">여
</label></td>
				</tr>
				<tr>
					<td id="tbclr">휴대폰</td><td><input type="text" class="form-control" placeholder=""></td><tr>
				</tr>
				<tr>
					<td id="tbclr">이메일</td><td><input type="text" class="form-control2" placeholder="">@
					<select class="form-control2">
					  <option>naver.com</option>
					  <option>nate.com</option>
					  <option>daum.net</option>
					  <option>google.com</option>
					</select>
					<button type="button" class="btn2 btn-danger">중복확인</button>
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