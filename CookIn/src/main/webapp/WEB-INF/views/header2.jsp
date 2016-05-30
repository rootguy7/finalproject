<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
   .header{
      width: 100%;
   }    
/*    .col-md-12{
   	  margin-left:-15px;
   } */
   .toolbar{
      background-color: rgb(71,48,32);
      text-align: right;
   }
   .toolbar>a{
      color: white;
   }
   .logo{
      height: 130px;
      background-color: rgb(244,235,114);
      text-align: center;
   }
   .division{
   		height: 5px;
   		background-color: rgb(71,48,32);
   }
   #admintop{
   		color: rgb(244,235,114);
   		margin-right: 10px;
   		font-size: 11px;
   }
</style>
</head>
<body>
   <div class="header col-md-12">
      <div class="toolbar container-fluid">
		<span id="admintop">관리자 페이지</span>
      </div>
      <div class="logo">
		<a href="/cook/admin"><img src="/cook/resources/imgs/logo.png"></a>
      </div>
      <div class="division"></div>
   </div>
</body>
</html>