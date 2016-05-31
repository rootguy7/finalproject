<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-질의응답 페이지</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/commbbs.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
	.bbstit {
		padding:5px 15px; 
		border-bottom:1px solid #ddd;
		height: 20px;
		width:100px; 
		border:1px solid #ccc;
	}
	.btitle { 
	text-align:center; 
	padding:7px 4px; 
	margin:5px;
	height: 20px;
	color:black;
	font-size: 10pt;
	background-color:#e6e6e6;
	}

	#li1{
		list-style-type: none;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../resources/write/ckeditor/ckeditor.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
	});
</script>
</head>
<body>
<%@include file="../header2.jsp" %>
<div class="container-fluid">
	<div class="row">
	  	<div class="col-md-2">
			<%@ include file="../adminmenu.jsp" %>
		</div>
	  <div class="col-md-1 content"></div>
	  <div class="col-md-8 content">
	  	<div>
	  		<span class="titlename">
				<h3>글쓰기<small>공지사항</small></h3>
			</span>
		</div>
		<!-- 주요 컨텐츠 시작 -->
		<form action="../customer/noticeinsert.do" method="post">
			<table class="join_tbl">
			<colgroup>
				<col width="10%" />
				<col width="40%" />
				<col width="10%" />
				<col width="40%" />
			</colgroup>
			<tr> 
				<td class="bbstit btitle">제목</td>
				<td class="bbstit"><input type="text" id="title" name="title" value="" size="100" class="inputText">
				<input type="hidden" name="name" value="동적으로 아이디" readonly="readonly"></td>
			</tr>
			</table>
				
			<li id="li1" >
				<textarea cols="80" id="contents" name="contents" rows="10" ></textarea>
				<script type="text/javascript">
					window.onload=function(){
						CKEDITOR.replace('contents',{enterMode:'2',shiftEnterMode:'3'});
					};
				</script>
			</li><br/>
			<button type="submit" class="join" >작성</button>
			<button type="reset" class="back" >취소</button>
		</form>	
		<!-- 주요 컨텐츠 끗 -->
	  </div>
	  <div class="col-md-1 content"></div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>