<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="/cook/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<body id="page-top" class="index">


  <!-- LOGIN 창 IMPORT -->	
	<%@ include file="login/login.jsp" %>

    <!-- Navigation -->
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
                <a class="navbar-brand page-scroll" href="../admin">Dalcom Cook IN</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" id="toplist" href="/cook/admin/info">고객정보</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/admin/list">전체상품</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/admin/order">주문확인</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/cook/admin/deposit">입금확인</a>
                    </li>
                    <li>
                        <a class="page-scroll"  href="/cook/admin/delivery">배송확인</a>
                    </li>
                    <li>
                        <a class="page-scroll"  href="/cook/admin/notice">공지사항</a>
                    </li>
                    <li>
                        <a class="page-scroll"  href="/cook/admin/qna">질의응답</a>
                    </li>
                </ul>
                
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->

</body>
</html>