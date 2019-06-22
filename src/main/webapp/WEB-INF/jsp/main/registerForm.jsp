
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Login</h3>

	<form id="registerForm" name="registerForm"
		action="/admin/memberBeans/registerForm" method="post">
		<table>
			<tr>
				<td>ID :</td>
				<td><input type="text" id="memberId" name="memberId"
					value="${memberParam.memberId}"></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>PWD :</td>
				<td><input type="password" id="memberPassword"
					name="memberPassword" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>PWD 確認:</td>
				<td><input type="password" id="memberPasswordComfirm"
					name="memberPasswordComfirm" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>eMail :</td>
				<td><input type="text" id="memberEmail"
					name="memberEmail" value="${memberParam.memberEmail}"></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>電話 :</td>
				<td><input type="text" id="memberPhonenum"
					name="memberPhonenum" value="${memberParam.memberPhonenum}"></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>照片 :</td>
				<td><input type="file" id="memberPhoto"
					name="memberPhoto" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="註冊"></td>
			</tr>

		</table>

		<p style="color: red">${ErrorMsg.registerError}</p>

	</form>
</body>
</html>