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
				method="POST" class="" style="display: on">
				<div class="row">
					<div class="col-md-2 mb-5">
						<h4 class="mb-3">會員ID</h4>
						<input type="text" class="form-control-plaintext"
							style="color: green" id="memberId" name="memberId"
							value="${sessionScope.member.memberId}" readonly>
					</div>
				</div>
				<div class="col-md-2 mb-5">
					<h4 class="mb-3">問題類別</h4>
					<div class="custom-control custom-radio">
						<input id="complaintType1" name="complaintType" type="radio"
							class="custom-control-input" value="game" checked> <label
							for="complaintType1" class="custom-control-label">遊戲問題</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="complaintType2" name="complaintType" type="radio"
							class="custom-control-input" value="system"> <label
							for="complaintType2" class="custom-control-label">網頁問題</label>
					</div>
					<div class="custom-control custom-radio">
						<input id="complaintType3" name="complaintType" type="radio"
							class="custom-control-input" value="payment"> <label
							for="complaintType3" class="custom-control-label">儲值問題</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-5">
						<label for="complaintMessage">投訴內容</label>
						<textarea class="form-control" id="complaintMessage"
							name="complaintMessage" rows="3"></textarea>
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
				<!-- 			//嵌入驗證碼 -->

				<div class="row">
					<div class="col-md-6 mb-5">
						<button type="submit" class="btn btn-outline-info"
							style="font-size: 150%; margin-left: 480px">送出</button>
					</div>
				</div>
			</form>


			<form action="/main/complain/responseComplaint" name="formCR"
				method="POST" class="" style="display: on">
				<div class="row">
					<div class="col-md-6 mb-5">
						<label for="complaintMessage">回覆</label>
						<textarea class="form-control" id="complaintMessage"
							name="complaintMessage" rows="3"></textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 mb-5">
						<button type="submit" class="btn btn-outline-info"
							style="font-size: 150%; margin-left: 480px">送出</button>
					</div>
				</div>





			</form>

		</div>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
