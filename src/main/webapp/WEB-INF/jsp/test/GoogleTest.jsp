<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="1068776495873-an2tmha807vsvcqc7f6gg7vpjcrlqerh.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>

</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>

	<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
	
	<input type="text" value="${sessionScope.member.memberEmail}"
		id="memberEmail" style="display: block">
	<input type="text" value="${sessionScope.UID}" id="memberId"
		style="display: block">

	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
	<script>
		function onSignIn(googleUser) {
			// Useful data for your client-side scripts:
			var profile = googleUser.getBasicProfile();
			//      $("#memberEmail").val(profile.getEmail());
			console.log("ID: " + profile.getId()); // Don't send this directly to your server!
			console.log('Full Name: ' + profile.getName());
			console.log('Given Name: ' + profile.getGivenName());
			console.log('Family Name: ' + profile.getFamilyName());
			console.log("Image URL: " + profile.getImageUrl());
			console.log("Email: " + profile.getEmail());
			memberEmail = profile.getEmail();
			memberId = profile.getId();
			memberPhotoUrl = profile.getImageUrl();
			googleLogin(memberEmail);
			// The ID token you need to pass to your backend:
			var id_token = googleUser.getAuthResponse().id_token;
			console.log("ID Token: " + id_token);
		};
		var xhr = new XMLHttpRequest();
		xhr.open('POST', "http://localhost/googleLogin/idtoken");
		xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		xhr.onload = function() {
		  console.log('Signed in as: ' + xhr.responseText);
		};
		xhr.send('idtoken=' + id_token);
		
		
		
		
	</script>

</body>
</html>


