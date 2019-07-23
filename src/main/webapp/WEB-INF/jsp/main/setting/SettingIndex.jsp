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
	<!-- 				上傳頭像開頭                                                          -->
	<form
		action="/admin/memberBeans/uploadImage/${sessionScope.member.memberNum}"
		method="POST" enctype="multipart/form-data">
		<div class="modal fade" id="showComplaintPic" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLongTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 150%">目前頭像：</h5>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close" style="font-size: 200%">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="col-sm-9" id="result2"></div>

					</div>
					<div>
						<input type="file" id="progressbarTWInput"
							accept="image/gif, image/jpeg, image/png"
							class="text-center center-block file-upload" name="imageFile"
							id="progressbarTWInput">
					</div>
					<div class="modal-body">
						<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 150%">上傳頭像：</h5>

						<div id="complaintResult"
							style="text-align: center; margin-top: 20px; margin-bottom: 20px">

							<img id="preview_progressbarTW_img" width='0' height='0'
								class="avatar img-circle img-thumbnail" src="" />

						</div>
						<div>
							<input type="submit" value="上傳">
						</div>

					</div>



				</div>
			</div>
		</div>
	</form>
	<!-- 				上傳頭像結尾                                                         -->
	<form class="form" action="/admin/memberBeans/update" method="post"
		id="updateForm">
		<article class="content moe">
			<!-- WRITE YOUR CONTEXT HERE -->
			<div class="container bootstrap snippet">
				<div class="row">
					<div class="col-sm-10" id="userIndexNickName">
						
					</div>
				</div>


				<div class="row">
					<div class="col-sm-3">
						<!--left col-->



						<div class="text-center"></div>
						<!--/col-3-->
						<div>
							<div class="col-sm-9" id="result1"></div>
							<br>
							<button type="button" data-toggle='modal'
								data-target='#showComplaintPic' style="position:relative;left:25%;">
								<h3>更新頭像</h3>
							</button>


							<hr>


						</div>
						</hr>
						<br>




						<ul class="list-group">
							<li class="list-group-item text-muted">Activity <i
								class="fa fa-dashboard fa-1x"></i></li>
							<li class="list-group-item text-right"><span
								class="pull-left"><strong>Shares</strong></span> 125</li>
							<li class="list-group-item text-right"><span
								class="pull-left"><strong>Likes</strong></span> 13</li>
							<li class="list-group-item text-right"><span
								class="pull-left"><strong>Posts</strong></span> 37</li>
							<li class="list-group-item text-right"><span
								class="pull-left"><strong>Followers</strong></span> 78</li>
						</ul>

						<div class="panel panel-default">
							<div class="panel-heading">Social Media</div>
							<div class="panel-body">
								<i class="fa fa-facebook fa-2x"></i> <i
									class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i>
								<i class="fa fa-pinterest fa-2x"></i> <i
									class="fa fa-google-plus fa-2x"></i>
							</div>
						</div>

					</div>
					<!--/col-3-->
					<div class="col-sm-9">



						<div class="tab-content">
							<div class="tab-pane active" id="home">
								<div class="form-group">

									<div class="col-xs-6">
										<input type="text" value="${sessionScope.member.memberId}"
											id="memberId" style="display: none"> <label
											for="first_name"><h4>姓</h4></label> <input type="text"
											class="form-control" name="memberFitstName"
											id="memberFitstName" placeholder="姓"
											title="enter your first name if any.">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="last_name"><h4>名</h4></label> <input type="text"
											class="form-control" name="memberLastName"
											id="memberLastName" placeholder="名"
											title="enter your last name if any.">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="last_name"><h4>暱稱</h4></label> <input type="text"
											class="form-control" name="memberNickName"
											id="memberNickName" placeholder="暱稱"
											title="enter your last name if any.">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="phone"><h4>連絡電話</h4></label> <input type="text"
											class="form-control" name="memberPhonenum"
											id="memberPhonenum" placeholder="連絡電話"
											title="enter your phone number if any.">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="email"><h4>郵件</h4></label> <input type="email"
											class="form-control" name="memberEmail" id="memberEmail"
											placeholder="郵件" title="enter your email.">
									</div>
								</div>
								<div class="form-group">

									<div class="col-xs-6">
										<label for="email"><h4>住址</h4></label> <input type="text"
											class="form-control" id="memberLocation"
											name="memberLocation" placeholder="住址"
											title="enter a location">
									</div>
								</div>

								<div class="form-group">
									<div class="col-xs-12">
										<br>
										<button class="btn btn-lg btn-success" type="button"
											id="updateButton">
											<i class="glyphicon glyphicon-ok-sign" id=""></i> 更新
										</button>
									</div>
								</div>
								<div>
									<p id="updateMessage"></p>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
			<!--/tab-pane-->


		</article>
	</form>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
	<script>
		function showImg(complaintNum1) {
			$
					.ajax({
						url : "/main/complain/findBycomplaintNum",
						data : {
							complaintNum : complaintNum1,
						},
						type : "POST",
						success : function(data) {
							if (data["complaintPicURL"] == null) {
								text = "<img width='350' height='350' src="+ "/resources/img/file-notApply.png" + ">";
							} else {
								text = "<img width='350' height='350'  src="+ data["complaintPicURL"] + ">";
							}

							// 							$("#complaintResult").html(text);
						}
					});
		}
		$(document).ready(function() {
			findBymemberId();

		});
		$('#updateButton').click(function() {
			updatefunc();
		});
		function findBymemberId() {
			$
					.ajax({
						url : "/admin/memberBeans/findBymemberId",
						data : {
							memberId : $("#memberId").val(),
						},
						type : "POST",
						success : function(data) {
							// 							alert(data["memberId"]);
							$("#memberId").val(data["memberId"])
							$("#memberFitstName").val(data["memberFitstName"]);
							$("#memberLastName").val(data["memberLastName"]);
							$("#memberNickName").val(data["memberNickName"]);
							$("#memberPhonenum").val(data["memberPhonenum"]);
							$("#memberEmail").val(data["memberEmail"]);
							$("#memberLocation").val(data["memberLocation"]);
							if (data["memberPhotoURL"] == null) {
								text = "<img class=\"avatar img-circle img-thumbnail\" src="+ "/resources/img/default-picture.png" + ">";
							} else {
								text = "<img  width=\"350\" height=\"350\" class=\"avatar img-circle img-thumbnail\" src="+ data["memberPhotoURL"] + ">";
							}
							if (data["memberNickName"] != null) {
								$("#userIndexNickName").html("<h1>"+data["memberNickName"]+" 的個人資訊</h1>");
							} 
							$("#result1").html(text);
							$("#result2").html(text);
						}
					});
		}
		function updatefunc() {
			// 			alert($("#memberFitstName").val());
			$.ajax({
				url : "/admin/memberBeans/update",
				data : {
					memberPhotoURL : $("memberPhotoURL").val(),
					memberId : $("#memberId").val(),
					memberFitstName : $("#memberFitstName").val(),
					memberLastName : $("#memberLastName").val(),
					memberNickName : $("#memberNickName").val(),
					memberPhonenum : $("#memberPhonenum").val(),
					memberEmail : $("#memberEmail").val(),
					memberLocation : $("#memberLocation").val(),
				},
				type : "POST",
				success : function(data) {
					alert("更新成功");
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

				}

				reader.readAsDataURL(input.files[0]);

			}

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
					$("#preview_progressbarTW_img").attr('width', '350');
					$("#preview_progressbarTW_img").attr('height', '350');
					// 				       $("#preview_progressbarTW_img").attr('class', 'avatar img-circle img-thumbnail');
				}

				reader.readAsDataURL(input.files[0]);

			}

		}
	</script>




</body>
</html>
