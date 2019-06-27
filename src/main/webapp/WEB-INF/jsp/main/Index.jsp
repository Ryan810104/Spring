<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- 請用LOGIN SUCCESS / FAIL 的值控制輸出頁面 ( ${empty LoginOK}) -->
<!-- 目前是用 LogorNot控制 ; 0 為 未登入 ,1 是登入後-->
<%-- <c:set var="LogorNot" scope="session" value="${0}"/> --%>

<c:choose>
	<c:when test="${!empty sessionScope.UID}">
		<jsp:include page="AfterIndex.jsp" />
   </c:when>
	<c:otherwise>
		<jsp:include page="BeforeIndex.jsp" />
   </c:otherwise>

</c:choose>