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
	<h1>這是member.table目前有的內容</h1>
	<div>${memberList}</div>
	<div>${update}</div>
	<div>${insert}</div>
	<div>${deletesucceed}</div>
	<div>${findById}</div>
	<c:if test="${not empty findById}">
		<table>
				<c:url value="/admin/member/index" var="path">
					<c:param name="id" value="${findById.id}" />
					<c:param name="password" value="${findById.password}" />
					<c:param name="email" value="${findById.email}" />
					<c:param name="phone" value="${findById.phone}" />
				</c:url>
				<tr>
					<td><a href="${path}">${findById.id}</a></td>
					<td>${findById.password}</td>
					<td>${findById.email}</td>
					<td>${findById.phone}</td>
				</tr>

		</table>
	</c:if>
	<button onclick="location='/admin/member/index'">回index</button>

</body>
</html>