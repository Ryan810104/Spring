<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- jqGrid -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- The link to the CSS that the grid needs -->
<link rel="stylesheet" type="text/css"
	href="/resources/jqgrid/css/ui.jqgrid-bootstrap4.css" />
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="/resources/css/all.min.css" /> -->
<!-- The jQuery library is a prerequisite for all Guriddo products -->
<!-- jqGrid -->
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


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>這是籌碼目前所有的內容</h1>

	<div>${deletesucceed}</div>
	<!-- search -->
	<nav class="navbar navbar-light bg-light">
		<form class="form-inline" action="/admin/chip/search">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>
	<!-- search end-->


	<div class="table-responsive-xl">
		<form action="" id="form1">
			<table id="showdata" class="table">

			</table>

		</form>
	</div>
	
	<table id="tblGridId" > </table> <div id="tblGridPager" style="text-align:center" > </div>

	<button onclick="location='/admin/chip/index'">回到index</button>
	<script>
	$(function(){
		
		$("#tblGridId").jqGrid({
	        url: '/admin/chip/query',
	        datatype: 'json',
	        mtype: 'GET',
	        styleUI : 'Bootstrap4',
	        iconSet: 'fontAwesome',
	        colModel: [
				{ name: 'chipNum', label: 'chipNum'},
				{ name: 'chipMemberNum', label: 'chipMemberNum'},
				{ name: 'chipBalanced', label: 'chipBalanced'},
				{ name: 'chipType', label: 'chipType'},
				{ name: 'win', label: 'win'},
				{ name: 'round', label:'round'},
			],
	        pager: '#tblGridPager',
	        rowNum: 3,
	        page: 1,
	        height: 'auto',
	        autowidth: 'auto',
	        sortorder: 'asc',
	        rowList: [3,4,6],
	    });
		
		
	});
	
	
	
// 		$.ajax({
		
// 					url : "/admin/chip/query?page=2&size=2",
// 					type : "Get",
// 					success : function(data) {
// 						var str = "";
// 						$("#showdata")
// 								.append(
// 										"<thead><tr><th>chipNum</th><th>chipMemberid</th><th>chipBalanced</th></thead>");
// 						str += "<tbody>";
// 						$.each(data,function(key, value) {
// 											str += "<tr>";
// 											for (i in value) {
// 												str += "<td>" + value[i]
// 														+ "</td>";
// 												id = Object.values(value)[0];
// 											}
// 											str += "<td><button id="
// 													+ "'"
// 													+ id
// 													+ "'"
// 													+ "type='button' onclick='edit(this)'>edit</button></td>";
// 											str += "<td><button id="
// 													+ "'"
// 													+ id
// 													+ "'"
// 													+ "type='button' onclick='del(this)'>delete</button></td>";
// 											str += "</tr>";
// 										})
// 						str += "</tbody>";
// 						$("#showdata").append(str);

// 					}
// 				});
		function edit(Object) {
			window.location.href = "/admin/chip/index?chipNum=" + Object.id;
		}
		function del(Object) {
			$(location).attr('href', '/admin/chip/index?chipNum=' + Object.id);
		}
		</script>

	<script src="/resources/js/all.min.js"></script>
	<!-- jquery include ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- 	bootstrap 4.3.1 -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		
	<!-- jqGrid -->
	<!-- We support more than 40 localizations -->
	<script type="text/javascript" src="/resources/jqgrid/js/i18n/grid.locale-tw.js"></script>
	<!-- This is the Javascript file of jqGrid -->
	<script type="text/javascript" src="/resources/jqgrid/js/jquery.jqGrid.min.js"></script>
</body>
</html>