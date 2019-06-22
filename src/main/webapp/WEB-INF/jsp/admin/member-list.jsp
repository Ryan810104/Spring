<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- DATA TABES SCRIPT -->
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.js"></script>
<script src="//cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script>


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
.pagination .current.prev, .pagination .current.next{
 color:#999;
 border-color:#999;
 background:#fff;
} 
</style>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>這是member.table目前有的內容</h1>
	<div>${memberList}</div>
	<div>${update}</div>
	<div>${insert}</div>
	<div>${deletesucceed}</div>
	<div>${findById}</div>
	<div>${get}</div>
<!-- search -->
	<nav class="navbar navbar-light bg-light">
		<form class="form-inline" action="/admin/member/search">
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
	<c:if test="${not empty findById}">
		<table>
			<c:url value="/admin/member/index" var="path">
				<c:param name="id" value="${findById.id}" />
				<c:param name="password" value="${findById.password}" />
				<c:param name="email" value="${findById.email}" />
				<c:param name="phone" value="${findById.phone}" />
			</c:url>
			<tr>
				<td><a href="${path}">${findById.id}</a></td>
				<td>${findById.password}</td>
				<td>${findById.email}</td>
				<td>${findById.phone}</td>
			</tr>

		</table>
	</c:if>


	<button onclick="location='/admin/member/index'">回index</button>
	<script>
		$.ajax({
					url : "/admin/member/query",
					type : "POST",
					success : function(data) {
						var str = "";
						$("#showdata")
								.append(
										"<thead><tr><th>id</th><th>password</th><th>email</th><th>phone</th></thead>");
						str += "<tbody>";
						$.each(data,function(key, value) {
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
			window.location.href = "/admin/member/index?id=" + Object.id;
		}
		function del(Object) {
			$(location).attr('href', '/admin/member/index?id=' + Object.id);
		}
		</script>
		

		
		
		
		<script type="text/javascript">
		$("#showdata").dataTable({
	        "iDisplayLength": 10,
	        "aLengthMenu": [[10, 25, 50, 100,  -1], [10, 25, 50, 100, "All"]],
	        "ajax": {
	            url: "serverAction",
	            type: "POST",
	            data: function(d) {
	                return {json: JSON.stringift(d)};
	            }
	        },
//  	        "serverside:" true,
	        "paginate": true
	       });
	  
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
</body>
</html>