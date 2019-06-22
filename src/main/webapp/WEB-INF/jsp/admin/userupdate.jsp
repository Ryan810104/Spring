<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
	<form name="beforeupdate">
		<div style="display: block">
			id = <input type="text" id="memberId" name="memberId">
		</div>
		<br>
		<div style="display: block">
			present password = <input type="text" id="memberPassword"
				name="memberPassword"> <span id="checkpassword">${Result}</span>
		</div>
		<br>
	</form>
	<form action="" name="userupdate">
		<div style="display: none">
			id = <input type="text" id="id" name="id" value="">
		</div>
		<br>
		<div style="display: block">
			new password = <input type="text" id="password" name="password">
		</div>
		<br>
		<div style="display: block">
			email = <input type="text" id="email" name="email">
		</div>
		<br>
		<div style="display: block">
			phone = <input type="text" id="phone" name="phone">
		</div>
		<br>
	</form>
	<script>
		$("#memberPassword").blur(function() {
			alert($("#memberId").val())
			alert($("#memberPassword").val());
			searchfunction();
		})

		function searchfunction() {
			$.ajax({
				url : "/admin/memberBeans/beforeupdate",
				type : "POST",
				data : { memberId : $("#memberId").val() , memberPassword : $("#memberPassword").val()},
				success : function() {
					$("#checkpassword").html(${Result})
						
				}
			})
		}
	</script>
</body>
</html>