<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" charset="utf-8" id="zm-extension" src="chrome-extension://fdcgdnkidjaadafnichfpabhfomcebme/scripts/webrtc-patch.js" async=""></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="/resources/css/signin.css" rel="stylesheet">
<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("delete1").addEventListener("click", delete1);
		document.getElementById("update1").addEventListener("click", update2);
		document.getElementById("insert1").addEventListener("click", insert1);
		document.getElementById("find1").addEventListener("click", find1);
	});
	function delete1() {
		document.form1.action = "/admin/member/delete";
		document.form1.submit();
	}
	function update2() {
		document.form1.action = "/admin/member/update";
		document.form1.submit();
	}
	function insert1() {
		document.form1.action = "/admin/member/insert";
		document.form1.submit();
	}
	function find1() {
		document.form1.action = "/admin/member/findone";
		document.form1.submit();
	}

	// 		$(document).ready(function(){
	// 			$("#delete1").click(function(){
	// 				$("#form1").action="/admin/member/delete";
	// 				$("#form1").submit();
	// 			});

	// 			$("#find1").click(function(){
	// 				$("#form1").attr("action","/admin/member/findone")
	// 				$("#form1").action="/admin/member/findone";
	// 				$("#form1").submit();
	// 			});
	// 		});
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body class="text-center">
	<form class="form-signin" name="form1" id="form1" action=""
		method="POST">
		<div>
			<h2>新增高速公路資料</h2>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='highwaynameida' name="id" type="text"
						value="${param.id}" class="form-control" placeholder="id:">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='password' name="password" type="text"
						value="${param.password}" placeholder="password:"
						class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='email' name="email" type="text" value="${param.email}"
						placeholder="email:" class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='phone' name="phone" type="text" value="${param.phone}"
						placeholder="phone:" class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>

			<div class="form-group row">
				<div class="btn-group">
					<button class="btn btn-lg btn-primary" type="button"
						id="delete1">delete</button>

					<button class="btn btn-lg btn-primary" type="button"
						id="update1">update</button>

					<button class="btn btn-lg btn-primary" type="button"
						id="insert1">insert</button>

					<button class="btn btn-lg btn-primary" type="button"
						id="find1">find</button>
				</div>

			</div>
			<div>${ErrorMsg.exception}</div>
		</div>
	</form>
<script>
$("#insert1").click(function(){
	var insert=$("#form1").serializeArray();
	alert(insert);
	alert(JSON.stringify(insert));
	var i = {};
	$.each(insert,function(index,value1){
		i[value1.name]=value1.value;
	});
	var ant=JSON.stringify(i);
	alert(ant);
	$.ajax({
		url:"/admin/member/insert",
		method:"POST",
		contentType:"application/json;charset=UTF-8",
		data :article,
		success:function(hoho){
			alert("新增成功"+JSON.stringify(hoho));
			$(location).attr("href"="/admin/membe/list");
		},
		error:function(hoho){
			alert("資料新增失敗");
		}
	});
});


</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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