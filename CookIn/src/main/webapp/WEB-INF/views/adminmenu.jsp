<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   *{
      margin: 0px;
      padding: 0px;
   }
   table tr>th{
       text-align: center;
   }
   table tr{
       text-align: center;
   }
   .leftmenu{
      width: 200px;
      margin-left: 0px;
   }
   .title{ 
      color: rgb(71,48,32);
      background-color: rgb(244,235,114);
      border: 1px solid rgb(71,48,32);
   }
   .con{	
   	  font-size: 12px;	
   } 
</style>
<script type="text/javascript">
	$('tr').click( function() {
	    window.location = $(this).find('a').attr('href');
	}).hover( function() {
	    $(this).toggleClass('hover');
	});
</script>
</head>
<body>
<!-- 	<div class="col-md-3 leftmenu"> -->
		<table class="table table-condensed">
		 	<tr class="title"><th>고객 관리</th></tr>
			<tr><td><a class="con" href="/cook/info/">회원 정보</a></td></tr>
			
		 	<tr class="title"><th>상품 관리</th></tr>		
			<tr><td><a class="con" href="/cook/list/">전체 상품</a></td></tr>
					
		 	<tr class="title"><th>주문 관리</th></tr>
			<tr><td><a class="con" href="/cook/order/">주문 확인</a></td></tr>		
			<tr><td><a class="con" href="/cook/deposit/">입금 확인</a></td></tr>	
			<tr><td><a class="con" href="/cook/delivery/">배송 확인</a></td></tr>	
			
		 	<tr class="title"><th>게시물 관리</th></tr>
			<tr><td><a class="con" href="/cook/notice/">공지사항</a></td></tr>		
			<tr><td><a class="con" href="/cook/qna/">질의응답</a></td></tr>		
		</table> 
<!-- 	</div> -->
	<!-- 메뉴 구성 끝  -->
</body>
</html>