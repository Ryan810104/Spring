<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
	
	
<link href="/resources/css/signin.css" rel="stylesheet">

	
<title>${info}</title>
</head>
<body>
<div class="form-signin">
<div class="card border-dark mb-3" style="max-width: 30rem;" >
<center>

<h1 class="card-header">${info}</h1>
<h5 class="card-header">請選擇付款方式</h5>
<div class="card-body">
<form method = "GET"  action = "aioCheckOut/aioCheckOutALL">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "不指定付款方式"   class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutATM">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "自動櫃員機"  class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutBARCODE">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "超商條碼" class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutCVS">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "超商代碼"  class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutDevide">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "信用卡分期"  class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "/frontEnd/aioCheckOut/aioCheckOutOneTime">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "信用卡一次付清"  class="btn btn-success"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutPeriod">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "信用卡定期定額" class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "aioCheckOut/aioCheckOutWebATM">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "網路ATM" class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
<form method = "GET"  action = "<%=request.getContextPath()%>">
	<table>
		<tr>
			<td>
				<input type = "submit" value = "back to Home" class="btn btn-secondary"/>
			</td>
		</tr>
	</table>
</form>
</div>
</center>
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
</body>
</html>