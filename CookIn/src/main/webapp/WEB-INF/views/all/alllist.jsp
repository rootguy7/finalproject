<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
			<br/><br/><br/>
            <div class="col-md-1"> <!-- 장바구니 -->
							 <div id="right_section">  
							     <div><a href="#"><img src="/cook/resources/imgs/side1.PNG" class="jangbaguni"></a></div>
							     <div><a href="#"><img src="/cook/resources/imgs/side2.PNG" class="jangbaguni"></a></div>
						</div>		
            </div>

            <div class="col-md-10"> <!-- list -->
			<br/>
					<h3>전체상품</h3>
					<hr/>
					신상품 | 상품명 | 낮은가격 | 높은가격 | 인기상품 | 조회수
					<hr/>
                <div class="row">
                
                <c:forEach items="${pList }" var="prodVo">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <a href="/cook/pdtdetail?serial_num=${prodVo.serial_num }"><img src="${prodVo.reppicture}${prodVo.imgname }" ></a>
                            <div class="caption">
                                <h4 class="pull-right"><fmt:formatNumber value="${prodVo.price }" pattern="#,###" />￦</h4>
                                <h4><a href="/cook/pdtdetail?serial_num=${prodVo.serial_num }">
                                <c:choose>
                                	<c:when test="${fn:length(prodVo.name)>10 }">
                                		<c:out value="${fn:substring(prodVo.name,0,12)}"/>...
                               		</c:when>
                               		<c:otherwise>
            							<c:out value="${prodVo.name }"/>
           							</c:otherwise> 
                                </c:choose>
                                </a>
                                </h4>
                                <p>${prodVo.mainexp }</p>
                            </div>
                        </div>
                    </div>
               	</c:forEach>	                    
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