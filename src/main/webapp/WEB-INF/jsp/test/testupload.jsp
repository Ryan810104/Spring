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
		<h1>測試上傳圖片(圖檔存資料庫)</h1>
		<form action="/admin/memberBeans/gogo/${sessionScope.member.memberNum}" method="POST" enctype="multipart/form-data">
		<Input Type="File" name="memberPhoto"  accept="image/png, image/jpeg">
		<input type="submit">
		</form>
			<img width='100' height='200' 
     					src="<c:url value='/admin/memberBeans/getPicture/${sessionScope.member.memberNum}' />" />
<%--      							src="<c:url value='/getPicture/${product.bookId}' />" /> --%>
		<!-- WRITE YOUR CONTEXT HERE -->
		<h1>測試上傳圖片2(圖檔存伺服器端)</h1>
		<form method="post" enctype="multipart/form-data" action="/admin/memberBeans/uploadImage/${sessionScope.member.memberNum}">
		<input type="text" value="${sessionScope.member.memberId}"
										id="memberId" style="display: none">
		<input type="file" name="imageFile">
		<input type="submit" value="上傳">
		</form>
		<div id="result"></div>
<!-- 		<img width='200' height='200' src="/resources/img/01.jpg"> -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>  
<script>
$(document).ready(function(){
	showImageBymemberId();
});
	
function showImageBymemberId() {
	$.ajax({
		url : "/admin/memberBeans/findBymemberId",
		data : {
			memberId : $("#memberId").val(),
		},
		type : "POST",
		success : function(data) {
			if(data["memberPhotoURL"]==null){
				text="<tr><td><img width='200' height='200' src="+ "/resources/img/default-picture.png" + "></td></tr>";
			}else{
				text="<tr><td><img width='200' height='200' src="+ data["memberPhotoURL"] + "></td></tr>";
			}
			
			$("#result").html(text);
		}
	});
}


</script>   
</body>
</html>
