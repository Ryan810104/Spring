<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="1068776495873-an2tmha807vsvcqc7f6gg7vpjcrlqerh.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link href="/resources/css/CustomBeforeIndex.css" rel="stylesheet">
</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-sm navbar-dark fixed-top" id="mainNav"
		style="background: #6d7fcc; max-height: 5.1rem;">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">EEIT107
				Team2 Demo</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				NoneShow <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">大綱</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">導覽</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">團隊</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">註冊</a></li>
				</ul>
				<div></div>
			</div>
		</div>
		<button class="btn btn-info pull-right  mr-5" data-toggle="modal"
			data-target="#login">&nbsp&nbsp&nbsp&nbsp立即登入&nbsp&nbsp&nbsp&nbsp</button>
	</nav>

	<!-- Header -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in"></div>
				<div class="intro-heading text-uppercase">歡迎您!</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">查看更多</a>
			</div>
		</div>
	</header>

	<!-- Services -->
	<section class="page-section" id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">大綱</h2>
					<h3 class="section-subheading text-muted">網頁主功能介紹</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">購物</h4>
					<p class="text-muted">一起來購物!</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-dice fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">開始遊戲</h4>
					<p class="text-muted">我們有非常多的遊戲等您來挑戰!</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fas fa-circle fa-stack-2x text-primary"></i> <i
						class="fas fa-user-friends fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">社交</h4>
					<p class="text-muted">交朋友!</p>
				</div>
			</div>
		</div>
	</section>
	<!-- About -->
	<section class="bg-light page-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">導覽</h2>
					<h3 class="section-subheading text-muted">跟著步驟，開始遊戲並賺取金幣！</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<span class="fa-stack fa-4x"> <i
									class="fas fa-clipboard-check fa-stack-1x fa-inverse"></i>
								</span>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h6>第一步</h6>
									<h4 class="subheading">註冊</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">填寫以下表格，成為我們的會員吧！</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<span class="fa-stack fa-4x"> <i
									class="fas fa-dice fa-stack-1x fa-inverse"></i>
								</span>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h6>第二步</h6>
									<h4 class="subheading">開始遊戲</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">請選擇遊戲：</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<span class="fa-stack fa-4x"> <i
									class="fas fa-dollar-sign fa-stack-1x fa-inverse"></i>
								</span>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h6>第三步</h6>
									<h4 class="subheading">賺取金幣</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">贏得遊戲，賺取金幣</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<span class="fa-stack fa-4x"> <i
									class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
								</span>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h6>第四步</h6>
									<h4 class="subheading">購物</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">利用您賺取的金幣，開始購物吧！</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<br>
								<h4>開始遊戲</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Team -->
	<section class=" page-section" id="team">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">我們的團隊</h2>
					<h3 class="section-subheading text-muted">團隊介紹</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/1.jpg" alt="">
						<h4>陳峻宏</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/1.jpg" alt="">
						<h4>劉九榕</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/1.jpg" alt="">
						<h4>謝政餘</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/1.jpg" alt="">
						<h4>張人友</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/2.jpg" alt="">
						<h4>王泉</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="team-member">
						<img class="mx-auto rounded-circle"
							src="/resources/img/team/3.jpg" alt="">
						<h4>吳紹銘</h4>
						<p class="text-muted">Background Designer</p>
						<ul class="list-inline social-buttons">
							<li class="list-inline-item"><a href="#"> <i
									class="fas fa-bars"></i>
							</a></li>
							<li class="list-inline-item"><a href="#"> <i
									class="fab fa-facebook-f"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
		function onSignIn(googleUser) {
			// Useful data for your client-side scripts:
			var profile = googleUser.getBasicProfile();
			console.log("ID: " + profile.getId()); // Don't send this directly to your server!
			console.log('Full Name: ' + profile.getName());
			console.log('Given Name: ' + profile.getGivenName());
			console.log('Family Name: ' + profile.getFamilyName());
			console.log("Image URL: " + profile.getImageUrl());
			console.log("Email: " + profile.getEmail());

			// The ID token you need to pass to your backend:
			var id_token = googleUser.getAuthResponse().id_token;
			console.log("ID Token: " + id_token);
		}
		function chkId() {
			let theId = document.getElementById("memberRId").value;
			let theIdLen = theId.length;
			let re = new RegExp("^[a-zA-Z][a-zA-Z0-9]{7,15}$");
			flag1 = false;

			if (theId == "")
				document.getElementById("idsp").innerHTML = "<i style='color:red'>不可空白</i>"
			else if (theIdLen < 16) {
				if (theIdLen >= 8) {
					if (re.test(theId)) {
						flag1 = true;
						document.getElementById("idsp").innerHTML = "<n style='color:#66FFFF'>正確</i>"
					} else
						document.getElementById("idsp").innerHTML = "<i style='color:red'>必須含英文或數字,首字為英文</i>"
				} else
					document.getElementById("idsp").innerHTML = "<i style='color:red'>必須大於8個字</i>"
			} else
				document.getElementById("idsp").innerHTML = "<i style='color:red'>必須小於16個字</i>"
		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberRId")
					.addEventListener("blur", chkId);
		})

		function chkPwd() {
			let thePwd1 = document.getElementById("memberRPassword").value;
			let thePwdLen = thePwd1.length;
			let re = new RegExp("^[a-zA-Z0-9]{7,15}$");
			flag2 = false;

			if (thePwd1 == "")
				document.getElementById("pwdsp1").innerHTML = "<i style='color:red'>不可空白</i>"
			else if (thePwdLen < 16) {
				if (thePwdLen >= 8) {
					if (re.test(thePwd1)) {
						flag2 = true;
						document.getElementById("pwdsp1").innerHTML = "<n style='color:#66FFFF'>正確</i>"
					} else
						document.getElementById("pwdsp1").innerHTML = "<i style='color:red'>必須含英文及數字</i>"
				} else
					document.getElementById("pwdsp1").innerHTML = "<i style='color:red'>必須大於8個字</i>"
			} else
				document.getElementById("pwdsp1").innerHTML = "<i style='color:red'>必須小於16個字</i>"
		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberRPassword").addEventListener("blur",
					chkPwd);
		})

		function chkPwd2() {
			let thePwd1 = document.getElementById("memberRPassword").value;
			let thePwd2 = document.getElementById("memberRPasswordComfirm").value;
			flag3 = false;

			if (thePwd2 == "")
				document.getElementById("pwdsp2").innerHTML = "<i style='color:red'>不可空白</i>"
			else if (thePwd2 === thePwd1) {
				flag3 = true;
				document.getElementById("pwdsp2").innerHTML = "<n style='color:#66FFFF'>正確</i>"
			} else
				document.getElementById("pwdsp2").innerHTML = "<i style='color:red'>錯誤</i>"
		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberRPasswordComfirm").addEventListener(
					"blur", chkPwd2);
		})

		function chkName() {
			let theName = document.getElementById("memberNickName").value;
			let theNameLen = theName.length;
			let re = new RegExp("^[\\u4E00-\\u9FFF]{2,8}$");
			flag4 = true;

			if (theName != "") {
				flag4 = false;
				if (theNameLen <= 8) {
					if (theNameLen >= 2) {
						if (re.test(theName)) {
							flag4 = true;
							document.getElementById("nnsp").innerHTML = "<n style='color:#66FFFF'>正確</n>";

						} else
							document.getElementById("nnsp").innerHTML = "<i style='color:red'>必須全部為中文字</i>";
					} else
						document.getElementById("nnsp").innerHTML = "<i style='color:red'>至少2個字</i>";
				} else
					document.getElementById("nnsp").innerHTML = "<i style='color:red'>需小於8個字</i>";
			} else

				document.getElementById("nnsp").innerHTML = "";
		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberNickName").addEventListener("blur",
					chkName);
		})

		function chkPhone() {
			let thePhone = document.getElementById("memberPhonenum").value;
			let re = new RegExp("^[09]{2}[0-9]{8}$");
			flag5 = false;

			if (thePhone == "") {
				document.getElementById("phonesp").innerHTML = "<i style='color:red'>不可空白</n>";
			} else if (re.test(thePhone)) {
				flag5 = true;
				document.getElementById("phonesp").innerHTML = "<n style='color:#66FFFF'>正確</n>";
			} else
				document.getElementById("phonesp").innerHTML = "<i style='color:red'>錯誤</i>";

		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberPhonenum").addEventListener("blur",
					chkPhone);
		})

		function chkEmail() {
			let theEmail = document.getElementById("memberEmail").value;
			let re = new RegExp(
					"^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$");
			flag6 = true;

			if (theEmail != "") {
				flag6 = false;
				if (re.test(theEmail)) {
					flag6 = true;
					document.getElementById("emailsp").innerHTML = "<n style='color:#66FFFF'>正確</n>";
				} else
					document.getElementById("emailsp").innerHTML = "<i style='color:red'>格式不符</i>";
			} else

				document.getElementById("emailsp").innerHTML = "";
		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("memberEmail").addEventListener("blur",
					chkEmail);
		})

		function chkAll() {
			chkId();
			chkPwd();
			chkPwd2();
			chkName();
			chkPhone();
			chkEmail();

			if (flag1 && flag2 && flag3 && flag4 && flag5 && flag6) {
				document.registerForm.submit();
			}
		}
	</script>

	<!-- Contact -->
	<c:choose>
		<c:when test="${registerResult1==0}">
			<script>
				alert("註冊成功-請重新登入");
			</script>
		</c:when>
		<c:when test="${registerResult1==1}">
			<script type="text/javascript">
				window.location.href = "http://localhost/admin/memberBeans/registerForm#contact"
			</script>
		</c:when>

	</c:choose>

	<section class="page-section" id="contact">
		<div class="container ">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">註冊</h2>
					<h3 class="section-subheading text-muted">//</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4  m-auto" style="color: white">
					<form class="needs-validation" method="POST"
						action="/admin/memberBeans/registerForm" name="registerForm">


						<div class="mb-3">
							<label for="memberRId">ID<span class="text-muted">(必要)必須含英文或數字,首字為英文</span></label>
							<input type="text" class="form-control" id="memberRId"
								name="memberId"><span id="idsp" style="color: red">${ErrorMsg.memberId}</span>
						</div>


						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="memberRPassword">密碼<span class="text-muted">(必要)英文及數字</span></label>
								<input type="password" class="form-control" id="memberRPassword"
									name="memberPassword"><span id="pwdsp1"
									style="color: red">${ErrorMsg.memberPwd}</span>
							</div>
							<div class="col-md-6 mb-3">
								<label for="memberRPasswordComfirm">確認密碼<span
									class="text-muted">(必要)</span></label> <input type="password"
									class="form-control" id="memberRPasswordComfirm"
									name="memberPasswordComfirm"> <span id="pwdsp2"
									style="color: red">${ErrorMsg.memberPwdCon}</span>
							</div>
						</div>

						<div class="mb-3">

							<label for="memberNickName">暱稱<span class="text-muted">(非必要)須為2-8個中文字</span></label>
							<input type="text" class="form-control" id="memberNickName"
								name="memberNickName"> <span id="nnsp"
								style="color: red">${ErrorMsg.memberNickName}</span>

						</div>

						<div class="mb-3">
							<label for="memberPhonenum">手機號碼<span class="text-muted">(必要)</span></label>
							<input type="text" class="form-control" id="memberPhonenum"
								name="memberPhonenum"> <span id="phonesp"
								style="color: red">${ErrorMsg.memberPhonenum}</span>
						</div>

						<div class="mb-3">
							<label for="memberEmail">E-mail <span class="text-muted">(非必要)</span></label>
							<input type="email" class="form-control" id="memberEmail"
								name="memberEmail"> <span id="emailsp"
								style="color: red">${ErrorMsg.memberEmail}</span>
						</div>
						<hr class="mb-4">
						<input type="button" class="btn btn-primary btn-lg btn-block"
							onclick="chkAll()" value="註冊">
					</form>
				</div>
			</div>
		</div>

	</section>

	<!-- Footer -->

	<!-- Modal login-->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">登入</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="memberBeansForm" name="memberBeansForm"
						action="/admin/memberBeans/login" method="post">
						<h4 class="mb-3"></h4>
						<div class="mb-3">
							<label for="inputID">請輸入ID</label> <input type="text"
								id="memberId" name="memberId" value="${memberParam.memberId}"
								class="form-control" placeholder="" required autofocus>
						</div>

						<div class="mb-3">
							<label for="inputPassword">請輸入密碼</label> <input type="password"
								id="memberPassword" name="memberPassword" value=""
								class="form-control" placeholder="" required>
						</div>
						<div class="mb-3">
							<label> <input type="checkbox" value="remember-me">
								Remember me
							</label>
						</div>
						<hr>
						<button class="btn btn-lg btn-primary btn-block" type="submit">登入</button>
						<hr>
						<div id="fb-root">
							<div class="fb-login-button" data-width="" data-size="large"
								data-button-type="login_with" data-auto-logout-link="true"
								data-use-continue-as="true"></div>
							
						</div>
						<div class="g-signin2" data-onsuccess="onSignIn"
								data-theme="dark"></div>
						<p style="color: red">${ErrorMsg.loginError}</p>
					</form>
				</div>


			</div>
		</div>
	</div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v3.3&appId=2314086598685939&autoLogAppEvents=1">
		
	</script>
	<!--     Bootstrap core JavaScript -->
	<!--     <script src="/resources/vendor/jquery/jquery.min.js"></script> -->
	<!--     <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

	<!--     Plugin JavaScript -->
	<!--     <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script> -->

	<!--     Contact form JavaScript -->
	<!--     <script src="/resources/vendor/js/jqBootstrapValidation.js"></script> -->


	<!--     Custom scripts for this template -->
	<!--     <script src="/resources/vendor/js/agency.min.js"></script> -->



</body>
<script src="/resources/js/CustomBeforeIndex.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Noto Sans TC', sans-serif;
}
</style>
</html>