<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cartlist</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 <style>
#tbclr{	 	/* table td  */
	background-color: rgb(248,248,248);
	width: 25%;
}
    </style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
 <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script> 
<!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuGnrrZE1SYdANYML5yFFybrOsdgCCeGU&callback=initMap" async defer></script>-->
<script>
function initialize() { 
	  var myLatlng = new google.maps.LatLng(37.553707, 126.937202);  // 달콤쿡인 좌표값 
	  var mapOptions = { 
	        zoom: 17, 
	        center: myLatlng, 
	        mapTypeId: google.maps.MapTypeId.ROADMAP 
	  } 
	  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions); 
	  
		var marker = new google.maps.Marker({ 		// 마커설정 
		    position: myLatlng, 
		    map: map, 
		    title: "달콤쿡인" 
		});
		
		var infowindow = new google.maps.InfoWindow( 	// 마우스클릭시  말풍선 
		          { 
		            content: "<h6>달콤쿡인</h6>", 
		            maxWidth: 300 
		          } 
		); 

		google.maps.event.addListener(marker, 'click', function() { 
		 infowindow.open(map, marker); 
		}); 
	  } 
</script>
</head>
<body onload="initialize()">

	<%@ include file="../header.jsp"%>
	<!-- Navigation -->


    <!-- Page Content -->
    <div class="container"> <!-- container start -->
        <div class="row">	


            <div class="col-md-12"> <!-- col-md- start -->
            <br/><br/><br/>
            	<h2>찾아오는 길 </h2>
            	<hr>
            	 <div id="map_canvas"style="width:100%; height:250px;"></div> 
            	 <br/>
            	 <div class="text-center">
				<table class="table">
				<tr>
					<td id="tbclr">
					- 2호선 신촌역 6번출구 전방 600미터 베이스볼 옆건물<br/>
					- 경의선 서강대역 1번출구 전방 150미터 서강대정문 왼쪽(신촌역방향) 서브웨이 옆건물<br/>
					<span class="glyphicon glyphicon-home" aria-hidden="true"></span> 주소 : 서울특별시 마포구 노고산동 31-202<br/>
					<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> 대표전화 : 010-9876-5432
					</td>
				</tr>
				</table>
				</div>
				<br/>
            </div> <!-- col-md- end -->


	   	   
	   	</div>	
	</div>	   	<!-- container end -->

	<!-- container div end -->
</body>
</html>


