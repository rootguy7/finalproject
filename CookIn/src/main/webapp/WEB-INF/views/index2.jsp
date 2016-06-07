<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agency - Start Bootstrap Theme</title>
 
    <!-- Bootstrap Core CSS -->
    <link href="/cook/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/cook/resources/css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/cook/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">

	#mainsl , #navimg{
		width: 100%;
		min-height: 700px;;
		}
		.ratings {						 /* 별 */
	    padding-right: 10px;
	    padding-left: 10px;
	    color: #d17581;
	}	

</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
// 	alert("main 실행");
	
	//Sign in 버튼 클릭시 이벤트 발생
	$('#loginButton').click(function(){
// 		var loginSubmit = function(){
			//아이디 벨리데이션 검사
			if($('#userid').val() == "") 
			{
				alert("아이디를 입력해주세요");
				$('#userid').focus();
				return false;
			}
			//패스워드 벨리데이션 검사
			else if($('#userpw').val() == "") 
			{
				alert("비밀번호를 입력해주세요");
				$('#userpw').focus();
				return false;
			}
						
			/* $('#loginForm').attr('action','login.blog').submit();
			return;  */
// 		} 
		   
			var url = "/cook/login";   //Controller 호출
		    var postString = "";       // post방식으로 처리하기 위한 파라미터들
		    postString   = "id=" + $('#userid').val();
		    postString += "&pw=" + $('#userpw').val();
			
		    $.ajax({                          // 이부분부터 비동기통신을 하게 된다. 위에서 설정한 값들을 입력후
		        type: "POST",
		        url: url,
		        data: postString,
		        success: function() {  //성공시 이 함수를 호출한다.
// 		            setTimeout('parent.stopLayer('+msg+')',2500); 
		       	alert("성공");
		       },
		       error: function (jqXHR, textStatus, errorThrown) {
	               alert("ERROR" + textStatus + " : " + errorThrown);
	  	       }
		       
		       
	    }); //ajax end
	}); //click end
}); //ready end
</script>
</head>

<body id="page-top" class="index">

  <!-- LOGIN 창 IMPORT -->
	<%@ include file="login/login.jsp" %>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" >
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="headerbar">
	</div>
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Dalcom Cook IN</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#all">ALL</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#best">BEST</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">NEW</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#notice">NOTICE</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#faq">FAQ</a>
                    </li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="/cook/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-modal-window" aria-hidden="true"></span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="join"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/mypage"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/cart"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/store"><span class="glyphicon glyphicon-map-marker" aria-hidden="true">   </span></a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
        <div class="container" id="mainsl">
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
							<img id="navimg" src="resources/imgs/nav4.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img id="navimg"  src="resources/imgs/nav5.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						<div class="item">
							<img  id="navimg" src="resources/imgs/nav6.jpg" alt="...">
							<div class="carousel-caption">
							</div>
						</div>
						...
					</div>
           <!-- <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Studio!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
        </div> --> 

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
    <!-- Header end -->
    <!-- All Section -->
        <section id="all">
        <div class="container">
            <div class="row">  
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">ALL Product</h2>
                    <h3 class="section-subheading text-muted">다양한 상품들을 구경하세요</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image"> 
                           <img class="img-circle img-responsive" src="/cook/resources/imgs/cookies.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="subheading">과자</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                               <img class="img-circle img-responsive" src="/cook/resources/imgs/jelly.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading"> 
                                    <h4 class="subheading">젤리</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                               <img class="img-circle img-responsive" src="/cook/resources/imgs/candy.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="subheading">사탕</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                            <img class="img-circle img-responsive" src="/cook/resources/imgs/choco.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="subheading">초콜렛</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>  
                        </li> 
                        <li class="timeline-inverted">
                        <a href="/cook/all">
                            <div class="timeline-image">    
                               <h4>All<br/>
                               product<br/>Go !</h4>
                            </div>
                        </a>
                        </li>
                    </ul>
                </div>
            </div> 
        </div>
    </section>
