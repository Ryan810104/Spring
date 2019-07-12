<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<style type="text/css">
table {
	margin-top: 20px;
	margin-bottom: 20px;
	margin-left: 15px;
}

form {
	/* 	margin-left:10px; */
	
}

td {
	word-wrap: break-word;
	max-width: 120px;
	border-right: 1px solid;
	padding: 6px;
}

tbody tr:hover {
	background-color: #CCEEFF;

	/* color:#FF0000; */
}

tbody td:hover {
	/* background-color: #DFE7F2; */
	color: #FF0000;
	border-right: 1px solid black;
}
</style>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>
<script>

	$.ajax({
		url : "/main/complain/query1",
		type : "POST",
		success : function(data) {
			showByGame(data);
		}
	});
	function showByGame(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>"+ data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintMessagetime"] + "</td>" + "<td style='text-align:center;'>"
						+ "<button data-toggle='modal' data-target='#showComplaintPic' onclick='showImg("+data[i]["complaintNum"]+")'>"+"<img id='file_download' width='25' height='25' src='/resources/img/file-download.jpg' />"+"</button>"+ "</td><tr>";
			}
			//alert(opt);
			$("#showByGame").append(opt);
		}, 4);	
	}
	$.ajax({
		url : "/main/complain/query4",
		type : "POST",
		success : function(data) {
			showByGameR(data);
		}
	});
	function showByGameR(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintResponse"] + "</td>" + "<td>"
						+ data[i]["complaintResponsetime"] + "</td><tr>";
			}
			//alert(opt);
			$("#showByGameR").append(opt);
		}, 4);	
	}

	$.ajax({
		url : "/main/complain/query2",
		type : "POST",
		success : function(data) {
			showByWeb(data);
		}
	});
	function showByWeb(data) {
		//alert(data);
		setTimeout(() => {
		var opt = "";
		for (i in data) {	
			opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
					+ data[i]["memberId"] + "</td>" + "<td>"
					+ data[i]["complaintMessage"] + "</td>" + "<td>"
					+ data[i]["complaintMessagetime"] + "</td>" + "<td style='text-align:center;'>"
					+ "<button data-toggle='modal' data-target='#showComplaintPic' onclick='showImg("+data[i]["complaintNum"]+")'>"+"<img id='file_download' width='25' height='25' src='/resources/img/file-download.jpg' />"+"</button>"+ "</td><tr>";
		}
		//alert(opt);
		$("#showByWeb").append(opt);
		}, 4);
	}
	$.ajax({
		url : "/main/complain/query5",
		type : "POST",
		success : function(data) {
			showByWebR(data);
		}
	});
	function showByWebR(data) {
		//alert(data);
		setTimeout(() => {
		var opt = "";
		for (i in data) {	
			opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
					+ data[i]["complaintMessage"] + "</td>" + "<td>"
					+ data[i]["complaintResponse"] + "</td>" + "<td>"
					+ data[i]["complaintResponsetime"] + "</td><tr>";
		}
		//alert(opt);
		$("#showByWebR").append(opt);
		}, 4);
	}

	$.ajax({
		url : "/main/complain/query3",
		type : "POST",
		success : function(data) {
			showByPay(data);
		}
	});
	function showByPay(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintMessagetime"] + "</td>" + "<td style='text-align:center;'>"
						+ "<button data-toggle='modal' data-target='#showComplaintPic' onclick='showImg("+data[i]["complaintNum"]+")'>"+"<img id='file_download' width='25' height='25' src='/resources/img/file-download.jpg' />"+"</button>"+ "</td><tr>";
			}
			//alert(opt);
			$("#showByPay").append(opt);
			}, 4);	
	}
	$.ajax({
		url : "/main/complain/query6",
		type : "POST",
		success : function(data) {
			showByPayR(data);
		}
	});
	function showByPayR(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintResponse"] + "</td>" + "<td>"
						+ data[i]["complaintResponsetime"] + "</td><tr>";
			}
			//alert(opt);
			$("#showByPayR").append(opt);
			}, 4);	
	}
	
	$.ajax({
		url : "/main/complain/query7",
		type : "POST",
		success : function(data) {
			showByInteract(data);
		}
	});
	function showByInteract(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintMessagetime"] + "</td>" + "<td style='text-align:center;'>"
						+ "<button data-toggle='modal' data-target='#showComplaintPic' onclick='showImg("+data[i]["complaintNum"]+")'>"+"<img id='file_download' width='25' height='25' src='/resources/img/file-download.jpg' />"+"</button>"+ "</td><tr>";
			}
			//alert(opt);
			$("#showByInteract").append(opt);
			}, 4);	
	}
	$.ajax({
		url : "/main/complain/query8",
		type : "POST",
		success : function(data) {
			showByInteractR(data);
		}
	});
	function showByInteractR(data) {
		//alert(data);
		setTimeout(() => {
			var opt = "";
			for (i in data) {
				opt += "<tr><td>" + data[i]["complaintNum"] + "</td>" + "<td>"
						+ data[i]["complaintMessage"] + "</td>" + "<td>"
						+ data[i]["complaintResponse"] + "</td>" + "<td>"
						+ data[i]["complaintResponsetime"] + "</td><tr>";
			}
			//alert(opt);
			$("#showByInteractR").append(opt);
			}, 4);	
	}
	
