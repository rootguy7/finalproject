<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 페이지</title>
<link rel="stylesheet" href="/cook/resources/css/base-admin-responsive.css">
<link rel="stylesheet" href="/cook/resources/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/cook/resources/css/style.css">
<link rel="stylesheet" href="/cook/resources/css/barchart_1.css">
<link rel="stylesheet" href="/cook/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
	*{
		margin: 0px;
		padding: 0px;
	}
	.container-fluid{
		margin-top:50px;
	}
	.contents{
		margin-top: 20px;
		width: 280px;
	}
	.widgetnum{
		margin-left: -15px;
		text-decoration: none;
	}
	h3{
		margin-top: -12px;
	}
	.widget-content, .widget-header{
		text-align: center;
	}
	.number{
		font-size: 50px;
	}
	.number1{	
		color: #3162C7;
	}
	.number1:hover{
		color:#8C8C8C;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/cook/resources/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="header2.jsp" %>

<div class="container-fluid"><br/>
	<div class="row">
		<div class="col-md-2 content"></div>
		<div class="col-md-8 content">
		<!-- contents 해야할일 -->
		<div class="span3 contents">
      		<div class="widget widgetnum">
			    <div class="widget-header"><h3>미입금</h3></div>
      			<div class="widget-content">
			      	<span class="number"><a class="number1" href="../cook/admin/notpaid">3</a></span><span>건</span>	
	      		</div> 
	      	</div>
      	</div>
		<div class="span3 contents">
      		<div class="widget widgetnum">
	      		<div class="widget-header"><h3>미배송</h3></div>
      			<div class="widget-content">
		      		<span class="number"><a class="number1"  href="../cook/admin/notdelivery">7</a></span><span>건</span>	
		      	</div>
	      	</div>
     	</div>
		<div class="span3 contents">
      		<div class="widget widgetnum">
	      		<div class="widget-header"><h3>미답변</h3></div>
      			<div class="widget-content">
		      		<span class="number"><a class="number1"  href="../cook/admin/notanswer"">4</a></span><span>건</span>	
		      	</div>
	      	</div>
      	</div>
		<div class="col-md-11">
			<div class="widget">
	            <div class="widget-header">
	                <i class="icon-bar-chart"></i>
	                <h3>월별 판매 그래프</h3>
	            </div>
	            <div class="widget-content">
	                <%-- <canvas id="bar-chart" class="chart-holder" width="800" height="250"></canvas> --%>
	                <div id="bar-example" style="height: 250px;"></div>
	            </div>
	        </div>
		</div>
		</div>
		<div class="col-md-2 content"></div>
	</div>
</div>
<%@include file="footer.jsp" %>
<script src="/cook/resources/js/base.js"></script>
<script src="/cook/resources/js/chart.min.js"></script>
<script src="/cook/resources/js/excanvas.min.js"></script>
<script src="/cook/resources/js/faq.js"></script>
<script src="/cook/resources/js/bar.js"></script>
<script type="text/javascript">
/* var barChartData = {
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    datasets: [
		{	
		    fillColor: "rgba(244,235,114,0.5)",
		    strokeColor: "rgba(220,220,220,1)",
		    data: [65, 59, 90, 81, 56, 55, 40, 33, 55, 46, 16, 66]
		},
		{
		    fillColor: "rgba(71,48,32,0.5)",
		    strokeColor: "rgba(101,77,78,0.5)",
		    data: [28, 48, 40, 19, 96, 27, 100, 33, 55, 46, 16, 66]
		}
	]

}
var myLine = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData); */
$.getScript('http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js',function(){
	$.getScript('http://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.0/morris.min.js',function(){
		Morris.Bar({
	         element: 'bar-example',
	         data: [
	            {y: 'Jan 2016', a: 10, b: 100},
	            {y: 'Feb 2016', a: 75,  b: 65},
	            {y: 'Mar 2016', a: 50,  b: 40},
	            {y: 'Apr 2016', a: 75,  b: 65},
	            {y: 'May 2016', a: 50,  b: 40},
	            {y: 'Jun 2016', a: 75,  b: 65},
	            {y: 'July 2016', a: 75,  b: 60},
	            {y: 'Aug 2016', a: 80,  b: 65},
	            {y: 'Sep 2016', a: 40,  b: 70},
	            {y: 'Oct 2016', a: 15,  b: 55},
	            {y: 'Nov 2016', a: 30,  b: 80},
	            {y: 'Dec 2016', a: 25,  b: 65}
	         ],
	         xkey: 'y',
	         ykeys: ['a', 'b'],
	         labels: ['2015년', '2016년'],
	         barColors: ['#3162C7','#8C8C8C']
		});
	});
});
	 
</script>
</body>
</html>