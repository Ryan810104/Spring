<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" charset="utf-8" id="zm-extension"
	src="chrome-extension://fdcgdnkidjaadafnichfpabhfomcebme/scripts/webrtc-patch.js"
	async=""></script>
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
		// 		document.getElementById("update1").addEventListener("click", update2);
		// 		document.getElementById("insert1").addEventListener("click", insert1);
// 		document.getElementById("find1").addEventListener("click", find1);
	});
	function delete1() {
		document.form1.action = "/admin/test/delete";
		document.form1.submit();
	}
	function update2() {
		document.form1.action = "/admin/test/update";
		document.form1.submit();
	}
	// 	function insert1() {
	// 		document.form1.action = "/admin/member/insert";
	// 		document.form1.submit();
	// 	}
// 	function find1() {
// 		document.form1.action = "/admin/member/queryById";
// 		document.form1.submit();
// 	}

	// 		$(document).ready(function(){
	// 			$("#delete1").click(function(){
	// 				$("#form1").action="/admin/member/delete";
	// 				$("#form1").submit();
	// 			});

// 				$("#find1").click(function(){
// 					$("#form1").attr("action","/admin/member/findone")
// 					$("#form1").action="/admin/member/findone";
// 					$("#form1").submit();
// 				});
// 			});
</script>

<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">


</head>

<body class="text-center">
	<form class="form-signin" name="form1" id="form1" action=""
		method="POST">
		<div>
			<h2>註冊資料</h2>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='id1' name="id1" type="text"
						value="${memberP.id}" class="form-control" placeholder="id1:">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='id2' name="id2" type="text"
						value="${memberP.id}" class="form-control" placeholder="id2:">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='highwaynameida' name="id" type="text"
						value="${memberP.id}" class="form-control" placeholder="id:">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='password' name="password" type="text"
						value="${memberP.password}" placeholder="password:"
						class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='email' name="email" type="text" value="${memberP.email}"
						placeholder="email:" class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='phone' name="phone" type="text" value="${memberP.phone}"
						placeholder="phone:" class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='datetime' name="datetime" type="text" value="${memberP.datetime}"
						placeholder="datetime:" class="form-control">
					<div>${ErrorMsg.highwayName}</div>
				</div>
			</div>



			<div class="form-group row">
				<div class="btn-group">
					<button class="btn btn-lg btn-primary" type="button" id="delete1">delete</button>



					<button class="btn btn-lg btn-primary" type="button" id="update1">update</button>

					<button class="btn btn-lg btn-primary" type="button" id="insert1">insert</button>

					<button class="btn btn-lg btn-primary" type="button" id="find1">find</button>
				</div>

			</div>
			<div>${ErrorMsg.exception}</div>
		</div>
	</form>

	<!-- 	Bootstarp -->
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
	<script>
		$("#insert1").click(function() {
			var insert = $("#form1").serializeArray();
			alert(insert);
			alert(JSON.stringify(insert));
			var i = {};
			$.each(insert, function(index, value1) {
				i[value1.name] = value1.value;
			});
			var ant = JSON.stringify(i);
			alert(ant);
			$.ajax({
				url : '/admin/test/insert',
				method : 'POST',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				data : ant,
				success : function(ajaxres) {
					// 					data=JSON.stringify(data);
					alert("新增成功" + ajaxres.data.id);
					$(location).attr("href", "/admin/test/list");

				},
				error : function(ajaxres) {
					alert("資料新增失敗");
				}
			});
		});
	</script>
	<script>
		$("#update1").click(function() {
			var update = $("#form1").serializeArray();
			JSON.stringify(update);
			var n = {};
			$.each(update, function(key, value1) {
				n[value1.name] = value1.value;
			})
			var update1 = JSON.stringify(n);
			alert(update1);
			
			$.ajax({
				url : '/admin/test/update',
				method : 'POST',
				contentType : 'application/json;charset=UTF-8',
				dataType : 'json',
				data : update1,
				success : function(ajaxres) {
					alert("新增成功" + ajaxres.data.phone);
					alert(ajaxres.type);
					$(location).attr("href", "/admin/test/list");
				},
				error : function(ajaxres) {
					alert("資料新增失敗");
				}
			})
		})
		
	</script>
	
	<script>
	$("#find1").click(function(){
// 		$(location).attr("href","/admin/member/findByIdBetween?id1="+$('#id1').val()+"&id2="+$('#id2').val());
		$.ajax({
			url:"/admin/test/findByIdBetween?id1="+$('#id1').val()+"&id2="+$('#id2').val(),
			type:"POST",
//  			data:{id1:$('#id1'), id2:$('#id2')},
			success:function(data){
				alert(JSON.stringify(data))
				
				$(location).attr("href","/admin/test/list?id1="+$('#id1').val()+"&id2="+$('#id2').val());
			},
		     error:function(data){
		    	 alert("資料搜尋失敗");
		    	 $(location).attr("href","/admin/test/list");
		     }
		})	
	})
	</script>
	
	<script>
// 	datepicker
	$(function() {
		 $( "#datetime" ).datepicker({dateFormat:'yy-mm-dd'});
		 
		});
	</script>
	<!-- jquery	Google CDN -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
	

<!-- datepicker -->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

</body>
</html>