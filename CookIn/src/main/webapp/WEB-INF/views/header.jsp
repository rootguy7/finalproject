<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.btn-default{
		border:none;
		background: none;
		margin-top: 8px;
		box-shadow: none;
		color: gray;
	}
</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body> 
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
                        <a class="page-scroll" href="/cook/all">ALL</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/best">BEST</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/new">NEW</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/notice">NOTICE</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/qna">FAQ</a>
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
                    	<!--수정중  -->
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
						    <span class="glyphicon glyphicon-user" aria-hidden="true"><a class="page-scroll" href="/cook/mypage" ></a></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Action</a></li>
						    <li><a href="#">Another action</a></li>
						    <li><a href="#">Something else here</a></li>
						    <li><a href="#">Separated link</a></li>
						  </ul>
                    <!--수정중  -->
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

</body>
</html>