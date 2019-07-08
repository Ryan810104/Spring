<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style type="text/css">
table {
	margin-top: 20px;
	margin-bottom: 30px;
}
</style>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>
<script>
	$.ajax({
		url : "/main/complain/query1",
		type : "POST",
		success : function(data) {
			showByGame(data);
		}
	});
	function showByGame(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintMessagetime"] + "</td><tr>";
			}
			//alert(opt);
			$("#showByGame").append(opt);
		}, 4);	
	}

	$.ajax({
		url : "/main/complain/query2",
		type : "POST",
		success : function(data) {
			showByWeb(data);
		}
	});
	function showByWeb(data) {
		//alert(data);
		setTimeout(() => {
		var opt = "";
		for (i in data) {	
			opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
					+ data[i]["memberId"] + "</td>" + "<td>"
					+ data[i]["complaintMessage"] + "</td>" + "<td>"
					+ data[i]["complaintMessagetime"] + "</td><tr>";
		}
		//alert(opt);
		$("#showByWeb").append(opt);
		}, 4);
	}

	$.ajax({
		url : "/main/complain/query3",
		type : "POST",
		success : function(data) {
			showByPay(data);
		}
	});
	function showByPay(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintMessagetime"] + "</td><tr>";
			}
			//alert(opt);
			$("#showByPay").append(opt);
			}, 4);	
	}
	
	
</script>
<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->

		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-item nav-link active" id="nav-home-tab"
					data-toggle="tab" href="#nav-home" role="tab"
					aria-controls="nav-home" aria-selected="true"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">遊戲問題</a>
				<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
					href="#nav-profile" role="tab" aria-controls="nav-profile"
					aria-selected="false"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">網頁問題</a>
				<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
					href="#nav-contact" role="tab" aria-controls="nav-contact"
					aria-selected="false"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">儲值問題</a>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab" style="background-color:">

				<div class="container">
					<div class="row">
						<table>
							<thead style="font-size: 120%">
								<tr>
									<th>編號</th>
									<th>會員ID</th>
									<th>投訴內容</th>
									<th>投訴時間</th>
								</tr>
							</thead>

							<tbody style="font-size: 120%" id="showByGame"></tbody>

						</table>
					</div>

				</div>
			</div>

			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab" style="background-color:">
				<div class="container">
					<div class="row">
						<table>
							<thead style="font-size: 120%">
								<tr>
									<th>編號</th>
									<th>會員ID</th>
									<th>投訴內容</th>
									<th>投訴時間</th>
								</tr>
							</thead>

							<tbody style="font-size: 120%" id="showByWeb"></tbody>

						</table>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab" style="background-color:">
				<div class="container">
					<div class="row">
						<table>
							<thead style="font-size: 120%">
								<tr>
									<th>編號</th>
									<th>會員ID</th>
									<th>投訴內容</th>
									<th>投訴時間</th>
								</tr>
							</thead>

							<tbody style="font-size: 120%" id="showByPay"></tbody>

						</table>
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<form action="/main/complain/responseComplaint" name="formCR"
				method="POST" class="">
				<div class="row">
					<div class="col-md-1 mb-2">
						<label style="font-size: 120%" for="complaintNum">編號</label> <input
							type="text" style="font-size: 120%" class="form-control"
							id="complaintNum" name="complaintNum">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-2">
						<label style="font-size: 120%" for="complaintResponse">回覆</label>
						<textarea style="font-size: 120%" class="form-control"
							id="complaintResponse" name="complaintResponse" rows="3"></textarea>
					</div>
				</div>
				<!-- 				<div class="row"> -->
				<!-- 					<div class="col-md-2 mb-2" style="display: none"> -->
				<!-- 						<h4 class="mb-3">狀態</h4> -->
				<!-- 						<div class="custom-control custom-radio"> -->
				<!-- 							<input id="RcomplaintStatus0" name="complaintStatus" type="radio" -->
				<!-- 								class="custom-control-input" value="0"> <label -->
				<!-- 								for="RcomplaintStatus0" class="custom-control-label">未處理</label> -->
				<!-- 						</div> -->
				<!-- 						<div class="custom-control custom-radio"> -->
				<!-- 							<input id="RcomplaintStatus1" name="complaintStatus" type="radio" -->
				<!-- 								class="custom-control-input" value="1" checked> <label -->
				<!-- 								for="RcomplaintStatus1" class="custom-control-label">已處理</label> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<div class="row">
					<div class="col-md-6 mb-5">
						<button type="button" class="btn btn-outline-info" id="sendout"
							style="font-size: 150%; margin-left: 480px">送出</button>
					</div>
				</div>
			</form>
		</div>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
<script>
$("#sendout").click(function(){
	response();
});
function response(){
	  $.ajax({
		  	url : "/main/complain/responseComplaint?complaintNum="+$("#complaintNum").val()+"&complaintResponse="+$("#complaintResponse").val(),
			type : "GET", 
			success : function(data) {
				if(data==1){
				alert("回覆成功");
				}else{
					alert("回覆失敗,先前已回覆");
				}
				window.location.reload();			
				
			},
			error : function(data){
				alert("回覆失敗,編號不存在");
				window.location.reload();
			}
			});
		};

</script>
</html>
