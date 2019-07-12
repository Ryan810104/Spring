<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<a href="/main/setting/2">測試個人頁面(進入帳號"user"的個人頁面)</a>
		<h1>測試上傳圖片(圖檔存資料庫)</h1>
		<form
			action="/admin/memberBeans/gogo/${sessionScope.member.memberNum}"
			method="POST" enctype="multipart/form-data">
			<Input Type="File" name="memberPhoto" accept="image/png, image/jpeg">
			<input type="submit">
		</form>
		<img width='100' height='200'
			src="<c:url value='/admin/memberBeans/getPicture/${sessionScope.member.memberNum}' />" />
		<%--      							src="<c:url value='/getPicture/${product.bookId}' />" /> --%>
		<!-- WRITE YOUR CONTEXT HERE -->
		<h1>測試上傳圖片2(圖檔存伺服器端)</h1>
		<form
			action="/admin/memberBeans/uploadImage/${sessionScope.member.memberNum}"
			method="POST" enctype="multipart/form-data">
			<input type="text" value="${sessionScope.member.memberId}"
				id="memberId1" style="display: none"> <input type="file"
				name="imageFile" id="progressbarTWInput" accept="image/gif, image/jpeg, image/png">
			<input type="submit" value="上傳">
		</form>
		目前頭像：
		<div id="result1"></div>
		預覽圖：<br>
		<img id="preview_progressbarTW_img" width='0' height='0' src="" />
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			showImageBymemberId1();
		});

		function showImageBymemberId1() {
			$
					.ajax({
						url : "/admin/memberBeans/findBymemberId",
						data : {
							memberId : $("#memberId1").val(),
						},
						type : "POST",
						success : function(data) {
							if (data["memberPhotoURL"] == null) {
								text = "<tr><td><img width='200' height='200' src="+ "/resources/img/default-picture.png" + "></td></tr>";
							} else {
								text = "<tr><td><img width='200' height='200' src="+ data["memberPhotoURL"] + "></td></tr>";
							}

							$("#result1").html(text);
						}
					});
		}
		$("#progressbarTWInput").change(function() {

			readURL(this);

		});

		function readURL(input) {

			if (input.files && input.files[0]) {

				var reader = new FileReader();

				reader.onload = function(e) {

					$("#preview_progressbarTW_img")
							.attr('src', e.target.result);
					$("#preview_progressbarTW_img").attr('width', '200');
					$("#preview_progressbarTW_img").attr('height', '200');
				}

				reader.readAsDataURL(input.files[0]);

			}

		}
	</script>
</body>
</html>
