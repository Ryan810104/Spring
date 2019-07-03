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
		
		<button onclick="location='/admin/test/index'">回index</button>
		<script>
			var getUrlParameter = function getUrlParameter(sParam) {
				var sPageURL = window.location.search.substring(1), sURLVariables = sPageURL
						.split('&'), sParameterName, i;

				for (i = 0; i < sURLVariables.length; i++) {
					sParameterName = sURLVariables[i].split('=');

					if (sParameterName[0] === sParam) {
						return sParameterName[1] === undefined ? true
								: decodeURIComponent(sParameterName[1]);
					}
				}
	};
	alert(getUrlParameter('id1'));
		$.ajax({
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
				$(location).attr('href','/admin/test/query') ;
			}
		</script>
		
		<script>
		$.ajax({
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
							$.each(
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
				$(location).attr('href','/admin/test/query') ;
			}
		</script>


		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
