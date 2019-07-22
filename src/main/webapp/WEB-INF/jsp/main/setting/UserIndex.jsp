<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<style type="text/css">
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<form class="form" action="" method="post"
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
						<input value="${memberNum}" id="ownerMemberNum" name="ownerMemberNum" style="display:none">


						<div class="text-center"></div>
						<!--/col-3-->
						<div>
							<div class="col-sm-9" id="result1" style="position:relative;left:10%;"></div>
							<br>
							<div id="modifyMemberInfo"></div>
							
							<hr>


						</div>
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
									<input type="text" value="${sessionScope.member.memberId}"
										id="memberId" name="memberId" style="display:none">
										<input type="text" value="${sessionScope.member.memberNum}"
										id="memberNum" name="memberNum" style="display:none">
									<div class="col-xs-6" id="memberFitstName"></div>
								</div>
								<div class="form-group">

									<div class="col-xs-6" id="memberLastName"></div>
								</div>
								<div class="form-group">

									<div class="col-xs-6" id="memberNickName"></div>
								</div>
								<div class="form-group">

									<div class="col-xs-6" id="memberPhonenum"></div>
								</div>
								<div class="form-group">

									<div class="col-xs-6" id="memberEmail"></div>
								</div>
								<div class="form-group">

									<div class="col-xs-6" id="memberLocation"></div>
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
// 			console.log("ownerMemberNum="+$("#ownerMemberNum").val());
// 			console.log("memberNum="+$("#memberNum").val());
			if($("#ownerMemberNum").val()==$("#memberNum").val()){
				$("#modifyMemberInfo").html("<a href= ></a><input type =\"button\" onclick=\"javascript:location.href=\'/main/setting\'\" value=\"修改個人資料\" style=\"font-family: 微軟正黑體; font-family: 微軟正黑體; font-size: 150%;position:relative;left:25%;\"></input>");
			}

		});
		function findBymemberId() {
			$
					.ajax({
						url : "/admin/memberBeans/findBymemberNum",
						data : {
							memberNum : $("#ownerMemberNum").val(),
						},
						type : "POST",
						success : function(data) {
							$("#memberId").val(data["memberId"])
							if (data["memberFitstName"] == null) {
								$("#memberFitstName")
										.html(
												"<label for=\"first_name\"><h4>姓</h4></label><br>"
														+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%;\">"
														+ "暫無資料" + "</p>");
							} else {
								$("#memberFitstName")
										.html(
												"<label for=\"first_name\"><h4>姓</h4></label><br>"
														+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%;\">"
														+ data["memberFitstName"]
														+ "</p>");
							}
							;
							if (data["memberLastName"] == null) {
								$("#memberLastName")
								.html(
										"<label for=\"last_name\"><h4>名</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ "暫無資料"
												+ "</p>");
							} else {
								$("#memberLastName")
								.html(
										"<label for=\"last_name\"><h4>名</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ data["memberLastName"]
												+ "</p>");
							}
							if (data["memberNickName"] == null) {
								$("#memberNickName")
								.html(
										"<label for=\"last_name\"><h4>暱稱</h4></label>"
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ "暫無資料"
												+ "</p>");
							} else {
								$("#memberNickName")
								.html(
										"<label for=\"last_name\"><h4>暱稱</h4></label>"
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ data["memberNickName"]
												+ "</p>");
								$("#userIndexNickName").html("<h1>"+data["memberNickName"]+" 的個人資訊</h1>");
							}
												
							if (data["memberPhonenum"] == null||data["memberPhonenum"] == "") {
								$("#memberPhonenum")
								.html(
										"<label for=\"phone\"><h4>連絡電話</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ "暫無資料"
												+ "</p>");
							} else {
								$("#memberPhonenum")
								.html(
										"<label for=\"phone\"><h4>連絡電話</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ data["memberPhonenum"]
												+ "</p>");
							}
							if (data["memberEmail"] == null) {
								$("#memberEmail")
								.html(
										"<label for=\"email\"><h4>郵件</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ "暫無資料"
												+ "</p>");
							} else {
								$("#memberEmail")
								.html(
										"<label for=\"email\"><h4>郵件</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ data["memberEmail"]
												+ "</p>");
							}
							if (data["memberLocation"] == null) {
								$("#memberLocation")
								.html(
										"<label for=\"email\"><h4>住址</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+"暫無資料"
												+ "</p>");
							} else {
								$("#memberLocation")
								.html(
										"<label for=\"email\"><h4>住址</h4></label> "
												+ "<p style=\"width:500px;border:1px black solid;padding:5px;margin:0px;background-color:white;border-radius: 5px;font-family: 微軟正黑體;font-size: 150%\">"
												+ data["memberLocation"]
												+ "</p>");
							}
							
							
							
							
							
							if (data["memberPhotoURL"] == null) {
								text = "<img class=\"avatar img-circle img-thumbnail\" src="+ "/resources/img/default-picture.png" + ">";
							} else {
								text = "<img  class=\"avatar img-circle img-thumbnail\" src="+ data["memberPhotoURL"] + ">";
							}
							$("#result1").html(text);
						}
					});
		}
	</script>




</body>
</html>
