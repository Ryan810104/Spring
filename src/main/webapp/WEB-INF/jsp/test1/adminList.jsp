<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- highcharts-CSS -->
<link href="/resources/highcharts/code/css/highcharts.css"
	rel="stylesheet">

</head>
<body>
	<!-- wrapper -->
	<div class="wrapper" style="background-color: #e0e0e0;">
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/jsp/fragment/admin-sidebar.jsp"></jsp:include>
		<!-- start context -->
		<div class="container" style="margin-left: 20px; width: 1200px;">
			<nav class="navbar navbar-light border-bottom"
				style="background-color: #e0e0e0; width: 1200px">
				<!-- 					<nav class="navbar navbar-light" style="background-color: #e3f2fd;"> -->
				<!-- 				OO -->
				<!-- 				<a href="/admin/vip/test2">sdsds</a> -->
				<span class="navbar-brand-center mb-5 h1" style="background-color:#7386D5; width:1300px;">
				<div class="row">
				<div class="col-4"></div>
				<div class="col-4 text-center"><h3 class=" mb-3 font-italic border-bottom">遊戲趨勢報表</h3></div>
				<div class="col-4"></div>
				</div>
				
      
      
				</span>
				
			</nav>


			<article class="content moe" style="width:1200px;background-color: #e0e0e0;">
				<!-- 				<div class="container" style="width: 1400px;"> -->
				<div class="row">
					<div class="col-sm-4">
						<!-- 遊戲A輸贏趨勢 -->
						<div id="tt1" style="width: 400px; height: 300px; margin: 0 auto;"></div>


					</div>
					<div class="col-sm-4">


						<!-- 遊戲B輸贏趨勢 -->
						<div id="cc1" style="width: 400px; height: 300px; margin: 0 auto;"></div>


					</div>
					<div class="col-sm-4">


						<!--遊戲C輸贏趨勢 -->
						<div id="ee1" style="width: 400px; height: 300px; margin: 0 auto;"></div>


					</div>
				</div>
				<!-- 				</div> -->
			</article>



			<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
			<!-- Your data ends here -->
			<!-- End of context -->
		</div>
		<!-- End of wrapper -->
	</div>
	<script>
		var json = {};
		var xx = new Array();
		var data1 = new Array();
		$(document).ready(function() {

			$.ajax({
				url : "/admin/memberBeans/gameatrend",
				type : "POST",
				success : function(data) {
					for (i in data) {
						xx.push(data[i][0]);
						data1.push(data[i][1]);
					}
					// 						alert(xx);
					// 						alert(data1);

					var chart = {
						type : 'area'
					};
					var title = {
						text : 'A遊戲走勢圖'
					};
					var xAxis = {
						categories : xx
					};
					var credits = {
						enabled : false
					};
					var series = [ {
						name : 'a',
						data : data1
					} ];

					json.chart = chart;
					json.title = title;
					json.xAxis = xAxis;
					json.credits = credits;
					json.series = series;
					$("#tt1").highcharts(json);
				}
			});
		});
	</script>

	<script>
		var json = {};
		var xx1 = new Array();
		var data2 = new Array();
		$(document).ready(function() {

			$.ajax({
				url : "/admin/memberBeans/gamebtrend",
				type : "POST",
				success : function(data) {
					for (i in data) {
						xx1.push(data[i][0]);
						data2.push(data[i][1]);
					}
					// 						alert(xx1);
					// 						alert(data2);

					var chart = {
						type : 'area'
					};
					var title = {
						text : 'B遊戲走勢圖'
					};
					var xAxis = {
						categories : xx1
					};
					var credits = {
						enabled : false
					};
					var series = [ {
						name : 'b',
						data : data2
					} ];

					json.chart = chart;
					json.title = title;
					json.xAxis = xAxis;
					json.credits = credits;
					json.series = series;
					$("#cc1").highcharts(json);
				}
			});
		});
	</script>

	<script>
		var json = {};
		var xx2 = new Array();
		var data3 = new Array();
		$(document).ready(function() {

			$.ajax({
				url : "/admin/memberBeans/gamectrend",
				type : "POST",
				success : function(data) {
					for (i in data) {
						xx2.push(data[i][0]);
						data3.push(data[i][1]);
					}
					// 						alert(xx2);
					// 						alert(data3);

					var chart = {
						type : 'area'
					};
					var title = {
						text : 'C遊戲走勢圖'
					};
					var xAxis = {
						categories : xx2
					};
					var credits = {
						enabled : false
					};
					var series = [ {
						name : 'c',
						data : data3
					} ];

					json.chart = chart;
					json.title = title;
					json.xAxis = xAxis;
					json.credits = credits;
					json.series = series;
					$("#ee1").highcharts(json);
				}
			});
		});
	</script>

	<!-- jquery include ajax -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- 	bootstrap 4.3.1 -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<!-- highcharts -->
	<script src="/resources/highcharts/code/highcharts.js"></script>
	<!-- 		<script src="https://code.highcharts.com/modules/data.js"></script> -->
	<script src="/resources/highcharts/code/modules/data.js"></script>
	<!-- 		<script src="https://code.highcharts.com/modules/drilldown.js"></script> -->
	<script src="/resources/highcharts/code/modules/drilldown.js"></script>
	<!-- 		<script src="http://code.highcharts.com/highcharts-3d.js"></script> -->
	<script src="/resources/highcharts/code/highcharts-3d.js"></script>
	<script src="https://code.highcharts.com/modules/cylinder.js"></script>
	<script src="/resources/highcharts/code/modules/exporting.js"></script>
	<script src="/resources/highcharts/code/modules/export-data.js"></script>

	<!-- highcarts -->





</body>
</html>