<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<form class="needs-validation" method="POST"
			action="/test/MemberMailBeans/send_insertMail" name="form03">
			<div class="mb-3">
				<label for="memberReceiver">收件人:</label> <input type="text"
					class="form-control" id="memberReceiver" name="mailReceiver">
			</div>
			<div class="mb-3">
				<label for="memberReceiver">寄件人:</label> <input type="text"
					class="form-control" id="memberReceiver" name="mailMemberId">
			</div>
			<div class="mb-3">
				<label for="memberMailTitle">標題</label> <input type="text"
					class="form-control" id="memberMailTitle" name="mailTitle">
			</div>
			<div class="mb-3">
				<label for="memberMailMessage">內容</label> <input type="text"
					class="form-control" id="memberMailMessage"
					name="mailMessage">
					<span id=""  style="color:red">${MessageI.sendMailSucceed}</span>
					<span id=""  style="color:red">${MessageI.sendMailFail}</span>
			</div>
			<hr class="mb-4">
			<input type="submit" class="btn btn-primary btn-lg btn-block"
				 value="送出">
		</form>
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
