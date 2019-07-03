<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<form action="/admin/memberBeans/gogo/${sessionScope.member.memberNum}" method="POST" enctype="multipart/form-data">
		<Input Type="File" name="memberPhoto"  accept="image/png, image/jpeg">
		<input type="submit">
		</form>
			<img width='100' height='200' 
     					src="<c:url value='/admin/memberBeans/getPicture/${sessionScope.member.memberNum}' />" />
<%--      							src="<c:url value='/getPicture/${product.bookId}' />" /> --%>
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
</html>
