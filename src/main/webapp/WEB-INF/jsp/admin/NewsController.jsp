<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/jsp/fragment/admin-sidebar.jsp"></jsp:include>
		<!-- start context -->
		<div class="container">
					<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
				公告新增 / 查詢 / 刪除
				</nav>
				<br>
				<br>
				
				<div class="container">
				<div class="row">
				<div class="col-sm-6">
				<form class="form">
				<input type="text" id="newstitle" name="title" placeholder="請輸入種類"/><br>
				<input type="text"  id= "newsbriefcontent" name="briefcontent" placeholder="請輸入主旨"/><br>
				<textarea cols="50" id= "newscontent" rows="10" placeholder="請輸入內文"></textarea>
				</form>
				</div>
				<div class="col-sm-6">
				<input type="button" id="newsadd" class="btn btn-success" value="新增"/>
				<input type="button" class="btn btn-primary" value="修改"/>
				<input type="button" class="btn btn-danger" value="刪除"/>
				
				</div>
				</div>
				</div>
			<!-- Write your data here -->
			<!-- Write your data here -->
			<!-- Write your data here -->
			<!-- insert footer in the end of context -->
				<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
			<!-- Your data ends here -->
			<!-- End of context -->
		</div>
		<!-- End of wrapper -->
	</div>
</body>
<script>
$("#newsadd").click(function(){
	$.ajax({
		url : "/main/news/insert?title="+$("#newstitle").val()+"&briefcontent="+$("#newsbriefcontent").val()+"&content="+$("#newscontent").val(),
		type: "GET",
		success : function(data){
			alert("aa");
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
});
</script>
</html>