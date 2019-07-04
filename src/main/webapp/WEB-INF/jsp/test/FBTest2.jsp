<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FB test</title>

</head>
<body>
	<div>
		<button id="share-button" type="button">分享</button>
		<button id="like-button" type="button">Like</button>
		<button id="send-button" type="button">Send</button>
	</div>
	<h3 style="margin-bottom: 5px;">狀態:</h3>
	<div id="status"></div>

	<div id="fb-root">
		<div class="fb-login-button" data-width="" data-size="large"
			data-button-type="login_with" data-auto-logout-link="true"
			data-use-continue-as="true"></div>
	</div>


	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v3.3&appId=2314086598685939&autoLogAppEvents=1">
		
	</script>
	<script>

		function statusChangeCallback(response) {
			console.log('FB連線中');
			console.log(response);
			console.log(response.status);

			if (response.status === "connected") {
				document.getElementById('status').innerHTML = '已連線';

				FB.api("/me", function(response) {
					console.log("成功登入" + response.name + "帳號");
					document.getElementById('status').innerHTML = '感謝登入，'
							+ response.name;
					localStorage.setItem("key",response.name);
				})
			} else {
				document.getElementById('status').innerHTML = '請進行登入';
				// 				FB.login(function() {
				// 					console.log(response);
				// 				}, {
				// 					scope : 'email',
				// 					return_scopes : true
				// 				});
			}

		}
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/zh_TW/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		document.getElementById('share-button').addEventListener('click',
				function() {
					FB.ui({
						method : 'share',
						href : window.location.href
					}, function(response) {
						if (!response) {
							console.log('User did not share the page.');
						} else {
							console.log('User shared the page!');
						}
					});
				});
		document.getElementById('like-button').addEventListener('click',
				function() {
					FB.ui({
						method : 'share_open_graph',
						action_type : 'og.likes',
						action_properties : JSON.stringify({
							object : window.location.href
						})
					}, function(response) {
						if (!response) {
							console.log('User did not share the page.');
						} else {
							console.log('User shared the page!');
						}
					});
				});
		document.getElementById('send-button').addEventListener('click',
				function() {
					FB.ui({
						method : 'send',
						link : window.location.href
					}, function(response) {
						if (!response) {
							console.log('User did not share the page.');
						} else {
							console.log('User shared the page!');
						}
					});
				});
		window.fbAsyncInit = function() {
			//FB JavaScript SDK configuration and setup
			FB.init({
				appId : '2314086598685939', //FB App ID
				cookie : true, //enable cookies to allow the server to access the session
				xfbml : true, //parse social plugins on this page
				version : 'v3.2' //use this graph api version 3.2
			});
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}
		
		alert(localStorage.getItem("key"));
	</script>
</body>
</html>