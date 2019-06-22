<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<!-- Custom styles for this template -->
<link rel="stylesheet" href="/resources/css/CustomAfterIndex.css">
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp"></jsp:include>
		<!-- start context -->
		<div class="container">
			<!-- b:nav -->
			<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
				VipLevel 新增 / 修改 / 刪除</nav>
			<!-- e:nav -->
			<!-- b:row -->
			<!-- b:row-1 -->
			<div class="container">

				<div id="result"
					style="overflow: scroll; border: 1px solid black; height: 20rem; width: 68rem; font-size: 12px; margin-top: 10px;">
	
				</div>
			</div>
			<br>
			<hr>
			<br>
			<!-- e:row-1 -->
			<div class="container" style="text-align: -webkit-center">
				<div class="row">
					<div class="col">

						<div class="form-group row">
							<label for="viplevel" class="col-sm-2 col-form-label">VipLevel</label>
							<div class="col-sm-4">
								<input type="text" style="text-align: center" readonly
									class="form-control-plaintext" id="viplevel" value="">
							</div>
							<a style="line-height: 2.5rem"
								href="http://localhost/admin/vip/index"><i
								class="fas fa-redo"></i></a>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">VipTitle</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="viptitle"
									placeholder="請輸入名稱">
							</div>
							<a id="edittitle" style="line-height: 2rem; display: none"><i
								class="fas fa-edit"></i></a>
								
						</div>
					</div>
					<div class="col">
						<input type="button" id="insertbutton" class="btn btn-outline-success btn-block" value="新增"> 
						<input type="button" id="updatebutton" disabled="disabled" class="btn btn-outline-success btn-block" value="修改"> 
						<input type="button" id="deletebutton" disabled="disabled" class="btn btn-outline-danger btn-block" value="刪除">
						<form method="POST" action="/admin/vip/query">
							<input type="button" id="queryall" class="btn btn-primary"
								value="全部查詢" style="display: none;">
						</form>
					</div>
				</div>
				<img src="https://tw.beanfun.com/bnb/images/game/5/image100.gif">
				<img src="https://tw.beanfun.com/bnb/images/game/5/image120.gif">
				<img src="https://tw.beanfun.com/bnb/images/game/5/image130.gif">
				<img src="https://tw.beanfun.com/bnb/images/game/5/image140.gif">
				<img src="https://tw.beanfun.com/bnb/images/game/5/image150.gif">
				<img src="https://tw.beanfun.com/bnb/images/game/5/image160.gif">
				<!-- b:row-2 -->

				<!-- e:row-2 -->


				<!-- e:row -->
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- Your data ends here -->
				<!-- End of context -->
			</div>
			<!-- End of wrapper -->
			</div>
		</div>
</body>
<style>
input[type="button"]:disabled {
	background: #dddddd;
}
</style>
<script>
	//Show List & next vip number
	$(document).ready(function() {
		$("#queryall").click();
		showId();
	});
	//doFunction JQuery when pressbutton
	$("#insertbutton").click(function() {
		insertfunc();
		showId();
		location.reload()
	});
	$("#updatebutton").click(function() {
		updatefunc();
		showId();
		location.reload()
	});
	$("#deletebutton").click(function() {
		deletefunc();
		showId();
		location.reload()
	});
	//Change disable or not when the following situation
	function trclick(id) {
		$("#viptitle").val($("#row" + id).children('td').eq(1).html());
		$("#viplevel").val($("#row" + id).children('td').eq(0).html());
		$("#insertbutton").attr('disabled', true);
		$("#updatebutton").attr('disabled', true);
		$("#deletebutton").attr('disabled', false);
		$("#viptitle").attr("readonly", "readonly");
		$("#edittitle").css('display', 'block');
	}
	$("#edittitle").click(function() {
		$("#viptitle").removeAttr("readonly");
		$("#deletebutton").attr('disabled', true);
		$("#updatebutton").attr('disabled', false);

	});

	function insertfunc() {
		$.ajax({
			url : "/admin/vip/insert?viptitle=" + $("#viptitle").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");
	}
	function updatefunc() {
		$.ajax({
			url : "/admin/vip/update?vipnumber=" + $("#viplevel").val()
					+ "&viptitle=" + $("#viptitle").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");

	}

	function deletefunc() {
		$.ajax({
			url : "/admin/vip/delete?vipnumber=" + $("#viplevel").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");

	}

	//Insert JQery by enter the form1
	$("#viptitle").keypress(function(event) {
		if (event.keyCode == 13) {
			return false;
		}
	});

	//Get All
	$("#queryall").click(
			function() {
				var text = "<table class=\" table table-sm table-hover\">";
				text += "<tr><th>等級</th><th>稱號</th></tr>"
				$.ajax({
					url : "/admin/vip/query",
					type : "GET",
					success : function(Jdata) {
						var NumOfJData = Jdata.length;
						for (var i = 0; i < NumOfJData; i++) {
							text += "<tr onclick=\"trclick("
									+ Jdata[i]["vipnumber"]
									+ ");\" class=\"col\"" + "id = row"
									+ Jdata[i]["vipnumber"] + ">";
							text += "<td>" + Jdata[i]["vipnumber"] + "</td>";
							text += "<td>" + Jdata[i]["viptitle"] + "</td>";
							text += "</tr>";
						}
						text += "<table>"
						$("#result").html(text);
					}
				});

			});
	//Get next number
	function showId() {
		$.ajax({
			url : "/admin/vip/query2",
			type : "GET",
			success : function(data) {
				$("#viplevel").val(data);
			}
		});
	}
</script>
</html>