</script>
<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->

		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-item nav-link active" id="nav-home-tab"
					data-toggle="tab" href="#nav-home" role="tab"
					aria-controls="nav-home" aria-selected="true"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">遊戲問題</a>
				<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
					href="#nav-profile" role="tab" aria-controls="nav-profile"
					aria-selected="false"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">網頁問題</a>
				<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
					href="#nav-contact" role="tab" aria-controls="nav-contact"
					aria-selected="false"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">儲值問題</a>


				<a class="nav-item nav-link" id="nav-interact-tab" data-toggle="tab"
					href="#nav-interact" role="tab" aria-controls="nav-interact"
					aria-selected="false"
					style="font-family: 微軟正黑體; font-size: 180%; color: #FF44AA; background-color:">社群問題</a>









			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab" style="background-color:">

				<div class="container">
					<div class="row">
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #0066FF;">
									<tr>
										<th>未處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>會員ID</th>
										<th>投訴內容</th>
										<th>投訴時間</th>
										<th>截圖檔</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByGame"></tbody>
							</table>
						</div>

						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #00AA55;">
									<tr>
										<th>已處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>投訴內容</th>
										<th>回覆內容</th>
										<th>回覆時間</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByGameR"></tbody>
							</table>
						</div>

					</div>
					<hr>
				</div>
			</div>


			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab" style="background-color:">
				<div class="container">
					<div class="row">
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #0066FF;">
									<tr>
										<th>未處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>會員ID</th>
										<th>投訴內容</th>
										<th>投訴時間</th>
										<th>截圖檔</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByWeb"></tbody>
							</table>
						</div>
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #00AA55;">
									<tr>
										<th>已處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>投訴內容</th>
										<th>回覆內容</th>
										<th>回覆時間</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByWebR"></tbody>
							</table>
						</div>
					</div>
					<hr>
				</div>
			</div>


			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab" style="background-color:">
				<div class="container">
					<div class="row">
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #0066FF;">
									<tr>
										<th>未處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>會員ID</th>
										<th>投訴內容</th>
										<th>投訴時間</th>
										<th>截圖檔</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByPay"></tbody>
							</table>
						</div>
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #00AA55;">
									<tr>
										<th>已處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>投訴內容</th>
										<th>回覆內容</th>
										<th>回覆時間</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByPayR"></tbody>
							</table>
						</div>
					</div>
					<hr>
				</div>
			</div>

			<div class="tab-pane fade" id="nav-interact" role="tabpanel"
				aria-labelledby="nav-interact-tab" style="background-color:">
				<div class="container">
					<div class="row">
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #0066FF;">
									<tr>
										<th>未處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>會員ID</th>
										<th>投訴內容</th>
										<th>投訴時間</th>
										<th>截圖檔</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByInteract"></tbody>
							</table>
						</div>
						<div class="col-6">
							<table>
								<thead style="font-size: 120%; color: #00AA55;">
									<tr>
										<th>已處理:</th>
									</tr>
									<tr>
										<th>編號</th>
										<th>投訴內容</th>
										<th>回覆內容</th>
										<th>回覆時間</th>
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="showByInteractR"></tbody>
							</table>
						</div>
					</div>
					<hr>
				</div>
			</div>



		</div>


		<div class="container">
			<div class="row">
				<div class="col-6">
					<form action="/main/complain/responseComplaint" name="formCR"
						method="POST" class="">

						<div class="col-md-2 mb-2">
							<label style="font-size: 150%" for="complaintNum">編號:</label> <input
								type="text" style="font-size: 120%" class="form-control"
								id="complaintNum" name="complaintNum">
						</div>

						<div class="col-md-11 mb-3">
							<label style="font-size: 150%" for="complaintResponse">回覆:</label>
							<span id="responseSp" style="color: red"></span>
							<textarea style="font-size: 120%" class="form-control"
								id="complaintResponse" name="complaintResponse" rows="3"></textarea>
						</div>

						<div class="col-md-6 mb-5">
							<button type="button" class="btn btn-outline-info" id="sendout"
								style="font-size: 150%; margin-left: 405px">送出</button>
						</div>

					</form>
				</div>

				<div class="col-6">

					<div class="col-md-7 mb-3">

						<div class="input-group">
							<label style="font-size: 150%" for="articleNum">文章編號:</label> <input
								type="text" class="form-control" id="articleNum"
								name="articleNum" style="font-size: 120%">
							<div class="input-group-append">
								<button class="btn btn btn-danger" type="button"
									style="font-size: 120%;" id="search">搜尋</button>
							</div>
						</div>
						<span id="searchSp"></span>

					</div>

					<div class="col-md-7 mb-2"
						style="font-size: 150%; word-wrap: break-word; max-width: 460px;">
						爭議內容: <span style="color: #FF44AA" id="searchResult"></span>
					</div>
					<div class="col-md-7 mb-2"
						style="font-size: 150%; word-wrap: break-word; max-width: 460px;">
						違規帳號: <span style="color:	#CC0000" id="searchViolator"></span>
					</div>



				</div>

			</div>
		</div>

		<script>
		function addTimes(){
			$.ajax({
				url:"/admin/memberBeans/addIllegalTimes",
				data:{
					violator:$("#xxx").html(),
				},
				type : "POST",
				success : function(data) {
					alert("違規次數增加成功");							
				},
				error : function(data){
					alert("玩家已被停權");
					
				},
				
				
			});
		};
		
		
		
