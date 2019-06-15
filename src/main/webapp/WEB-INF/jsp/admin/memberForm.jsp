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
	
	<form id="memberBeansForm" name="memberBeansForm"action="/admin/memberBeans/login" method="post">
		<table>
			<tr>
				<td>ID :</td>
				<td><input type="text" id="memberId" name="memberId" value=""></td>
				<td style="color:red"></td>
			</tr>
			<tr>
				<td>PWD :</td>
				<td><input type="text" id="memberPassword" name="memberPassword" value=""></td>
				<td style="color:red"></td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>