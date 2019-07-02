function statusChangeCallback(response) {
			console.log('FB連線中');
			console.log(response);
			console.log(response.status);

			if (response.status === "connected") {
//				document.getElementById('status').innerHTML = '已連線';

				FB.api("/me", function(response) {
					console.log("成功登入" + response.name + "帳號");
//					document.getElementById('status').innerHTML = '感謝登入，'
//							+ response.name;
					localStorage.setItem("key",response.name);
					console.log(localStorage.getItem("key"));
				})
			} else {
//				document.getElementById('status').innerHTML = '請進行登入';
				localStorage.setItem("key",response.name);
				console.log(localStorage.getItem("key"));
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

//		document.getElementById('share-button').addEventListener('click',
//				function() {
//					FB.ui({
//						method : 'share',
//						href : window.location.href
//					}, function(response) {
//						if (!response) {
//							console.log('User did not share the page.');
//						} else {
//							console.log('User shared the page!');
//						}
//					});
//				});
//		document.getElementById('like-button').addEventListener('click',
//				function() {
//					FB.ui({
//						method : 'share_open_graph',
//						action_type : 'og.likes',
//						action_properties : JSON.stringify({
//							object : window.location.href
//						})
//					}, function(response) {
//						if (!response) {
//							console.log('User did not share the page.');
//						} else {
//							console.log('User shared the page!');
//						}
//					});
//				});
//		document.getElementById('send-button').addEventListener('click',
//				function() {
//					FB.ui({
//						method : 'send',
//						link : window.location.href
//					}, function(response) {
//						if (!response) {
//							console.log('User did not share the page.');
//						} else {
//							console.log('User shared the page!');
//						}
//					});
//				});
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