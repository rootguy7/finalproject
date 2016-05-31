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
   .titlename1{ 
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
		 	<tr class="titlename1"><th>고객 관리</th></tr>
			<tr><td><a class="con" href="/cook/admin/info">고객 정보</a></td></tr>
			
		 	<tr class="titlename1"><th>상품 관리</th></tr>	
			<tr><td><a class="con" href="/cook/admin/list">전체 상품 리스트</a></td></tr>
					
		 	<tr class="titlename1"><th>주문 관리</th></tr>
			<tr><td><a class="con" href="/cook/admin/order">주문 확인</a></td></tr>		
			<tr><td><a class="con" href="/cook/admin/deposit">입금 확인</a></td></tr>	
			<tr><td><a class="con" href="/cook/admin/delivery">배송 확인</a></td></tr>	
			
		 	<tr class="titlename1"><th>게시물 관리</th></tr>
			<tr><td><a class="con" href="/cook/admin/notice">공지사항</a></td></tr>		
			<tr><td><a class="con" href="/cook/admin/qna">질의응답</a></td></tr>		
		</table> 
<!-- 	</div> -->
	<!-- 메뉴 구성 끝  -->
</body>
</html>