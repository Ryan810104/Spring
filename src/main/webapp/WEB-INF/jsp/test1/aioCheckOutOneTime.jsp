<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>準備建立交易訂單</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
	
<link href="/resources/css/signin.css" rel="stylesheet">
</head>
<body>
<div class="form-signin">
	<div align="center" class="card border-dark mb-3"  style="max-width: 50rem;">
		<p></p>
		
		<form:form action="" method="POST" id="aio" >
<!-- 			語言 -->
			<select id="Language" name="Language" class="selectpicker" >
				<option value="">繁體中文</option>
				<option value="ENG">英語</option>
				<option value="KOR">韓語</option>
				<option value="JPN">日語</option>
				<option value="CHI">檢體中文</option>
			</select>
		
			<br>
<!-- 			備註 -->
			<form:input type="text" path="Remark" placeholder="備註:" name="備註"  class="col-sm-10"/>
			<br>
			<br>
			<input type="submit" value="Submit"  class="btn btn-success btn-lg"/>
			<br>
			<br>
		</form:form>
		<form method = "GET"  action = "<%=request.getContextPath()%>">
	<table>
<!-- 		<tr> -->
<!-- 			<td> -->
<!-- 				<input type = "submit" value = "back to Home"  class="btn btn-secondary"/> -->
<!-- 			</td> -->
<!-- 		</tr> -->
	</table>
</form>
	</div>
	</div>
	<!-- jquery include ajax -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<!-- 	bootstrap 4.3.1 -->
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
	
</body>
</html>