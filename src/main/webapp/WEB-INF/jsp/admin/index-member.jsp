<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("delete1").addEventListener("click", delete1);
		document.getElementById("update1").addEventListener("click", update2);
		document.getElementById("insert1").addEventListener("click", insert1);
		document.getElementById("find1").addEventListener("click", find1);
	});
	function delete1() {
		document.form1.action = "/admin/member/delete";
		document.form1.submit();
	}
	function update2() {
		document.form1.action = "/admin/member/update";
		document.form1.submit();
	}
	function insert1() {
		document.form1.action = "/admin/member/insert";
		document.form1.submit();
	}
	function find1() {
		document.form1.action = "/admin/member/findone";
		document.form1.submit();
	}
</script>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp"></jsp:include>
		<!-- start context -->
		<div class="container">
			<!-- Write your data here -->
			<form name="form1" id="form1" action="" method="POST">
				<table border='3'>
					<thead>
						<tr bgcolor='tan'>
							<th height="60" colspan="2" align="center">新增高速公路資料</th>
						</tr>
					</thead>
					<tbody>
						<tr bgcolor='tan'>
							<td width="120" height="40">id:</td>
							<td width="400" height="40" align="left"><input
								id='highwaynameid' style="text-align: left" name="id"
								type="text" size="15" value="${param.id}"> <span
								id="checkHighwayName"></span>
								<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.highwayName}</div>
							</td>
						</tr>
						<tr bgcolor='tan'>
							<td width="120" height="40">password:</td>
							<td width="400" height="40" align="left"><input
								id='password' style="text-align: left" name="password"
								type="text" size="15" value="${param.password}"> <span
								id="checkHighwayName"></span>
								<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.highwayName}</div>
							</td>
						</tr>
						<tr bgcolor='tan'>
							<td width="120" height="40">email:</td>
							<td width="400" height="40" align="left"><input id='email'
								style="text-align: left" name="email" type="text" size="15"
								value="${param.email}"> <span id="checkHighwayName"></span>
								<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.highwayName}</div>
							</td>
						</tr>
						<tr bgcolor='tan'>
							<td width="120" height="40">phone:</td>
							<td width="400" height="40" align="left"><input id='phone'
								style="text-align: left" name="phone" type="text" size="15"
								value="${param.phone}"> <span id="checkHighwayName"></span>
								<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.highwayName}</div>
							</td>
						</tr>

						<tr bgcolor='tan'>
							<td height="50" colspan="2" align="center"><input
								id="delete1" type="button" value="delete"> <input
								id="update1" type="button" value="update"> <input
								id="insert1" type="button" value="insert"> <input
								id="find1" type="button" value="find"></td>
						</tr>

					</tbody>
				</table>
				<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
			</form>
			<!-- insert footer in the end of context -->
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- Your data ends here -->
			<!-- End of context -->
		</div>
		<!-- End of wrapper -->
	</div>
</body>
</html>