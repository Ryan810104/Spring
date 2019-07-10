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
		<h1>這是member.table目前有的內容</h1>
		<div>${memberList}</div>
		<div>${update}</div>
		<div>${insert}</div>
		<div>${deletesucceed}</div>
		<div>${findById}</div>
		<div>${get}</div>
		<!-- search -->
		<nav class="navbar navbar-light bg-light">
			<form class="form-inline" action="/admin/test/query">
				<input class="form-control mr-sm-2" type="text" id='search'
					name="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="button"
					onclick="send()">Search</button>
			</form>
		</nav>
		<!-- search end-->


		<div class="table-responsive-xl">
			<form action="" id="form1">
				<table id="showdata" class="table">

				</table>

			</form>
		</div>

		<div class="table-responsive-xl">
			<form action="" id="form2">
				<table id="showdata1" class="table">

				</table>

			</form>
		</div>

		<div id="dd"></div>


		<div class="table-responsive-xl">
			<form action="" id="form3">
				<table id="sd2" class="table">

				</table>

			</form>
		</div>
		<div class="table-responsive-xl">
			<form action="" id="form4">
				<table id="sd3" class="table">

				</table>

			</form>
		</div>
		<div class="table-responsive-xl">
			<form action="" id="form5">
				<table id="sd4" class="table">

				</table>

			</form>
		</div>

		<div id="sd4-1"></div>
		<div id="sd5"></div>


		<button onclick="location='/admin/test/index'">回index</button>


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

		<script>
			var str = new Array();
			var sti = new Array();
			// 		var sta = new Array();
			var json = {};
			$(document)
					.ready(
							function() {

								$
										.ajax({

											url : "/admin/memberBeans/totalwin",
											type : "POST",
											success : function(data) {

												for (var i = 0; i < data.length; i++) {
													// 							str.push(data[i][0]);
													// 							sti.push(data[i][1]);
													// 						sta.push(data[i][2]);
												}
												// 					$("#id").append(str);
												// 					$("#id1").append(sti);
												alert(str);
												alert(sti);
												// 					alert(sta);
												// 					$("dd").highcharts(json);	

												// 					var options = {

												// 						var chart = {
												// 							type : 'column',
												// 							margin : 75,
												// 							options3d : {
												// 								enabled : true,
												// 								alpha : 10,
												// 								beta : 25,
												// 								depth : 70
												// 							}
												// 						};

												var chart = {
													type : 'pie',
													options3d : {
														enabled : true,
														alpha : 45,
														beta : 0
													}
												};
												var title = {
													text : "玩家勝場數排行"
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
												// 						var xAxis = {
												// 							categories : str
												// 						};

												// 						var yAxis = {
												// 							//min : 0,
												// 							name:'勝場數',
												// 							title : {
												// // 							text : "point"
												// 							}
												// 						};
												// 						var series = [ {
												// 							name : "勝場數",
												// 							data : sti
												// 						} ];

												var series = [ {
													type : 'pie',
													name : '配送量',
													data : data
												} ];

												json.chart = chart;
												json.tooltip = tooltip;
												json.title = title;
												json.plotOptions = plotOptions;
												// 						json.xAxis = xAxis;
												// 						json.yAxis = yAxis;
												json.series = series;

												$("#dd").highcharts(json);
												// 					};

											}

										});

							});
		</script>





		<!--玩家累積金額排行榜-->
		<script>
			$
					.ajax({
						url : "/admin/memberBeans/therichest",
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
				$(location).attr('href', '/admin/test/query');
			}
		</script>


		<!-- 遊戲A各玩家遊玩次數排行榜 -->
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
						alert(str);
						alert(sti);

						var chart = {
							renderTo : 'container',
							type : 'cylinder',
							// 							type : 'column',
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
						
						var plotOptions= {
						    series: {
						      depth: 25,
						      colorByPoint: true
						    }
						  };
						var title = {
							text : "獎金排名"
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
							 name: '獎金',
							 showInLegend: false
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
							stb.push(data[i][1]);
// 							sat.push(data[i][2]);
						}
// 						$("#id").append(str);
// 						$("#id1").append(sti);
						alert(sta);
						alert(stb);
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
							 name: '獲勝率',
							 showInLegend: false
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
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="/resources/highcharts/code/modules/data.js"></script>
		<script src="https://code.highcharts.com/modules/drilldown.js"></script>
		<script src="/resources/highcharts/code/modules/drilldown.js"></script>
		<script src="http://code.highcharts.com/highcharts-3d.js"></script>
		<script src="https://code.highcharts.com/modules/cylinder.js"></script>
		<!-- highcarts -->


	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>