<!-- All Section end-->

    <!--Best Section -->
     <section id="best" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Best Product</h2>
                    <h3 class="section-subheading text-muted">Best 1~3</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="/cook/resources/imgs/ck1.PNG" class="img-responsive img-circle" alt="">
                        <h4>허쉬 자이언트 초콜렛</h4>
                        <p class="text-muted">1,000/</p>
                     <div class="ratings">
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="/cook/resources/imgs/ck2.PNG" class="img-responsive img-circle" alt="">
                        <h4>로아커웨하스 미니3종</h4>
                        <p class="text-muted">800/</p>
                     <div class="ratings">
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="/cook/resources/imgs/ck3.PNG" class="img-responsive img-circle" alt="">
                        <h4>하리보 신상품 판타지아</h4>
                        <p class="text-muted">2,300/</p>
                    <div class="ratings">
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span> 
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
            <button type="button" class="btn btn-primary" onclick="location.href='/cook/best'"> Best Go <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span></button>
			</div>
        </div>
    </section>

    
  <!--Best Section end-->
    <!-- New Section -->
<section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">NEW product</h2>
                    <h3 class="section-subheading text-muted">새로운 상품을 구경해 보세요</h3>
                </div>
            </div>
            <div class="row"> 
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div> 
                        </div> 
                        <center><img src="/cook/resources/imgs/newmain1.PNG" class="img-responsive"></center>
                    </a>
                    <div class="portfolio-caption">    
                        <h4>우마이봉 4종</h4>
                        <p class="text-muted">2,700\</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        
                         <center><img src="/cook/resources/imgs/newmain2.PNG" class="img-responsive" ></center>
                    </a>
                    <div class="portfolio-caption">
                        <h4>바이올란타 3종</h4>
                        <p class="text-muted">2,500\</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                         <center><img src="/cook/resources/imgs/newmain3.PNG" class="img-responsive" ></center>
                    </a>
                    <div class="portfolio-caption">
                        <h4>블랙포레스트 젤리 박스</h4>
                        <p class="text-muted">22,800\</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                         <center><img src="/cook/resources/imgs/newmain4.PNG" class="img-responsive" ></center>
                    </a>
                    <div class="portfolio-caption">
                        <h4>스위스미스 핫코코아 믹스컵</h4>
                        <p class="text-muted">1,000\</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                         <center><img src="/cook/resources/imgs/newmain5.PNG" class="img-responsive" ></center>
                    </a>
                    <div class="portfolio-caption">
                        <h4>피오렐라 초코 비스켓</h4>
                        <p class="text-muted">1,100\</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover"> 
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                         <center><img src="/cook/resources/imgs/newmain6.PNG" class="img-responsive" ></center>
                    </a> 
                    <div class="portfolio-caption">
                        <h4>마오얌 Bloxx</h4>
                        <p class="text-muted">14,500\</p>
                    </div>
                </div>
            </div>
            <div class="text-center">
            <button type="button" class="btn btn-primary" onclick="location.href='/cook/new'"> New Go <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span></button>
			</div>
        </div>
    </section>

 <!-- new detail -->

    <!-- detail 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
       <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>우마이봉 4종</h2>
                            <p class="item-intro text-muted">2,700\</p>
                             <hr class="featurette-divider">
							        <div class="featurette" id="about">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/b4d1.PNG">
							            <h2 class="featurette-heading">NO.1
							                <span class="text-muted">멘타이</span>
							            </h2>
							            <p class="lead">명태맛 우마이봉 매콤한 맛이 일품인 맛</p>
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Second Featurette -->
							        <div class="featurette" id="services">
							            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/b4d2.PNG">
							            <h2 class="featurette-heading">NO.2
							                <span class="text-muted">초코</span>
							            </h2>
							            <p class="lead">초코맛 우마이봉 바삭바삭함에 달콤함을 더해서 맛이 두배로~ </p>
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Third Featurette -->
							        <div class="featurette" id="contact">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/b4d3.PNG">
							            <h2 class="featurette-heading">NO.3
							                <span class="text-muted">치즈</span>
							            </h2>
							            <p class="lead">치즈향이 솔솔 맛과 풍미 모두 좋은 치즈맛</p>
							        </div>
							         <hr class="featurette-divider">
							         
							         <!-- four Featurette -->
							        <div class="featurette" id="services">
							            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/b4d4.PNG">
							            <h2 class="featurette-heading">NO.4
							                <span class="text-muted">콘포타지</span>
							            </h2>
							            <p class="lead">고소한 콘스프맛 </p>
							        </div>
							
							        <hr class="featurette-divider">
								</div>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--detail 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>바이올란타 3종</h2>
                            <p class="item-intro text-muted">2,500\</p>
								     <hr class="featurette-divider">
								        <!-- First Featurette -->
								        <div class="featurette" id="about">
								            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/b6d1.PNG">
								            <h2 class="featurette-heading">NO.1
								                <span class="text-muted">다크 코코아비스킷</span>
								            </h2>
								            <p class="lead">바이올란타 다크 코코아비스킷 필드 위드 헤이즐넛 크림 꽉찬 헤이즐넛 크림과 과자의 조화</p>
								        </div>
								
								        <hr class="featurette-divider">
								
								        <!-- Second Featurette -->
								        <div class="featurette" id="services">
								            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/b6d2.PNG">
								            <h2 class="featurette-heading">NO.2
								                <span class="text-muted">쿠키 위드 풀45 모카크림</span>
								            </h2>
								            <p class="lead">사브레보다는 조금 크고 초코 과자와 모카 크림맛의 조화</p>
								        </div>
								
								        <hr class="featurette-divider">
								
								        <!-- Third Featurette -->
								        <div class="featurette" id="contact">
								            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/b6d3.PNG">
								            <h2 class="featurette-heading">NO.3
								                <span class="text-muted">쿠키 위드 풀45 코코아크림</span>
								            </h2>
								            <p class="lead">풍부한 크림의 맛</p>
								        </div>
								
								        <hr class="featurette-divider">
								</div>
								    <!-- /.container -->
								    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- detail 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>블랙포레스트 젤리 박스</h2>
                            <p class="item-intro text-muted">22,800\</p>
                            	 <hr class="featurette-divider">
							
							        <!-- First Featurette -->
							        <div class="featurette" id="about">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/a2d1.png">
							            <h2 class="featurette-heading">NO.1
							                <span class="text-muted">블랙 포레스트</span>
							            </h2>
							            <p class="lead">상큼한 과일맛 젤리가 다양하게 그리고 대용량으로 ! </p>
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Second Featurette -->
							        <div class="featurette" id="services">
							            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/a2d2.png">
							            <h2 class="featurette-heading">NO.2
							                <span class="text-muted">후르츠 메들리</span>
							            </h2>
							            <p class="lead">사과, 체리, 포도, 레몬 4가지의 맛 </p>
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Third Featurette -->
							        <div class="featurette" id="contact">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/a2d3.png">
							            <h2 class="featurette-heading">NO.3
							                <span class="text-muted">과일모양</span>
							            </h2>
							            <p class="lead">다양하게 골라먹는 맛!</p>
							        </div>
							
							        <hr class="featurette-divider">
							</div>
							    <!-- /.container -->
							    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- detail 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>스위스미스 핫코코아 믹스컵</h2>
                            <p class="item-intro text-muted">1,000\</p>
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
							    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- detail 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>피오렐라 초코 비스켓</h2>
                            <p class="item-intro text-muted">1,100\</p>
                             <hr class="featurette-divider">
							        <!-- First Featurette -->
							        <div class="featurette" id="about">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/b5d1.PNG">
							            <h2 class="featurette-heading">NO.1
							                <span class="text-muted">초코 & 비스켓</span>
							            </h2>
							            <p class="lead">초코와 비스켓의 만남!</p> 
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Second Featurette -->
							        <div class="featurette" id="services">
							            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/b5d2.PNG">
							            <h2 class="featurette-heading">NO.2
							                <span class="text-muted">모양</span>
							            </h2>
							            <p class="lead">고급스러운 자전거 모양의 과자!</p>
							        </div>
							
							        <hr class="featurette-divider">
							
							        <!-- Third Featurette -->
							        <div class="featurette" id="contact">
							            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/b5d3.PNG">
							            <h2 class="featurette-heading">NO.3
							                <span class="text-muted">두가지 맛</span>
							            </h2>
							            <p class="lead">초코와 비스켓이 한쪽 씩! 함께 먹으면 더욱 맛있어요</p>
							        </div>
							
							        <hr class="featurette-divider">
							</div>
							    <!-- /.container -->
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- detail 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>마오얌 Bloxx</h2>
                            <p class="item-intro text-muted">14,500\</p>
                            <hr class="featurette-divider">
						        <!-- First Featurette -->
						        <div class="featurette" id="about">
						            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1" src="/cook/resources/imgs/a1d1.png">
						            <h2 class="featurette-heading">NO.1
						                <span class="text-muted">마오암 사우어</span>
						            </h2>
						            <p class="lead">하리보 마이쭈맛!</p>
						        </div>
						
						        <hr class="featurette-divider">
						
						        <!-- Second Featurette -->
						        <div class="featurette" id="services">
						            <img class="featurette-image img-circle img-responsive pull-left" id="curcleb1"src="/cook/resources/imgs/a1d2.png">
						            <h2 class="featurette-heading">NO.2
						                <span class="text-muted">한통에 50개입!</span>
						            </h2>
						            <p class="lead">초특급 인기상품 입니다. 마오암 사우어와 함께 인기 좋습니다.</p>
						        </div>
						
						        <hr class="featurette-divider">
						
						        <!-- Third Featurette -->
						        <div class="featurette" id="contact">
						            <img class="featurette-image img-circle img-responsive pull-right" id="curcleb1"src="/cook/resources/imgs/a1d3.png">
						            <h2 class="featurette-heading">NO.3
						                <span class="text-muted">5종류 5낱개씩!</span>
						            </h2>
						            <p class="lead">어린이 어른용 간식으로 좋습니다.</p>
						        </div>
						
						        <hr class="featurette-divider">
						</div>
						    <!-- /.container -->
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close cookie</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    
  <!-- New Section end -->
    <!-- Notice Section -->
   <section id="notice" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Notice</h2>
                    <h3 class="section-subheading text-muted">공지사항을 확인하세요</h3>
                </div>
            </div>
            <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table class="table table-striped">
				<tr>
					<th class="bno">No</th>
					<th class="btit">Title</th>
					<th class="btime">작성일</th>
					<th class="bname">작성자</th>
					<th class="bcount">조회수</th> 
				</tr>
				<tr class="rownum">
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr class="rownum">
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr class="rownum">
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
				<tr class="rownum">
					<td class="bno">10</td>
					<td class="btit">더미타이틀</td>
					<td class="btime">더미 시간</td>
					<td class="bname">더미 작성자</td>
					<td class="bcount">5</td>
				</tr>
			</table>
			</div>
			<div class="col-md-1"></div>
            </div>
            <br/>
            <div class="text-center">
             <button type="button" class="btn btn-primary" onclick="location.href='/cook/notice'">Notice Go <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span></button>
     	   </div>
        </div>
    </section>
    <!-- Notice Section end -->
    <!-- FAQ Section -->
    <section id="faq">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">FAQ</h2>
                    <h3 class="section-subheading text-muted">가장많이 묻는 질문</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">장바구니에 담아놓았던 상품이 사라졌어요.</h4>
                    <p class="text-muted">비로그인 상태에서 장바구니를 담는것은 창을 닫으면 삭제되는 일시적인 것으로 로그인 후 사용하시면 추후 상품확인이 가능합니다</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">제가 원하는 상품을 어떻게 찾나요?</h4>
                    <p class="text-muted">All-전체상품보기의 검색창에 원하는 상품의 이름이나 종류를 선택한 후 상품의 키워드를 검색하여 원하는 상품을 찾을 수 있습니다.</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">개인정보수정은 어디에서 가능한가요?</h4>
                    <p class="text-muted">로그인 이후 상단의 마이페이지-나의 설정에서 비밀번호,휴대폰번호,이메일 등 개인정보를 자유롭게 수정할 수 있습니다. </p>
                </div>
            </div>
            <br/>
            <div class="text-center">
            <button type="button" class="btn btn-primary" onclick="location.href='/cook/qna'">FAQ Go <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span></button>
			</div>
        </div>
    </section>
 <!-- FAQ Section end-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2014</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

   

    <!-- jQuery -->
    <script src="/cook/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/cook/resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="/cook/resources/js/classie.js"></script>
    <script src="/cook/resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/cook/resources/js/jqBootstrapValidation.js"></script>
    <script src="/cook/resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/cook/resources/js/agency.js"></script>

</body>

</html>
