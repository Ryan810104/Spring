<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- DATA TABES SCRIPT -->
<script type="text/javascript" charset="utf8"
	src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>
<script
	src="//cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.js"
	type="text/javascript"></script>


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



/* 顯示金錢欄位的CSS */
.card-detail-badge {      
        background: #f2d900;
        text-align: center;
        border-radius: 30px 30px 30px 30px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;        
    }
</style>


<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<h1>這是籌碼目前所有的內容</h1>

	<div>${deletesucceed}</div>
	<!-- search -->
	<nav class="navbar navbar-light bg-light">
		<form class="form-inline" action="/admin/chiprecord/search">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>
	<!-- search end-->
<div class="col-md-2">
	
	<div id="RR" class="card-detail-badge"></div>
</div>

	<div class="table-responsive-xl">
		<form action="" id="form1">
			<table id="showdata" class="table">

			</table>

		</form>
	</div>

	<div class="table-responsive-xl">
		<form action="" id="form1">
			<div id="id"></div>
		</form>
	</div>
	<div class="table-responsive-xl">
		<form action="" id="form1">
			<div id="id1"></div>
		</form>
	</div>



	<div id="dd"></div>


	<button onclick="location='/admin/chiprecord/index'">回到index</button>
	<script type="text/javascript">
		function CreateDynamicTable(data) {
			var str = '<table><thead><tr><th>A</th><th>B</th></tr></thead><tbody>';
			for (var i = 0; i < data.length; i++) {
				str += '<tr>';
				for ( var index in data[i]) {
					str += '<td>' + data[i][index] + '</td>';
				}
				str += '</tr>';
			}
			str += '</tbody></table>'
			return str;
		}

		$(function() {
			var customer = new Array();
			var point = new Array();
			var str;
			$.ajax({

				url : "/admin/memberBeans/top4cash",
				type : "POST",
				success : function(data) {
					// 							for (var i = 0; i < data.length; i++) {
					// 								str += '<tr>';
					// 								for ( var index in data[i]) {
					// 									str += '<td>' + data[i][index] + '</td>';
					// 								}
					// 								str += '</tr>';
					// 							}
					$("#showdata").append(CreateDynamicTable(data));
				}

			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			setInterval(function() {
				$.ajax({

					url : "/admin/memberBeans/playersummarymoney?chipMemberNum="+${sessionScope.member.memberNum},
					type : "POST",
					success : function(data) {
							$("#RR").html("餘額:"+"$"+data[1]);
					}

				});

			}, 3000); 

		});
	</script>









	<script type="text/javascript">
		var str = new Array();
		var sti = new Array();
		var json = {};
		$(document).ready(function() {
			
	

			$.ajax({

				url : "/admin/memberBeans/top3cash",
				type : "POST",
				success : function(data) {

					for (var i = 0; i < data.length; i++) {
						str.push(data[i][0]);
						sti.push(data[i][1]);
					}
					$("#id").append(str);
					$("#id1").append(sti);
// 					alert(str);
// 					alert(sti);

					var chart = {
						type : "column"
					};
					var title = {
						text : "玩家對比"
					};
					var xAxis = {
						categories : str
					};
					var yAxis = {
						// 							min : 0,
						title : {
							text : "point"
						}
					};
					var series = [ {
						name : "point",
						data : sti
					} ];
					json.chart = chart;
					json.title = title;
					json.xAxis = xAxis;
					json.yAxis = yAxis;
					json.series = series;

					$("#dd").highcharts(json);
					// 					};

				}

			});
		
		});
	</script>



	<!-- 	<!--highcharts -->


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
	<!--  	<script src="https://code.highcharts.com/highcharts.js"></script> -->
	<script src="/resources/highcharts/code/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="/resources/highcharts/code/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/drilldown.js"></script>
	<script src="/resources/highcharts/code/modules/drilldown.js"></script>

	


</body>
</html>