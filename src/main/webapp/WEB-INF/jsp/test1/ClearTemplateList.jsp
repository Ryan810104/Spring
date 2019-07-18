<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link href="/resources/css/signin.css" rel="stylesheet">


<!-- highcharts-CSS -->
<link href="/resources/highcharts/code/css/highcharts.css" rel="stylesheet">

<!-- echart -->
<!-- 		<script src="echarts.min.js"></script> -->
<!-- 		<script src='/resources/echarts-stat-master/dist/ecStat.js'></script> -->


<style>
.pagination {
	font-size: 80%;
}

.pagination a {
	text-decoration: none;
	border: solid 1px #AAE;
	color: #15B;
}

.pagination a, .pagination span {
	display: block;
	float: left;
	padding: 0.3em 0.5em;
	margin-right: 5px;
	margin-bottom: 5px;
}

.pagination .current {
	background: #26B;
	color: #fff;
	border: solid 1px #AAE;
}

.pagination .current.prev, .pagination .current.next {
	color: #999;
	border-color: #999;
	background: #fff;
}
</style>

</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>


	<article class="content moe">


		<h1>排行榜</h1>


		<!-- 選擇所要的圖表 -->
		<form class="form-signin" name="form1" id="form1">
			<div class="form-group row">
				<div class="col-sm-11">
					<div class="btn-group">
						<button class="btn btn-lg btn-primary" type="button"
							onclick="getwinrate();">遊戲獲勝比率</button>
						<button class="btn btn-lg btn-primary" type="button"
							onclick="getbonusrank();">獲勝獎金排名</button>
						<button class="btn btn-lg btn-primary" type="button"
							onclick="getplayerwinrate();">玩家獲勝率排名</button>
						<button class="btn btn-lg btn-primary" type="button"
							onclick="getchargerank();">(課長)充值排名</button>
					</div>
				</div>
			</div>
		</form>

			<div class="row">
			<div class="col-sm-6">
			<!--遊戲獲勝率對比 -->
		<div id="sd5"
			style="width: 600px; height: 400px; margin: 0 auto; display: "></div>

		<!-- 玩家贏得獎金排行 -->
		<div id="sd4-1"
			style="width: 600px; height: 400px; margin: 0 auto; display: "></div>
		
			</div>
			<div class="col-sm-6">
			<!--各玩家獲勝率百分比 -->
		<div id="dd"
			style="width: 600px; height: 400px; margin: 0 auto; display: "></div>

		<!-- 課長排名 -->
		<div id="sd6"
			style="width: 600px; height: 400px; margin: 0 auto; display: "></div>
			
			</div>
			</div>

		

		

	<!-- 遊戲A輸贏趨勢 -->
		<div id="tt" style="width: 900px; height: 600px; margin: 0 auto;"></div>
	<!-- 遊戲B輸贏趨勢 -->
		<div id="cc" style="width: 900px; height: 600px; margin: 0 auto;"></div>
	<!--遊戲C輸贏趨勢 -->
		<div id="ee" style="width: 900px; height: 600px; margin: 0 auto;"></div>


