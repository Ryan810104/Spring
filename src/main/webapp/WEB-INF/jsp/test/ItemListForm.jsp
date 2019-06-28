<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
<!-- 		<div> -->
<%-- 		<img width='100' height='200' src="<c:url value='/getPicture/${member.memberId}'/>"/> --%>
<!-- 		</div> -->
		<form id="itemInsert" name="itemInsert"
			action="/admin/itemlist/insert" method="post">
			<table>
				<tr>
					<td>禮包名稱 :</td>
					<td><input type="text" id="itemName" name="itemName"
						value="${ItemParam.itemName}"></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td>禮包價格 :</td>
					<td><input type="text" id="itemCost" name="itemCost" value=""></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td>禮包圖片 :</td>
					<td><input type="file" id="itemPhoto" name="itemPhoto"
						value=""></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="新增"></td>
				</tr>

			</table>

			<p style="color: red">${ErrorMsg.itemInsertError}</p>

		</form>

		<form id="itemDelete" name="itemDelete"
			action="/admin/itemlist/delete" method="post">
			<table>
				<tr>
					<td>禮包名稱 :</td>
					<td><input type="text" id="itemName" name="itemName" value=""></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="刪除"></td>
				</tr>

			</table>

			<p style="color: red">${ErrorMsg.itemDeleteError}</p>

		</form>

		<form id="itemUpdate" name="itemUpdate"
			action="/admin/itemlist/update" method="post">
			<table>
				<tr>
					<td>禮包名稱 :</td>
					<td><input type="text" id="itemName" name="itemName" value=""></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td>禮包價格 :</td>
					<td><input type="text" id="itemCost" name="itemCost" value=""></td>
					<td style="color: red"></td>
				</tr>
				<tr>
					<td align="right"><input type="submit" value="更新"></td>
				</tr>

			</table>

			<p style="color: red">${ErrorMsg.itemUpdateError}</p>

		</form>
	</div>
</body>
</html>