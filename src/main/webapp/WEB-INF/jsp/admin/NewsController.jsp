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
	<div class="wrapper" style="background-color:#DDDDDD;">
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
				<input type="text" id="newsnum" name="newsnum" style="display:none"/>
				<input type="text" id="newstitle" name="title" placeholder="請輸入種類"/><br>
				<input type="text"  id= "newsbriefcontent" name="briefcontent" placeholder="請輸入主旨"/><br>
				<textarea cols="50" id= "newscontent" rows="10" placeholder="請輸入內文"></textarea>
				</form>
				</div>
				<div class="col-sm-6">
				<input type="button" id="newsadd" class="btn btn-success" value="新增"/>
				<input type="button" id="newsupdate" class="btn btn-primary" value="修改"/>
				<input type="button" id="newsdelete" class="btn btn-danger" value="刪除"/>
				
				</div>
				</div>
				<hr>
				<div class="row">
				<div class="col-sm-12">
				<div id="newsresult" style="overflow: scroll; border: 1px solid black; height: 20rem; width: 68rem; font-size: 12px; margin-top: 10px;">
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
	</div>
</body>
<script>
$(document).ready(function(){
	$.ajax({
		url : "/main/news/printall",
		type: "GET",
		success : function(data){
			text = "<table id=\"numbercount\" style=\"text-align:center\" class=\" table table-sm table-hover\">";
			text += "<tr><th>流水號</th><th>種類</th><th>主旨</th><th>內文</th></tr>"
			for (var i = 0 ; i < data.length ; i++){
				text += "<tr onclick=\"newsclick("+ data[i]["newsnum"]+ ");\" class=\"col\""+ "id = row"+ data[i]["newsnum"] + ">";
			text += "<td style=\"width:3.5rem\">"+ data[i]["newsnum"]+ "</td>";
			text += "<td>"+ data[i]["title"]+ "</td>";
			text += "<td>"+ data[i]["briefcontent"]+ "</td>";
			text += "<td>"+ data[i]["content"]+ "</td>";
			text += "</tr>";
			}
			text += "<table>"
			$("#newsresult").html(text);
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
});

function newsclick(id){
	$.ajax({
		url : "/main/news/findone?id="+ id,
		type: "GET",
		success : function(Jdata){
			$("#newstitle").val(Jdata.title)
			$("#newsbriefcontent").val(Jdata.briefcontent);
			$("#newscontent").val(Jdata.content);
			$("#newsnum").val(Jdata.newsnum);
		},
		error : function(Jdata){
			alert("aasdasdasd");
		},
	})
}


$("#newsadd").click(function(){
	$.ajax({
		url : "/main/news/insert?title="+$("#newstitle").val()+"&briefcontent="+$("#newsbriefcontent").val()+"&content="+$("#newscontent").val(),
		type: "GET",
		success : function(data){
			alert("已新增成功");
			location.reload();
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
});
$("#newsupdate").click(function(){
	$.ajax({
		url : "/main/news/update?newsnum="+$("#newsnum").val()+"&title="+$("#newstitle").val()+"&briefcontent="+$("#newsbriefcontent").val()+"&content="+$("#newscontent").val(),
		type: "GET",
		success : function(data){
			alert("已修改成功");
			location.reload();
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
});
$("#newsdelete").click(function(){
	$.ajax({
		url : "/main/news/delete?newsnum="+$("#newsnum").val(),
		type: "GET",
		success : function(data){
			alert("已刪除成功");
			location.reload();
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
})
</script>
</html>