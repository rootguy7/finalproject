<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>alllist</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
 
.slide-image {
    width:1000px;
    height:300px;
}

.carousel-holder {
    margin-bottom: 30px;
}

.carousel-control,
.item {
    border-radius: 4px;
}
.caption {
    height: 100px;
    overflow: hidden;
}

.caption h4 {
    white-space: nowrap;
}

.thumbnail a img {
    width: 320px;
    height: 150px;
}

.thumbnail {
    padding: 0;
}

.thumbnail .caption-full {
    padding: 9px;
    color: #333;
}
#right_section ,#right_section2{			/*  장바구니 */
	position:absolute;
	top:0px;
	left:0px;
}
#pagination{								/*  페이징 */
	display: inline-block;
	text-align: center;
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
	<!-- Navigation -->


    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-1"> <!-- 장바구니 -->
							 <div id="right_section">  
							     <div><a href="#"><img src="/cook/resources/imgs/side1.PNG" class="jangbaguni"></a></div>
							     <div><a href="#"><img src="/cook/resources/imgs/side2.PNG" class="jangbaguni"></a></div>
						</div>		
            </div>

            <div class="col-md-10"> <!-- list -->

					<h3>전체상품</h3>
					<hr/>
					신상품 | 상품명 | 낮은가격 | 높은가격 | 인기상품 | 조회수
					<hr/>
                <div class="row">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b1detail"><img src="/cook/resources/imgs/ck1.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">1,000\</h4>
                                <h4><a href="/cook/b1detail">허쉬 자이언트 초콜렛</a>
                                </h4>
                                <p>허쉬 자이언트 초콜렛(크림카카오, 화이트, 밀크)</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b2detail"><img src="/cook/resources/imgs/ck2.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">800\</h4>
                                <h4><a href="/cook/b2detail">로아커웨하스 미니 3종</a>
                                </h4>
                                <p>로하커웨하스 미니45g 3종(나폴리타너,바닐라,크림카카오) </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b3detail"><img src="/cook/resources/imgs/ck3.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">2,300\</h4>
                                <h4><a href="/cook/b3detail">하리보 신상품 판타지아</a>
                                </h4>
                                <p>하리보 신상품 판타지아 200g/ 크레지파이션 175g </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b4detail"><img src="/cook/resources/imgs/ck4.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">2,700\</h4>
                                <h4><a href="/cook/b4detail">우마이봉 4종 </a>
                                </h4>
                                <p>우마이봉(멘타이,초코,치즈,콘포타지)_유통기한 임박 세일</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b5detail"><img src="/cook/resources/imgs/ck5.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">1,100\</h4>
                                <h4><a href="/cook/b5detail">피오렐라 초코 비스켓</a>
                                </h4>
                                <p>피오렐라 초코 비스켓_ 유통기한 임박 세일(2016.06.26)</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/b6detail"><img src="/cook/resources/imgs/ck6.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">2,500\</h4>
                                <h4><a href="/cook/b6detail">바이올란타 3종</a>
                                </h4>
                                <p>full45 & cookies & cream biscuits </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/a1detail"><img src="/cook/resources/imgs/ck7.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">14,500\</h4>
                                <h4><a href="/cook/a1detail">마오얌 Bloxx</a>
                                </h4>
                                <p>마오얌 Bloxx 박스 </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/a2detail"><img src="/cook/resources/imgs/ck8.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">22,800\</h4>
                                <h4><a href="/cook/a2detail">블랙포레스트 젤리 박스</a>
                                </h4>
                                <p>블랙포레스트 젤리 박스(80개입) </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/a3detail"><img src="/cook/resources/imgs/ck9.PNG" ></a>
                            <div class="caption">
                                <h4 class="pull-right">1,000\</h4>
                                <h4><a href="/cook/a3detail">스위스미스 핫코코아 믹스컵</a>
                                </h4>
                                <p>스위스믹스 핫코코아 믹스컵 </p>
                            </div>
                        </div>
                    </div>
             
                </div>
            </div> <!-- list 끝 -->

       <div class="col-md-1"> <!-- 장바구니 -->
							 <div id="right_section2">  
							     <div><a href="#"><img src="/cook/resources/imgs/side1.PNG" class="jangbaguni"></a></div>
							     <div><a href="#"><img src="/cook/resources/imgs/side2.PNG" class="jangbaguni"></a></div>
						</div>		
            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

     
    		<!-- 페이징 start -->
					<div class="row">
						<div class="col-md-12" id="pagination">
							<ul class="pagination">
							    <li>
							      <a href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li><a href="#">1</a></li>
							    <li><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">5</a></li>
							    <li>
							      <a href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							 </ul>
						</div>
					</div>
					<!-- 페이징 end -->

    </div>
    <!-- /.container -->
	<!-- container div end -->
</body>
</html>