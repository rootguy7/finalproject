<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">	
/* Log in 글귀 설정 */
#myModalLabel{
	text-align:center;
	color:rgb(71, 48, 32);
	font-size:30pt;
	font-weight: bold;
}
/* 하단 SIGN IN 위치 DIV 설정 */
.bottomColor{
	background-color: rgb(244, 235, 114);
	text-align: center;
	border-radius: 10px;
	width:20%;
	margin: 0px auto;
}
/* 하단 SIGN IN 버튼 설정 */
.bottomColor button {
	background-color: rgb(244, 235, 114);
	color: white;
	font-size: 20px;
	border: 0px;
}	
</style>
	
<!-- 모달 팝업 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">X</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Log in</h4>
			</div>
			<div class="modal-body">
				<form action="#" method="post" id="loginForm">
					<div class="form-group">
						<label for="userid" class="control-label">ID</label>
						<input type="text" class="form-control" id="userid">
					</div>
					<div class="form-group">
						<label for="userpw" class="control-label">PASSWORD</label>
						<input type="password" class="form-control" id="userpw">
					</div>
					<div class="form-group bottomColor">
						<button type="submit" id="loginButton">SIGN IN</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

