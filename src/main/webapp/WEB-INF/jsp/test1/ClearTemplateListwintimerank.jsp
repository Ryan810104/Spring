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

		<div id="here"></div>

		<button onclick="location='/admin/test/index'">回index</button>
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
		
		
		<script>
		$(function() {
			var customer = new Array();
			var point = new Array();
			var str;
			$.ajax({

				url : "/admin/memberBeans/top3cash",
				type : "POST",
				success : function(data) {
							for (var i = 0; i < data.length; i++) {
								
								for ( var index in data[i]) {
									 var str=data[i][index][0];
								}
							}
				$("#here").append(str);
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
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
