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

 th { 
 	max-width: 100px; 
 } 

td {
	word-wrap: break-word;
	max-width: 100px;
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



<meta charset="UTF-8">
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
	<!-- wrapper -->
	<div class="wrapper" style="background-color: #DDDDDD;">
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/jsp/fragment/admin-sidebar.jsp"></jsp:include>
		<!-- start context -->
		<article class="content moe" style="margin-left: 20px;width:68rem">
			<nav class="navbar navbar-light" style="background-color: #CCDDFF;">
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a class="nav-item nav-link active" id="nav-home-tab"
						data-toggle="tab" href="#nav-home" role="tab"
						aria-controls="nav-home" aria-selected="true"
						style="font-family: 微軟正黑體; font-size: 150%; color: #FF44AA; background-color:"><span><i
							class="fas fa-gamepad"></i></span> 遊戲問題</a> <a class="nav-item nav-link"
						id="nav-profile-tab" data-toggle="tab" href="#nav-profile"
						role="tab" aria-controls="nav-profile" aria-selected="false"
						style="font-family: 微軟正黑體; font-size: 150%; color: #FF44AA; background-color:"><span><i
							class="fas fa-network-wired"></i></span> 網頁問題</a> <a
						class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
						href="#nav-contact" role="tab" aria-controls="nav-contact"
						aria-selected="false"
						style="font-family: 微軟正黑體; font-size: 150%; color: #FF44AA; background-color:"><span><i
							class="fas fa-money-bill"></i></span> 儲值問題</a> <a class="nav-item nav-link"
						id="nav-interact-tab" data-toggle="tab" href="#nav-interact"
						role="tab" aria-controls="nav-interact" aria-selected="false"
						style="font-family: 微軟正黑體; font-size: 150%; color: #FF44AA; background-color:"><span><i
							class="fas fa-users"></i></span> 社群問題</a>
				</div>
			</nav>
			<!-- Write your data here -->
			<!-- Write your data here -->
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab" style="background-color:">

					<div class="container">
						<div class="row">
							<div class="col-6">
								<table>
									<thead style="font-size: 100%; color: #0066FF;">
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
									<tbody style="font-size: 100%" id="showByGame"></tbody>
								</table>
							</div>

							<div class="col-6">
								<table>
									<thead style="font-size: 100%; color: #00AA55;">
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
									<tbody style="font-size: 100%" id="showByGameR"></tbody>
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
									<thead style="font-size: 100%; color: #0066FF;">
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
									<tbody style="font-size: 100%" id="showByWeb"></tbody>
								</table>
							</div>
							<div class="col-6">
								<table>
									<thead style="font-size: 100%; color: #00AA55;">
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
									<tbody style="font-size: 100%" id="showByWebR"></tbody>
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
									<thead style="font-size: 100%; color: #0066FF;">
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
									<tbody style="font-size: 100%" id="showByPay"></tbody>
								</table>
							</div>
							<div class="col-6">
								<table>
									<thead style="font-size: 100%; color: #00AA55;">
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
									<tbody style="font-size: 100%" id="showByPayR"></tbody>
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
									<thead style="font-size: 100%; color: #0066FF;">
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
									<tbody style="font-size: 100%" id="showByInteract"></tbody>
								</table>
							</div>
							<div class="col-6">
								<table>
									<thead style="font-size: 100%; color: #00AA55;">
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
									<tbody style="font-size: 100%" id="showByInteractR"></tbody>
								</table>
							</div>
						</div>
						<hr>
					</div>
				</div>



			</div>


			<div class="container">
				<div class="row">
					<hr>
					<div class="col-6">

						<div class="col-md-12 mb-3">

							<!-- 退款 -->
							<button data-toggle='modal' data-target='#showtopup'
								class="btn btn-primary btn-lg active" onclick="topup();">
								<i class="fas fa-money-bill" style="font-size: 20px"> <span
									style="font-size: 20px; font-family: 微軟正黑體">餘額調整</span>
								</i>
							</button>

						</div>
						<hr>

						<form action="/main/complain/responseComplaint" name="formCR"
							method="POST" class="">

							<div class="col-md-3 mb-2">
								<label
									style="font-weight: bold; font-size: 130%; color: #0066FF;"
									for="complaintNum">編號:</label> <input type="text"
									style="font-size: 120%" class="form-control" id="complaintNum"
									name="complaintNum">
							</div>

							<div class="col-md-12 mb-3">
								<label
									style="font-weight: bold; font-size: 130%; color: #00AA55;"
									for="complaintResponse">回覆:</label> <span id="responseSp"
									style="color: red; float: right"></span>
								<textarea style="font-size: 120%" class="form-control"
									id="complaintResponse" name="complaintResponse" rows="3"></textarea>


							</div>

							<div class="col-md-12 mb-5">
								<button type="button" class="btn btn-success" id="sendout"
									style="font-size: 120%; width: 100%">送出	<i class="fas fa-arrow-alt-circle-right"></i></button>
							</div>

						</form>



					</div>

					<div class="col-6">

						<fieldset
							style="padding: 40px; border-radius: 15px; margin-top: 40px; box-shadow: 3px 3px 10px #666;">
							<legend
								style="width: 200px; border-radius: 5px; background-color: #9999FF; font-family: 標楷體; color: #FFFFFF; font-size: 30px; text-align: left; padding-left: 10px; box-shadow: 2px 2px 4px #666;">
								<span style="margin-left: 10px"><i class="fas fa-search"></i></span>查證/處置
							</legend>

							<div class="col-md-11 mb-2">

								<div class="input-group">
									<label style="font-size: 150%; color: #444444" for="articleNum">文章編號:</label>
									<input type="text" class="form-control" id="articleNum"
										name="articleNum" style="font-size: 120%">
									<div class="input-group-append">
										<button class="btn btn btn-danger" type="button"
											style="font-size: 120%;" id="search">搜尋</button>
									</div>
								</div>
								<span id="searchSp"></span>

							</div>

							<div class="col-md-7 mb-2"
								style="font-size: 150%; word-wrap: break-word; max-width: 460px; color: #444444">
								爭議內容: <span style="color: #FF44AA" id="searchResult"></span>
							</div>
							<div class="col-md-7 mb-2"
								style="font-size: 150%; word-wrap: break-word; max-width: 460px; color: #444444">
								違規帳號: <span style="color: #CC0000" id="searchViolator"></span>
							</div>

						</fieldset>


					</div>

				</div>
			</div>

			<script>
		function addTimes(){
			$.ajax({
				url:"/admin/memberBeans/addIllegalTimes",
				data:{
					violator:$("#violatorValue").html(),
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
		document.getElementById("searchSp").innerHTML = "<n style='color:#FF3333;font-size: 120%;margin-left:100px;'>請輸入文章編號</n>";
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
					document.getElementById("searchSp").innerHTML = "<n style='color:#FF3333;font-size: 120%;margin-left:100px;'>搜尋失敗,文章編號不存在</n>";
					$("#searchResult").html("");
					
				};
			},
				
			error : function(data){
				document.getElementById("searchSp").innerHTML = "<n style='color:#FF3333;font-size: 120%;margin-left:100px;'>搜尋失敗,文章編號不存在</n>";
				$("#searchViolator").html("");
				$("#searchResult").html("");
				
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
					
					$("#searchViolator").html("<span id='violatorValue'>"+data["customermessageboardMemberid"]+"</span>").append("	<button class='btn btn-outline-danger' style='font-size: 80%;' onclick='addTimes()'>處罰</button>");
					
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
					<div class="modal-content" style="">
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




			<!-- 退款 -->
			<div class="modal fade" id="showtopup" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLongTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content" style="background-color: #888888">
						<div class="modal-header">
							<h5 class="modal-title" id="complaintPicTitle"
								style="font-size: 150%; color: #FFFFFF">調整玩家餘額</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close" style="font-size: 200%">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">

							<div class="container">
								<div class="row">
									<div class="col-6">
										<div class="col-md-13 mb-3">
											<label style="font-size: 120%; color: #CCEEFF;"
												for="searchMemberId">請輸入玩家ID:</label>
											<div class="input-group">
												<input type="text" class="form-control" id="searchMemberId"
													name="searchMemberId" style="font-size: 120%;">
												<div class="input-group-append">
													<button class="btn btn btn-danger" type="button"
														style="font-size: 120%;" id="searchSerialNum">搜尋</button>
												</div>
											</div>
											<span id="NumByIdSp"></span>

										</div>

										<div class="col-md-13 mb-4"
											style="font-size: 120%; word-wrap: break-word; max-width: 200px; color: #CCEEFF;">
											調整前餘額: <span style="color: #33FF33" id="summaryBefore"></span>
										</div>
										<div class="col-md-13 mb-3"
											style="font-size: 120%; word-wrap: break-word; max-width: 200px; color: #CCEEFF;">
											調整後餘額: <span style="color: #33FF33" id="summaryAfter"></span>
										</div>


									</div>

									<div class="col-6">
										<form class="form-signin" name="form3" id="form3" action=""
											method="POST">

											<div class="col-md-13 ">
												<label for="chipMemberNum"
													style="font-size: 120%; color: #CCEEFF;">玩家ID的流水號:</label>
												<input id='chipMemberNum' name="chipMemberNum" type="text"
													class="form-control-plaintext"
													style="font-size: 120%; text-align: center; background-color: #666666; color: white"
													disabled>
											</div>
											<div class="col-md-5 mb-3">
												<input id='chipFirstName' name="chipFirstName" type="text"
													onclick="this.value=''" placeholder="玩家FirstName:"
													class="form-control" style="display: none"> <input
													id='chipNickName' name="chipNickName" type="text"
													onclick="this.value=''" placeholder="玩家NickName:"
													class="form-control" style="display: none">
											</div>
											<div class="col-md-13 mb-2">
												<label for="chipBalanced"
													style="font-size: 120%; color: #CCEEFF;">請輸入調整額度:</label> <input
													id='chipBalanced' name="chipBalanced" type="text"
													class="form-control" style="font-size: 120%;">
											</div>

											<div class="col-md-5 mb-3">
												<input id='chipType' name="chipType" type="text"
													placeholder="chipType:" class="form-control"
													style="display: none"> <input id='win' name="win"
													type="text" placeholder="win:" class="form-control"
													style="display: none"> <input id='round'
													name="round" type="text" placeholder="round:"
													class="form-control" style="display: none">
											</div>

											<div class="col-md-13 mb-3">
												<button class="btn btn-outline-secondary" type="button"
													onclick="reset()" id="reset1" style="font-size: 20px;">清空</button>

												<button class="btn btn-outline-warning" type="button"
													id="sendout1" style="font-size: 20px; margin-left: 25px">確定調整</button>


											</div>


										</form>
									</div>
								</div>
							</div>

						</div>


					</div>
				</div>
			</div>

			<script>
		
		$("#reset1").click(function(){
			$("#searchMemberId").val("");
			document.getElementById("NumByIdSp").innerHTML = "";
			$("#summaryBefore").html("");
			$("#summaryAfter").html("");
		});
		
		$("#searchMemberId").blur(function(){
			if($("#searchMemberId").val().trim()==""){
				$("#chipMemberNum").val("");
				$("#summaryBefore").html("");
				$("#summaryAfter").html("");
			}
		});
		
		
		
		$("#searchSerialNum").click(function(){
			let theSearchNum = document.getElementById("searchMemberId").value.trim();
			
			if(theSearchNum!=""){
				document.getElementById("NumByIdSp").innerHTML = "";
				searchNumByMemberId();
				
			}else{
				$("#chipMemberNum").val("");
				document.getElementById("NumByIdSp").innerHTML = "<n style='color:#FF77FF;font-size: 120%;'>請輸入玩家ID</n>";
				$("#summaryBefore").html("");
				$("#summaryAfter").html("");

			}	
			
		});

		function searchNumByMemberId(){
			$.ajax({
				  	url : "/admin/memberBeans/findNumById",
				  	data : {
				  		memberId : $("#searchMemberId").val().trim(),
					},
					type : "POST", 
					success : function(data) {
							//alert(data["memberNum"]);
							
							if(data["memberNum"]!=null){
							document.getElementById("NumByIdSp").innerHTML ="";
							$("#chipMemberNum").val(data["memberNum"]);
							
								$.ajax({
										url:"/main/complain/findSummary",
										data:{
											memberNum : data["memberNum"],
										},
										type:"POST",
										success:function(data){
											$("#summaryBefore").html("$"+data);
											$("#summaryAfter").html("");
											
										},
								});
					
							}else{
								document.getElementById("NumByIdSp").innerHTML = "<n style='color:#FF77FF;font-size: 120%;'>搜尋失敗,玩家ID不存在</n>";
								$("#chipMemberNum").val("");
								$("#summaryBefore").html("");
								$("#summaryAfter").html("");
								
							}
					},

					});
				};

		
		
		
		
		
		
		
		
			function topup() {
				document.getElementById("showtopup");
			}
</script>
			<script>
			$("#sendout1").click(function() {

								var insert = $("#form3").serializeArray();
// 								alert(insert);
// 								alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
// 								alert(ant1);
								if($("#chipMemberNum").val().trim()!=""){
								$.ajax({url : '/admin/memberBeans/refund?chipMemberNum='
													+ $("#chipMemberNum").val().trim()
													+ "&chipFirstName="
													+ $("#chipFirstName").val()
													+ "&chipNickName="
													+ $("#chipNickName").val()
													+ "&chipBalanced="
													+ $("#chipBalanced").val()
													+ "&chipType="
													+ $("#chipType").val()
													+ "&round="
													+ $("#round").val()
													+ "&win=" + $("#win").val()
													,
											method : 'post',
											contentType : 'application/json;charset=UTF-8',
											dataType : 'json',
											data : ant1,
											success : function(data) {
												alert("餘額更改成功");
													
												$.ajax({
													url:"/main/complain/findSummary",
													data:{
														memberNum : $("#chipMemberNum").val(),
													},
													type:"POST",
													success:function(data){
														$("#summaryAfter").html("$"+data);
														
													},
											});
												
												
												
												
											},
											error : function(ajaxres) {
												alert("調整額度有誤");
											}
										});
								
								}else{
									alert("玩家流水號不存在");
								}
							});
		</script>
		</article>
		<!-- insert footer in the end of context -->
		<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
		<!-- Your data ends here -->
		<!-- End of context -->

		<!-- End of wrapper -->
	</div>
</body>
<script>
function responseChk(){
	let theResponse = document.getElementById("complaintResponse").value;
	if(theResponse==""){
		document.getElementById("responseSp").innerHTML = "<i style='color:red;text-align:right;font-size: 120%'>不可空白</i><i style='margin-left:10px;font-size: 120%' class=\"fas fa-exclamation\"></i><i style='font-size: 120%' class=\"fas fa-exclamation\"></i>";		
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
		document.getElementById("responseSp").innerHTML = "<i style='color:red;text-align:right;font-size: 120%'>不可空白</i><i style='margin-left:10px;font-size: 120%' class=\"fas fa-exclamation\"></i><i style='font-size: 120%' class=\"fas fa-exclamation\"></i>";
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