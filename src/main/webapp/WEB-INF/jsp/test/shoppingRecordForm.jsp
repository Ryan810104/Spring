<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="shoppingRecordInsert" name="shoppingRecordInsert" action="/admin/shoppingrecord/insert"
		method="post">
		<table>
			<tr>
				<td>會員帳號:</td>
				<td><input type="text" id="memberId" name="memberId"
					value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>禮包名稱 :</td>
				<td><input type="text" id="itemName" name="itemName" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>禮包售價 :</td>
				<td><input type="text" id="itemCost" name="itemCost" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>數量 :</td>
				<td><input type="text" id="purchaseQuantity" name="purchaseQuantity" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>總額 :</td>
				<td><input type="text" id="actualCost" name="actualCost" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>本次折扣 :</td>
				<td><input type="text" id="discount" name="discount" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="新增"></td>
			</tr>

		</table>

		<p style="color: red">${ErrorMsg.shoppingRecordInsertError}</p>

	</form>

	<form id="shoppingRecordDelete" name="shoppingRecordDelete" action="/admin/shoppingrecord/delete"
		method="post">
		<table>
			<tr>
				<td>訂單編號 :</td>
				<td><input type="text" id="orderNum" name="orderNum" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="刪除"></td>
			</tr>

		</table>

		<p style="color: red">${ErrorMsg.shoppingRecordDeleteError}</p>

	</form>
	
	<form id="shoppingRecordUpdate" name="shoppingRecordUpdate" action="/admin/shoppingrecord/update"
		method="post">
		<table>
			<tr>
				<td>訂單編號 :</td>
				<td><input type="text" id="orderNum" name="orderNum" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td>總額 :</td>
				<td><input type="text" id="actualCost" name="actualCost" value=""></td>
				<td style="color: red"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="更新"></td>
			</tr>

		</table>

		<p style="color: red">${ErrorMsg.shoppingRecordUpdateError}</p>

	</form>







</body>
</html>