<!-- 		Echarts-遊戲a輸贏趨勢  -->
<!-- 		<div id="main" style="width: 600px; height: 400px;"></div> -->


		<!-- 		使用Ajax印出各個view的資料 -->
		<!-- 		<div class="table-responsive-xl"> -->
		<!-- 			<form action="" id="form1"> -->
		<!-- 				<table id="showdata" class="table"> -->

		<!-- 				</table> -->

		<!-- 			</form> -->
		<!-- 		</div> -->

		<!-- 		<div class="table-responsive-xl"> -->
		<!-- 			<form action="" id="form2"> -->
		<!-- 				<table id="showdata1" class="table"> -->

		<!-- 				</table> -->

		<!-- 			</form> -->
		<!-- 		</div> -->




		<!-- 		<div class="table-responsive-xl"> -->
		<!-- 			<form action="" id="form3"> -->
		<!-- 				<table id="sd2" class="table"> -->

		<!-- 				</table> -->

		<!-- 			</form> -->
		<!-- 		</div> -->
		<!-- 		<div class="table-responsive-xl"> -->
		<!-- 			<form action="" id="form4"> -->
		<!-- 				<table id="sd3" class="table"> -->

		<!-- 				</table> -->

		<!-- 			</form> -->
		<!-- 		</div> -->
		<!-- 		<div class="table-responsive-xl"> -->
		<!-- 			<form action="" id="form5"> -->
		<!-- 				<table id="sd4" class="table"> -->

		<!-- 				</table> -->

		<!-- 			</form> -->
		<!-- 		</div> -->


		<!-- 		<div id="sd5"></div> -->


		<!-- 按鍵顯示各個圖表 -->
		<script>
			function getwinrate() {
				document.getElementById("sd5").style.display = "block";
				document.getElementById("sd4-1").style.display = "none";
				document.getElementById("dd").style.display = "none";
				document.getElementById("sd6").style.display = "none";
			}

			function getbonusrank() {
				document.getElementById("sd4-1").style.display = "block";
				document.getElementById("sd5").style.display = "none";
				document.getElementById("dd").style.display = "none";
				document.getElementById("sd6").style.display = "none";
			}

			function getplayerwinrate() {
				document.getElementById("dd").style.display = "block";
				document.getElementById("sd4-1").style.display = "none";
				document.getElementById("sd5").style.display = "none";
				document.getElementById("sd6").style.display = "none";
			}

			function getchargerank() {
				document.getElementById("sd6").style.display = "block";
				document.getElementById("dd").style.display = "none";
				document.getElementById("sd4-1").style.display = "none";
				document.getElementById("sd5").style.display = "none";
			}
		</script>
		<script src='/resources/echarts-stat-master/echart.js'></script>
		<script src='/resources/echarts-stat-master/dist/ecStat.js'></script>
		<script>
// 			$(document).ready(function(){$.ajax({
// 											url : "/admin/memberBeans/gameatrend",
// 											type : "POST",
// 											success : function(data) {
// 												var data01 = [ [ 1, 123 ],
// 														[ 2, 254 ], [ 3, 111 ]

// 												]
// 												var myChart = echarts
// 														.init($("#main"));
// 												var myRegression = ecStat
// 														.regression(
// 																'exponential',
// 																data01);

// 												myRegression.points
// 														.sort(function(a, b) {
// 															return a[0] - b[0];
// 														});
// 												option = {
// 													title : {
// 														text : '1981 - 1998 gross domestic product GDP (trillion yuan)',
// 														subtext : 'By ecStat.regression',
// 														sublink : 'https://github.com/ecomfe/echarts-stat',
// 														left : 'center'
// 													},
// 													tooltip : {
// 														trigger : 'axis',
// 														axisPointer : {
// 															type : 'cross'
// 														}
// 													},
// 													xAxis : {
// 														type : 'value',
// 														splitLine : {
// 															lineStyle : {
// 																type : 'dashed'
// 															}
// 														},
// 														splitNumber : 20
// 													},
// 													yAxis : {
// 														type : 'value',
// 														splitLine : {
// 															lineStyle : {
// 																type : 'dashed'
// 															}
// 														}
// 													},
// 													series : [
// 															{
// 																name : 'scatter',
// 																type : 'scatter',
// 																label : {
// 																	emphasis : {
// 																		show : true,
// 																		position : 'left',
// 																		textStyle : {
// 																			color : 'blue',
// 																			fontSize : 16
// 																		}
// 																	}
// 																},
// 																data : data01
// 															},
// 															{
// 																name : 'line',
// 																type : 'line',
// 																showSymbol : false,
// 																smooth : true,
// 																data : myRegression.points,
// 																markPoint : {
// 																	itemStyle : {
// 																		normal : {
// 																			color : 'transparent'
// 																		}
// 																	},
// 																	label : {
// 																		normal : {
// 																			show : true,
// 																			position : 'left',
// 																			formatter : myRegression.expression,
// 																			textStyle : {
// 																				color : '#333',
// 																				fontSize : 14
// 																			}
// 																		}
// 																	},
// 																	data : [ {
// 																		coord : myRegression.points[myRegression.points.length - 1]
// 																	} ]
// 																}
// 															} ]
// 												};

