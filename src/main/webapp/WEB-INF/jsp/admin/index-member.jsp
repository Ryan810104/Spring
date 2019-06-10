<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="form1" action="/admin/member/delete" method="POST">
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
						type="text" size="15"> <span id="checkHighwayName"></span>
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.highwayName}</div>
					</td>
				</tr>

			
				<tr bgcolor='tan'>
					<td height="50" colspan="2" align="center"><input
						type="submit" value="送出"></td>
				</tr>

			</tbody>
		</table>
		<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
	</form>
</body>
</html>