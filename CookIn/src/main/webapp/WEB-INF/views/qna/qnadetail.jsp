<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/commbbs.css">
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
	#commentParentText{
		width: 90%;
	}
	.rpadding{
		padding-right: 30px;
	}
	.mcenter{
		width: 60%;
	}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="resources/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>  
			
	<div class="container">
		<div class="row rowmain">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<h2>질의응답</h2>
			<div><!-- 주요 컨텐츠 내용 시작 -->
		         <table class="table table-condensed tablemain">
            <thead>
               <tr>
                  <th colspan="3" id="boardtitle">제에에목</th>
               </tr>
            </thead>
            <tbody>  
               <tr>
                  <td class="text-right"><span class="rpadding">작성일</span></td>
                  <td colspan="2" class="text-justify mcenter">91.05.31</td>
               </tr>
               <tr>  
                  <td class="text-right rmargin"><span class="rpadding">글쓴이</span></td>
                  <td class="text-justify mcenter">김주형</td>
                  <td><span id="clickconents" class="text-justify">조회수 :  클릭한 수</span></td>
               </tr>
               <tr>  
                  <td colspan="3" class="text-justify">
                  <!-- 글 내용 -->
                  	<p>쓴거 내용</p> 내용</p> 내용</p>
                  <!-- 글 내용 끗 -->
                  </td>
               </tr>
            </tbody>
         </table>
         
         <table class="table table-condensed">
            <thead>
               <tr>
                  <td>
                     <span id="btnlayout">
		           	    <button type="button" id="list" class="btn btn-default">목록</button>
                        <a href='#'>
                        <button type="button" id="modify" class="btn btn-default">수정</button></a>
                        <button type="button" id="del" class="btn btn-default">삭제</button>
                     </span>
                  </td>
               </tr>
            </thead>
         </table> 
         <form action="#" method="post" id="coform">
         <table id="commentTable" class="table table-condensed"></table>
         <table class="table table-condensed commenttext ">
            <tr>
               <td>
                  <span class="form-inline" role="form">
                  <p>
                  <!-- hiden- id,idx_fk(글번호) -->
                  <!-- 내용 전달. id가 널(로그인x) 일때 편히 처리하려고 jstl씀 -->
                  <input type="hidden" name="id" value="<c:out value="${sessionScope.jsonObj.id}"/> "/>
                  <input type="hidden" name="idx_fk" value="${param.index }"/>
                  <textarea id="commentParentText" name="comment" placeholder="내용" class="form-control col-lg-12" rows="4"></textarea>
                  <div class="form-group">
                  <button type="submit" id="commentParentSubmit" name="commentParentSubmit" class="btn commentbtn btn-default">등록</button>
                  </div>
                  </p>
                 
                  </span>
               </td>
            </tr>
         </table>      
         </form>
		</div><!-- 주요 컨텐츠 내용 끗 -->
			</div><!-- col-md-8 end -->
			<div class="col-md-2"></div>
		</div><!-- row div end -->
		
	</div><!-- container div end -->
	
	
	<%@ include file="../footer.jsp" %>
</body>
</html>