// 												myChart.setOption(option);
// 											}
// 										});
// 							});
		</script>
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
						var series = [
						{
							name : 'a',
							data : data1
						} ];

						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.credits = credits;
						json.series = series;
						$("#tt").highcharts(json);
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
						var series = [
						{
							name : 'b',
							data : data2
						} ];

						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.credits = credits;
						json.series = series;
						$("#cc").highcharts(json);
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
						var series = [
						{
							name : 'c',
							data : data3
						} ];

						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.credits = credits;
						json.series = series;
						$("#ee").highcharts(json);
					}
				});
			});
		</script>



		<!-- highcharts玩家總獲勝獎金排名 -->
		<script type="text/javascript">
			var str = new Array();
			var sti = new Array();
			var json = {};
			$(document).ready(function() {

				$.ajax({

					url : "/admin/memberBeans/mostbouns",
					type : "POST",
					success : function(data) {

						for (var i = 0; i < data.length; i++) {
							str.push(data[i][0]);
							sti.push(data[i][1]);
						}
						$("#id").append(str);
						$("#id1").append(sti);
// 						alert(str);
// 						alert(sti);

						var chart = {
							renderTo : 'container',
// 							type : 'cylinder',
							type : 'column',
							margin : 75,
							options3d : {
								enabled : true,
								alpha : 10,
								beta : 20,
								depth : 25,
								viewDistance : 60
							}
						};

						// 						var plotOptions = {
						// 								cylinder : {
						// 								depth : 25,
						// 								colorByPoint : true
						// 							}
						// 						};

						var plotOptions = {
							series : {
								depth : 25,
								colorByPoint : true
							}
						};
						var title = {
							text : "玩家勝利獎金排名"
						};
						var xAxis = {
							categories : str
						};
						var yAxis = {
							// 							min : 0,
							title : {
								text : null
							}
						};
						var series = [ {
							name : "獎金",
							data : sti,
							showInLegend : false
						} ];
						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.yAxis = yAxis;
						json.plotOptions = plotOptions;
						json.series = series;

						$("#sd4-1").highcharts(json);
						// 					};

					}

				});

			});
		</script>


		<!-- highcharts遊戲獲勝率對比 -->
		<script type="text/javascript">
			var sta = new Array();
			var stb = new Array();
			// 			var sta = new Array();
			var json = {};
			$(document).ready(function() {

				$.ajax({

					url : "/admin/memberBeans/winrate",
					type : "POST",
					success : function(data) {

						for (var i = 0; i < data.length; i++) {
							sta.push(data[i][0]);
							stb.push(data[i][1]).toFixed(2);
							// 							sat.push(data[i][2]);
						}
						// 						$("#id").append(str);
						// 						$("#id1").append(sti);
// 						alert(sta);
// 						alert(stb);
						// 						alert(sta);

						var chart = {
							renderTo : 'container',
							// 							type : 'cylinder',
							type : 'column',
							margin : 75,
							options3d : {
								enabled : true,
								alpha : 10,
								beta : 20,
								depth : 25,
								viewDistance : 60
							}
						};

						var plotOptions = {
							column : {
								depth : 25,
								colorByPoint : true
							}
						};

						// 						var plotOptions= {
						// 						    series: {
						// 						      depth: 25,
						// 						      colorByPoint: true
						// 						    }
						// 						  };
						var title = {
							text : "各遊戲獲勝率"
						};
						var xAxis = {
							categories : sta
						};
						var yAxis = {
							// 							min : 0,
							title : {
								text : null
							}
						};
						var series = [ {
							name : "獲勝率",
							data : stb,
							// 							 name: '獲勝率',
							showInLegend : false
						} ];
						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.yAxis = yAxis;
						json.plotOptions = plotOptions;
						json.series = series;

						$("#sd5").highcharts(json);
						// 					};

					}

				});

			});
		</script>
		<!-- highcharts課長排名 -->
		<script type="text/javascript">
			var stc = new Array();
			var std = new Array();
			var json = {};
			$(document).ready(function() {

				$.ajax({

					url : "/admin/memberBeans/top3cash",
					type : "POST",
					success : function(data) {

						for (var i = 0; i < data.length; i++) {
							stc.push(data[i][0]);
							std.push(data[i][1]);
							// 							sat.push(data[i][2]);
						}

// 						alert(stc);
// 						alert(std);
						// 						alert(sta);

						var chart = {
							renderTo : 'container',
							// 							type : 'cylinder',
							type : 'column',
							margin : 75,
							options3d : {
								enabled : true,
								alpha : 10,
								beta : 20,
								depth : 25,
								viewDistance : 60
							}
						};

						var plotOptions = {
							column : {
								depth : 25,
								colorByPoint : true
							}
						};

						// 						var plotOptions= {
						// 						    series: {
						// 						      depth: 25,
						// 						      colorByPoint: true
						// 						    }
						// 						  };
						var title = {
							text : "課長排名"
						};
						var xAxis = {
							categories : stc
						};
						var yAxis = {
							// 							min : 0,
							title : {
								text : null
							}
						};
						var series = [ {
							name : "金額",
							data : std,
							// 							 name: '金額',
							showInLegend : false
						} ];
						json.chart = chart;
						json.title = title;
						json.xAxis = xAxis;
						json.yAxis = yAxis;
						json.plotOptions = plotOptions;
						json.series = series;

						$("#sd6").highcharts(json);
					}

				});

			});
		</script>


		<script>
			$
					.ajax({
						// 			<thead><tr><th>moneyRecordNum</th><th>moneyRecordMemberid</th><th>moneyRecordTime</th><th>moneyRecordcash</th><th>moneyRecordChip</th></thead>
						// 			 "/admin/test/query?id1="+getUrlParameter('id1')+"&id2="+getUrlParameter('id2'),
						url : "/admin/memberBeans/top3cash",
						type : "POST",
						success : function(data) {
							// 							var datalength = data.length;
							// 							for(var i = 0 ; i < datalength ; i++ ){
							// 								console.log(data[i][0])
							// 								console.log(data[i][1])
							// 							}
							var str = "";
							$("#showdata")
									.append(
											"<thead><tr><th>moneyRecordMemberNum</th><th>moneyRecordpoint</th><tr></thead>");
							str += "<tbody>";
							$
									.each(
											data,
											function(key, value) {
												str += "<tr>";
												for (i in value) {
													str += "<td>" + value[i]
															+ "</td>";
													id = Object.values(value)[0];
												}
												str += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='edit(this)'>edit</button></td>";
												str += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='del(this)'>delete</button></td>";
												str += "</tr>";
											})
							str += "</tbody>";
							$("#showdata").append(str);

						}
					});
			function edit(Object) {
				window.location.href = "/admin/test/index?id=" + Object.id;
			}
			function del(Object) {
				$(location).attr('href', '/admin/test/index?id=' + Object.id);
			}
			function send() {
				$(location).attr('href', '/admin/test/query');
			}
		</script>

		<!-- 遊戲至今玩家勝利次數排行榜 -->
		<script>
			$
					.ajax({
						// 			<thead><tr><th>moneyRecordNum</th><th>moneyRecordMemberid</th><th>moneyRecordTime</th><th>moneyRecordcash</th><th>moneyRecordChip</th></thead>
						// 			 "/admin/test/query?id1="+getUrlParameter('id1')+"&id2="+getUrlParameter('id2'),
						url : "/admin/memberBeans/topwinner",
						type : "POST",
						success : function(data) {
							// 							var datalength = data.length;
							// 							for(var i = 0 ; i < datalength ; i++ ){
							// 								console.log(data[i][0])
							// 								console.log(data[i][1])
							// 							}
							var str1 = "";
							$("#showdata1")
									.append(
											"<thead><tr><th>chipMemberNum</th><th>chipType</th><th>total_win</th><tr></thead>");
							str1 += "<tbody>";
							$
									.each(
											data,
											function(key, value) {
												str1 += "<tr>";
												for (i in value) {
													str1 += "<td>" + value[i]
															+ "</td>";
													id = Object.values(value)[0];
												}
												str1 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='edit(this)'>edit</button></td>";
												str1 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='del(this)'>delete</button></td>";
												str1 += "</tr>";
											})
							str1 += "</tbody>";
							$("#showdata1").append(str1);

						}
					});
			function edit(Object) {
				window.location.href = "/admin/test/index?id=" + Object.id;
			}
			function del(Object) {
				$(location).attr('href', '/admin/test/index?id=' + Object.id);
			}
			function send() {
				$(location).attr('href', '/admin/test/query');
			}
		</script>


		<!-- highcharts玩家勝場比分比 -->
		<script>
			var json = {};
			$(document).ready(function(){$.ajax({

											url : "/admin/memberBeans/totalwin",
											type : "POST",
											success : function(data) {

												var chart = {
													type : 'pie',
													options3d : {
														enabled : true,
														alpha : 45,
														beta : 0
													}
												};
												var title = {
													text : "玩家勝場百分比"
												};

												var tooltip = {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												};

												var plotOptions = {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														depth : 35,
														dataLabels : {
															enabled : true,
															format : '{point.name}'
														}
													}
												};

												var series = [ {
													type : 'pie',
													name : '配送量',
													data : data
												} ];

												json.chart = chart;
												json.tooltip = tooltip;
												json.title = title;
												json.plotOptions = plotOptions;
												json.series = series;

												$("#dd").highcharts(json);

											}

										});

							});
		</script>





		 		<!--玩家累積金額排行榜-->
		
		<script>
			$.ajax({url : "/admin/memberBeans/therichest",
						type : "POST",
						success : function(data) {
							var str2 = "";
							$("#sd2")
									.append(
											"<thead><tr><th>chipMemberNum</th><th>summary</th><tr></thead>");
							str2 += "<tbody>";
							$
									.each(
											data,
											function(key, value) {
												str2 += "<tr>";
												for (i in value) {
													str2 += "<td>" + value[i]
															+ "</td>";
													id = Object.values(value)[0];
												}
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='edit(this)'>edit</button></td>";
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='del(this)'>delete</button></td>";
												str2 += "</tr>";
											})
							str2 += "</tbody>";
							$("#sd2").append(str2);

						}
					});
			function edit(Object) {
				window.location.href = "/admin/test/index?id=" + Object.id;
			}
			function del(Object) {
				$(location).attr('href', '/admin/test/index?id=' + Object.id);
			}
			function send() {
			}
		</script>


		<!-- 		遊戲A各玩家遊玩次數排行榜 -->
		<script type="text/javascript">
			$
					.ajax({
						url : "/admin/memberBeans/gamea",
						type : "POST",
						success : function(data) {
							var str2 = "";
							$("#sd3")
									.append(
											"<thead><tr><th>chipMemberNum</th><th>chipType</th><th>totalRound</th><tr></thead>");
							str2 += "<tbody>";
							$
									.each(
											data,
											function(key, value) {
												str2 += "<tr>";
												for (i in value) {
													str2 += "<td>" + value[i]
															+ "</td>";
													id = Object.values(value)[0];
												}
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='edit(this)'>edit</button></td>";
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='del(this)'>delete</button></td>";
												str2 += "</tr>";
											})
							str2 += "</tbody>";
							$("#sd3").append(str2);

						}
					});
			function edit(Object) {
				window.location.href = "/admin/test/index?id=" + Object.id;
			}
			function del(Object) {
				$(location).attr('href', '/admin/test/index?id=' + Object.id);
			}
			function send() {
				$(location).attr('href', '/admin/test/query');
			}
		</script>


		<script>
			$
					.ajax({
						url : "/admin/memberBeans/mostbouns",
						type : "POST",
						success : function(data) {
							var str2 = "";
							$("#sd4")
									.append(
											"<thead><tr><th>chipMemberNum</th><th>TotalBouns</th><th>win</th><tr></thead>");
							str2 += "<tbody>";
							$
									.each(
											data,
											function(key, value) {
												str2 += "<tr>";
												for (i in value) {
													str2 += "<td>" + value[i]
															+ "</td>";
													id = Object.values(value)[0];
												}
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='edit(this)'>edit</button></td>";
												str2 += "<td><button id="
														+ "'"
														+ id
														+ "'"
														+ "type='button' onclick='del(this)'>delete</button></td>";
												str2 += "</tr>";
											})
							str2 += "</tbody>";
							$("#sd4").append(str2);

						}
					});
			function edit(Object) {
				window.location.href = "/admin/test/index?id=" + Object.id;
			}
			function del(Object) {
				$(location).attr('href', '/admin/test/index?id=' + Object.id);
			}
			function send() {
				$(location).attr('href', '/admin/test/query');
			}
		</script>





		<script src="/resources/js/all.min.js"></script>
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


		<!-- Echarts -->
		<!--  		<script src="echarts.min.js"></script> -->
		<!-- 		<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/4.2.1/echarts-en.common.js"></script> -->
		<!-- 		<script src='https://cdn.bootcss.com/echarts/3.4.0/echarts.js'></script> -->
		<!-- 		<script src='/resources/echarts-stat-master/dist/ecStat.js'></script> -->

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
