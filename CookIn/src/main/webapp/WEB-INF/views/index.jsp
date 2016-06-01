<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
	.item>img{  
		margin: 0px auto;
	}
	.contents{
		height: 300px;
	}
	.container{
		width: 100%;
	}
	#store {
	text-decoration: none;
	color: black;
	}
	.plus{
	color: rgb(71, 48, 32);
	}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/css/bootstrap.min.css"></script>
<script type="text/javascript">
	$('.carousel').carousel({
		  interval: 2000
		})
		
</script>
</head>
<body>
	<!-- header IMPORT -->
	<%@ include file="header.jsp" %>
	  
				<!-- nav start -->
				<%@ include file="nav.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12 slider">
				<!-- start 케러셀 -->
						
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="resources/imgs/nav1.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="resources/imgs/nav2.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img src="resources/imgs/nav3.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						...
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>


				<!-- end 케러셀 -->
			</div>
		</div>
		<!-- row div end -->
		<div class="row contents">
			<div class="col-md-4 notice">
				<div class="col-md-12">
				<div class="text-left"><h4>NEWS&NOTICE  <a href="/cook/notice" class="plus"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></h4>  </div>
				<br/>
				<table class="table table-hover">
					<tr><td>No</td><td>title</td><td>작성자</td></tr>
					<tr><td>10</td><td>더미테이블</td><td>더미 작성자</td></tr>
					<tr><td>10</td><td>더미테이블</td><td>더미 작성자</td></tr>
				</table>
				</div>
			</div>
			<div class="col-md-4">
				<form class="navbar-form" role="search" action="#"
					method="get">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-active">검색</button>
				</form>
				<div><h4>BEST PRODUCT</h4></div>
				       <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="/cook/resources/imgs/best1.PNG">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/cook/resources/imgs/best2.PNG" >
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="/cook/resources/imgs/best3.PNG" >
                                </div>
                            </div>
                            <a class="left carousel-control2" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left2"></span>
                            </a>
                            <a class="right carousel-control2" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right2"></span>
                            </a>
                        </div>
                    </div>

                </div>
				
			</div>
			<div class="col-md-4 store">
			<h4>
			  <a href="/cook/store" id="store"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> STORE <br/>
			  
			 <img class="featurette-image img-circle img-responsive pull-right"  src="/cook/resources/imgs/store.PNG"></a>
			</h4>
		</div>
	</div></div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>