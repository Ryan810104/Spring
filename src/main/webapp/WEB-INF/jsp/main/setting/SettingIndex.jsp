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
	<form class="form" action="/admin/memberBeans/update" method="post"
		id="updateForm">
		<article class="content moe">
			<!-- WRITE YOUR CONTEXT HERE -->
			<div class="container bootstrap snippet">
				<div class="row">
					<div class="col-sm-10">
						<h1>User name</h1>
					</div>
					<div class="col-sm-2">
						<a href="/users" class="pull-right"><img title="profile image"
							class="img-circle img-responsive"
							src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<!--left col-->



						<div class="text-center">




						

							

						</div>
						<!--/col-3-->
						<div class="col-sm-9">
							
							<img
								src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
								class="avatar img-circle img-thumbnail" alt="avatar">
							<h6>Upload a different photo...</h6>
							<input type="file" class="text-center center-block file-upload"
								id="memberPhotoURL" name="memberPhotoURL">
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
										class="form-control" name="memberFitstName" id="memberFitstName"
										placeholder="姓" title="enter your first name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name"><h4>名</h4></label> <input type="text"
										class="form-control" name="memberLastName" id="memberLastName"
										placeholder="名" title="enter your last name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="last_name"><h4>暱稱</h4></label> <input type="text"
										class="form-control" name="memberNickName" id="memberNickName"
										placeholder="暱稱" title="enter your last name if any.">
								</div>
							</div>
							<div class="form-group">

								<div class="col-xs-6">
									<label for="phone"><h4>連絡電話</h4></label> <input type="text"
										class="form-control" name="memberPhonenum" id="memberPhonenum"
										placeholder="連絡電話" title="enter your phone number if any.">
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
										class="form-control" id="memberLocation" name="memberLocation"
										placeholder="住址" title="enter a location">
								</div>
							</div>

							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success" type="button"
										id="updateButton">
										<i class="glyphicon glyphicon-ok-sign" id=""></i> Save
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
		$(document).ready(function() {
			findBymemberId();

		});
		$('#updateButton').click(function() {
			updatefunc();
		});
		function findBymemberId() {
			$.ajax({
				url : "/admin/memberBeans/findBymemberId",
				data : {
					memberId : $("#memberId").val(),
				},
				type : "POST",
				success : function(data) {
					$("#memberId").val(data["memberId"])
					$("#memberFitstName").val(data["memberFitstName"]);
					$("#memberLastName").val(data["memberLastName"]);
					$("#memberNickName").val(data["memberNickName"]);
					$("#memberPhonenum").val(data["memberPhonenum"]);
					$("#memberEmail").val(data["memberEmail"]);
					$("#memberLocation").val(data["memberLocation"]);
				}
			});
		}
		function updatefunc() {
			$.ajax({
				url : "/admin/memberBeans/update",
				data : {
					memberPhotoURL : $("memberPhotoURL").val(),
					memberId : $("#memberId").val(),
					memberFitstName : $("#memberFirstName").val(),
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
	</script>




</body>
</html>
