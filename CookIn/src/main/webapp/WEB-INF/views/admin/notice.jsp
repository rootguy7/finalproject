<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자-공지사항 페이지</title>
<style type="text/css">
#pagination{/*  페이징 */
	display: inline-block;
	text-align: center;
}
</style>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>

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
				<h3>게시물관리<small>공지사항</small></h3>
			</span>
			 <table class="table tabletd">
            <tr>
               <th class="bno">No</th>
               <th class="btit">Title</th>
               <th class="btime">작성일</th>
               <th class="bname">작성자</th>
               <th class="bcount">조회수</th>
            </tr>
         </table>
         <table class="table table-hover">
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
            <tr>
               <td class="bno">10</td>
               <td class="btit">더미타이틀</td>
               <td class="btime">더미 시간</td>
               <td class="bname">더미 작성자</td>
               <td class="bcount">5</td>
            </tr>
         </table>
		</div>
		<!-- 검색 start -->
			<div class="col-md-2 content"></div>
			<div class="col-md-2 content">
			<select class="form-control">
			   <option>제목</option>
			   <option>내용</option>
			   <option>작성자</option>
			   <option>제목+내용</option>
			</select></div>
			<div class="col-md-4 content">
			<div class="input-group">
              <input type="text" class="form-control"
                 placeholder="Search for..." /> <span class="input-group-btn">
                 <button class="btn btn-default" type="button">검색</button>
              </span>
           </div></div>
	  <!-- 검색 end -->
	  </div>
	  <div class="col-md-1 content"></div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>