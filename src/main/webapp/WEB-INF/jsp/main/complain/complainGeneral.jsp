<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->

		<div class="container">
			<form action="/main/complain/insertComplaint" name="formCI"
				method="POST" class="" style="display: on"
				enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-2 mb-5">
						<h4 style="font-size: 120%; color: #FF44AA;" class="mb-3">親愛的會員</h4>
						<input type="text" class="form-control-plaintext"
							style="color: #0066FF; font-size: 120%;" id="memberId"
							name="memberId" value="${sessionScope.member.memberId}" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 mb-5">
						<h4 style="font-size: 120%; color: green;" class="mb-3">請選擇投訴類別:</h4>
						<div class="custom-control custom-radio">
							<input style="font-size: 120%" id="complaintType1"
								name="complaintType" type="radio" class="custom-control-input"
								value="1" checked> <label for="complaintType1"
								class="custom-control-label">遊戲問題</label>
						</div>
						<div class="custom-control custom-radio">
							<input style="font-size: 120%" id="complaintType2"
								name="complaintType" type="radio" class="custom-control-input"
								value="2"> <label for="complaintType2"
								class="custom-control-label">網頁問題</label>
						</div>
						<div class="custom-control custom-radio">
							<input style="font-size: 120%" id="complaintType3"
								name="complaintType" type="radio" class="custom-control-input"
								value="3"> <label for="complaintType3"
								class="custom-control-label">儲值問題</label>
						</div>
						<div class="custom-control custom-radio">
							<input style="font-size: 120%" id="complaintType4"
								name="complaintType" type="radio" class="custom-control-input"
								value="4"> <label for="complaintType4"
								class="custom-control-label">社群問題</label>
						</div>
						
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-5">
						<h4 style="font-size: 120%; color: green;">請提供截圖以利投訴案件處理:</h4>
						<input type="text" id="complaintPicURL" name="complaintPicURL"
							style="display: none"> <input type="file"
							name="complaintPic" id="complaintPic"
							accept="image/gif, image/jpeg, image/png"> <img
							id="preview_imageFile" width='50' height='50'
							src="/resources/img/default-file.png" /> 預覽
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-2">
						<label style="font-size: 120%; color: green;"
							for="complaintMessage">請輸入投訴內容:</label> <span id="complaintSp"
							style="color: red"></span>
						<textarea style="font-size: 120%" class="form-control"
							id="complaintMessage" name="complaintMessage" rows="3"></textarea>
					</div>
				</div>
				<div class="col-md-2 mb-5" style="display: none">
					<h4 class="mb-3">狀態</h4>
					<div class="custom-control custom-radio">
						<input id="complaintStatus0" name="complaintStatus" type="radio"
							class="custom-control-input" value="0" checked> <label
							for="complaintStatus0" class="custom-control-label">未處理</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="complaintStatus1" name="complaintStatus" type="radio"
							class="custom-control-input" value="1"> <label
							for="complaintStatus1" class="custom-control-label">已處理</label>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-5">
						<button type="button" class="btn btn-outline-info"
							style="font-size: 150%; margin-left: 480px" onclick='complaint()'>送出</button>
					</div>
				</div>
			</form>



			<script>
				$("#complaintPic").change(function() {
					readURL(this);
				});

				function readURL(input) {
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							if (e == null) {
								$("#preview_imageFile").attr('src',
										"/resources/img/default-file.png");
							} else
								$("#preview_imageFile").attr('src',
										e.target.result);
						}
						reader.readAsDataURL(input.files[0]);
					}
				}
			</script>





		</div>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
<script>
	function complaintChk() {
		let theComplaint = document.getElementById("complaintMessage").value;
		if (theComplaint == "") {
			document.getElementById("complaintSp").innerHTML = "<i class=\"fas fa-exclamation\"></i><n style='color:red;font-size: 120%'>	不可空白</n>";
		} else {
			document.getElementById("complaintSp").innerHTML = "";
		}
	}
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("complaintMessage").addEventListener("blur",
				complaintChk);
	})

	function complaint() {
		let theComplaint = document.getElementById("complaintMessage").value;
		if (theComplaint == "") {
			document.getElementById("complaintSp").innerHTML = "<i class=\"fas fa-exclamation\"></i><n style='color:red;font-size: 120%'>	不可空白</n>"
		} else
			document.formCI.submit();

	}
</script>
</html>