$("#search").click(function(){
	let theSearch = document.getElementById("articleNum").value.trim();
	
	if(theSearch!=""){	
		searchArticle();
		searchViolator();
	}else{
		document.getElementById("searchSp").innerHTML = "<n style='color:red;font-size: 120%;margin-left:90px;'>請輸入文章編號</n>";
		$("#searchResult").html("");
		$("#searchViolator").html("");
	}	
	
});

function searchArticle(){
	  $.ajax({
		  	url : "/main/complain/findByCMBnum",
		  	data : {
		  		CMBnum : $("#articleNum").val(),
			},
			type : "POST", 
			success : function(data) {
				if(data["customermessageboardMessage"]!=null){
					document.getElementById("searchSp").innerHTML ="";
					$("#searchResult").html(data["customermessageboardMessage"]);
					
				}else{
					document.getElementById("searchSp").innerHTML = "<n style='color:red;font-size: 120%;margin-left:90px;'>搜尋失敗,文章編號不存在</n>";
					$("#searchResult").html("");
					
				}
				
			},


			});
		};
function searchViolator(){
	  $.ajax({
		  	url : "/main/complain/findByCMBnum",
		  	data : {
		  		CMBnum : $("#articleNum").val(),
			},
			type : "POST", 
			success : function(data) {
				if(data["customermessageboardMemberid"]!=null){
					
					$("#searchViolator").html("<span id='xxx'>"+data["customermessageboardMemberid"]+"</span>").append("	<button onclick='addTimes()'>處罰</button>");
					
				}else{
					
					$("#searchViolator").html("");
					
				}
				
			},


			});
		};





</script>


		<div class="modal fade" id="showComplaintPic" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLongTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 150%">案件提供截圖</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close" style="font-size: 200%">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div id="complaintResult"
							style="text-align: center; margin-top: 20px; margin-bottom: 20px"></div>

					</div>


				</div>
			</div>
		</div>

		<script>

		function showImg(complaintNum1){
			$.ajax({
						url : "/main/complain/findBycomplaintNum",
						data : {
							complaintNum : complaintNum1,
						},
						type : "POST",
						success : function(data) {
							if (data["complaintPicURL"] == null) {
								text = "<img width='350' height='350' src="+ "/resources/img/file-notApply.png" + ">";
							} else {
								text = "<img width='350' height='350' src="+ data["complaintPicURL"] + ">";
							}

							$("#complaintResult").html(text);
						}
					});
		}


</script>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
<script>
function responseChk(){
	let theResponse = document.getElementById("complaintResponse").value;
	if(theResponse==""){
		document.getElementById("responseSp").innerHTML = "<i style='margin-left:10px;font-size: 120%' class=\"fas fa-exclamation\"></i><n style='color:red;font-size: 140%'>	不可空白</n>";		
	}else{	
		document.getElementById("responseSp").innerHTML = "";
	}
}
document.addEventListener("DOMContentLoaded", function() {
	document.getElementById("complaintResponse").addEventListener("blur",
			responseChk);
})

$("#sendout").click(function(){
	let theResponse = document.getElementById("complaintResponse").value;
	if(theResponse==""){
		document.getElementById("responseSp").innerHTML = "<i style='margin-left:10px;font-size: 120%' class=\"fas fa-exclamation\"></i><n style='color:red;font-size: 140%'>	不可空白</n>";
	}else
		response();
});
function response(){
	  $.ajax({
		  	url : "/main/complain/responseComplaint?complaintNum="+$("#complaintNum").val()+"&complaintResponse="+$("#complaintResponse").val(),
			type : "GET", 
			success : function(data) {
// 				if(data==1){
// 				alert("回覆成功");
// 				}else{
// 					alert("回覆失敗,先前已回覆");
// 				}
				alert("回覆成功");
				window.location.reload();			
				
			},
			error : function(data){
				alert("回覆失敗,編號不存在");
				window.location.reload();
			}
			});
		};

</script>
</html>
