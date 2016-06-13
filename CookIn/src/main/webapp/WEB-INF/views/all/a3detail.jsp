<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>a3detail</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
.detailcookies{
	margin-left:90px;
	width:70%;
	height: 50%;
}
#right_section ,#right_section2{			/*  장바구니 */
	position:absolute;
	top:0px;
	left:0px;
}
.featurette-divider {
    margin: 80px 0;
}

.featurette {
    overflow: hidden;
}

.featurette-image.pull-left {
    margin-right: 40px;
}

.featurette-image.pull-right {
    margin-left: 40px;
}

.featurette-heading {
    font-size: 40px;
}
#curcleb1{
	width: 50%;
	height: 50%;
}
.detailtb td{
	font-size: 13pt;
	padding: 7pt;
}
#jjang{
	width:100px;
	height: 100px;
}
#wkdqkrnsl{
	font-size: 15px ;
	color: darkgray; 
	font-weight: bold;
}
}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$("document").ready(function() {   // 장바구니 스크롤 이동 
	    var currentPosition = parseInt($("#right_section").css("top"));  
	    var currentPosition = parseInt($("#right_section2").css("top"));  
	  	$(window).scroll(function() {  
            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환
            $("#right_section").stop().animate({"top":position+currentPosition+"px"},500);  
            $("#right_section2").stop().animate({"top":position+currentPosition+"px"},500);  
    	});  
	});
</script>
</head>
<body>

	<%@ include file="../header.jsp"%>
<!---------------------------------------------------------------------------------------------------------------->	
	<div class="container">
		<!-- row div end -->
				<div class="row">
				<br/><br/><br/>
					<!-- 사이드 장바구니 -->
						<div class="col-md-1">  
							 <div id="right_section">  
							     <div><a href="#"><img src="/cook/resources/imgs/side1.PNG" class="jangbaguni"></a></div>
							     <div><a href="#"><img src="/cook/resources/imgs/side2.PNG" class="jangbaguni"></a></div>
							</div>	
						</div>
					<!--사이드 제외 content start -->
						<!-- Navigation -->
    <div class="col-md-10">
           <div class="row">
           <br/>
            <div class="col-md-7">
                <img class="detailcookies" src="/cook/resources/imgs/ck9.PNG">
            </div>
            <!-- /.col-md-8 -->
            <div class="col-md-5">
                <h2><b>스위스미스 핫코코아 믹스컵</b></h2>
                <hr>
                <table class="detailtb">
                	<tr>
                		<td >상품명</td><td>스위스미스 핫 코코아 믹스컵</td>
                	</tr>
                	<tr>
                		<td>제조사</td><td>제조사 하단참조</td>
                	</tr>
                	<tr>
                		<td>원산지</td><td>미국</td>
                	</tr>
                	<tr>
                		<td>소비자가</td><td>1,500원</td>
                	</tr>
                	<tr>
                		<td>판매가</td><td>1,200원</td>
                	</tr>
                </table>
                <hr>
                <button type="button" class="btn btn-danger btn-lg">BUY NOW</button>
                <button type="button" class="btn btn-warning btn-lg">CART</button>
                <button type="button" class="btn btn-warning btn-lg">WISH LIST</button>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->
    
        <hr class="featurette-divider">

        <!-- First Featurette -->
        <div class="featurette" id="about">
            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/a3d1.png">
            <h2 class="featurette-heading">NO.1
                <span class="text-muted">스위스미스 코코아 믹스컵</span>
            </h2>
            <p class="lead">지금 아니면 맛볼수 없는맛~</p>
        </div>

        <hr class="featurette-divider">

        <!-- Second Featurette -->
        <div class="featurette" id="services">
            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/a3d2.png">
            <h2 class="featurette-heading">NO.2
                <span class="text-muted">달달한 맛</span>
            </h2>
            <p class="lead">달달한 맛이 일품인 스위스미스 마시멜로우 코코아! </p>
        </div>

        <hr class="featurette-divider">

        <!-- Third Featurette -->
        <div class="featurette" id="contact">
            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/a3d3.png">
            <h2 class="featurette-heading">NO.3
                <span class="text-muted">제조법</span>
            </h2>
            <p class="lead">스위스미스 핫 코코아를 맛나게 먹는법 잘 읽어보시고 즐거운 티타임 보내세요~</p>
        </div>

        <hr class="featurette-divider">
</div>
    <!-- /.container -->
					<!-- 사이드 제외 content end -->
					
					<!-- 사이드 장바구니 -->
						<div class="col-md-1">  
							 <div id="right_section2">  
							     <p><center><a  id ="wkdqkrnsl">[최근 본 상품]</a></center></p>
							  <div><a href="#"><img src="/cook/resources/imgs/a3d1.png" class="jangbaguni" id ="jjang"></a></div>
							 </div>  
						</div> 		
		<!-- row div end -->
				</div>
    </div>
<!---------------------------------------------------------------------------------------------------------------->	
	<!-- container div end -->
</body>
</html>
