<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<!-- Custom styles for this template -->   
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/jsp/fragment/admin-sidebar.jsp"></jsp:include>
		<!-- start context -->
		<div class="container">
			<!-- b:nav -->
			<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
				VipLevel 新增 / 修改 / 刪除
				<a href="/admin/vip/test2">sdsds</a>
				</nav>
				
			<!-- e:nav -->
			<!-- b:row -->
			<!-- b:row-1 -->
			<div class="container">

				<div id="result"
<<<<<<< HEAD
					style="overflow: scroll; border: 1px solid black; height: 20rem; width: 68rem; font-size: 12px; margin-top: 10px;">
	
=======
					style="overflow: scroll; border: 1px solid black; height: 15rem; width: 68rem; font-size: 12px; margin-top: 10px;">

>>>>>>> branch 'master' of https://github.com/Ryan810104/Spring.git
				</div>
			</div>
			<br>
			<hr>
			<br>
			<!-- e:row-1 -->
			<div class="container" style="text-align: -webkit-center">
				<div class="row">
					<div class="col">
						<div class="form-group row">
							<label for="viplevel" class="col-sm-4 col-form-label">流水號</label>
							<div class="col-sm-4">
								<input type="text" style="text-align: center" readonly
									class="form-control-plaintext" id="vipnum" value="">
							</div>
							<a id="edittitle"
								style="line-height: 2.5rem; align-self: center; display: none"><i
								class="fas fa-edit"></i></a>
						</div>
						<div class="form-group row">
							<label for="viplevel" class="col-sm-4 col-form-label"
								style="align-self: center;">VipLevel</label>
							<div class="col-sm-4">
								<i style="line-height: 2.5rem;" id="upbutton"
									class="fas fa-lg fa-caret-up"></i> <input type="text"
									style="text-align: center" readonly
									class="form-control-plaintext" id="viplevel" value="">
								<i style="line-height: 2.5rem" id="downbutton"
									class="fas fa-lg fa-caret-down"></i>

							</div>
							<a style="line-height: 2.5rem; align-self: center;"
								href="http://localhost/admin/vip/index"><i
								class="fas fa-redo"></i></a>
						</div>


					</div>
					<div class="col">
						<div class="form-group row">
							<label for="vipdiscount" class="col-sm-4 col-form-label">VipDiscount</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="vipdiscount"
									placeholder="請輸入折扣">
							</div>


						</div>
						<div class="form-group row">
							<label class="col-sm-4 col-form-label"> <input
								type="button" class="btn btn-outline-dark" data-toggle="modal"
								id="picbutton" data-target=".bd-example-modal-sm" value="徽章">
							</label>
							<div class="col-sm-8" id="vippic" style="align-self: center">
							</div>
						</div>

						<div class="form-group row">
							<label for="viptitle" class="col-sm-4 col-form-label">VipTitle</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="viptitle"
									placeholder="請輸入名稱">
							</div>
							<a id="edittitle" style="line-height: 2rem; display: none"><i
								class="fas fa-edit"></i></a>

						</div>
					</div>
					<div class="col">
						<input type="button" id="insertbutton" disabled="disabled"
							class="btn btn-outline-success btn-block" value="新增"> <input
							type="button" id="updatebutton" disabled="disabled"
							class="btn btn-outline-success btn-block" value="修改"> <input
							type="button" id="deletebutton" disabled="disabled"
							class="btn btn-outline-danger btn-block" value="刪除">


						<table>
							<tr>
								<td>新增 : 按鈕選取vipLevel 沒有重複的 vipLevel 才能新增 (uniQue 屬性)</td>
							</tr>
							<tr>
								<td>修改 : 列表選取修改哪項 接著按編輯按鈕<i class="fas fa-edit"></i>修改後
									點擊修改按鈕
								</td>
							</tr>
							<tr>
								<td>刪除 : 列表選取刪除哪項 點擊刪除按鈕</td>
								
							</tr>
						</table>
						<form method="POST" action="/admin/vip/query">
							<input type="button" id="queryall" class="btn btn-primary"
								value="全部查詢" style="display: none;">
						</form>
					</div>
				</div>
				<div id="result112"></div>
				<div id="result1" style="display: none"></div>
				<!-- b:row-2 -->

				<!-- e:row-2 -->


				<!-- e:row -->
				<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
				

				<!-- Your data ends here -->
				<!-- End of context -->
			</div>
			<!-- End of wrapper -->
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-sm">
			<div class="modal-content">
				<div class="container-fluid">
					<br>
					<div class="row">
						<div id="vippic1" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image001.gif">
						</div>
						<div id="vippic2" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image050.gif">
						</div>
						<div id="vippic3" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image100.gif">
						</div>
						<div id="vippic4" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image130.gif">
						</div>
						<div id="vippic5" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image160.gif">
						</div>
						<div id="vippic6" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image200.gif">
						</div>
						<div id="vippic7" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image220.gif">
						</div>
						<div id="vippic8" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image250.gif">
						</div>
						<div id="vippic9" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image275.gif">
						</div>
						<div id="vippic10" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image300.gif">
						</div>
						<div id="vippic11" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image325.gif">
						</div>
						<div id="vippic12" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image340.gif">
						</div>
						<div id="vippic13" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image350.gif">
						</div>
						<div id="vippic14" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image375.gif">
						</div>
						<div id="vippic15" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image390.gif">
						</div>
						<div id="vippic16" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image400.gif">
						</div>
						<div id="vippic17" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image425.gif">
						</div>
						<div id="vippic18" onclick="picclick(this)"
							class="col-md-2 ml-auto">
							<img src="https://tw.beanfun.com/bnb/images/game/5/image450.gif">
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div>

</body>
<style>
input[type="button"]:disabled {
	background: #dddddd;
}
</style>

<script>
	function picclick(id) {
		$("#vippic").html($(id).html());
		$("#picbutton").click();
		$("#result1").html($("#vippic img").attr("src"));
	}

	//press down function
	var number = 0;
	$("#downbutton").click(function() {
		if (number == 0) {
			upndown();
			return;
		}
		number--;
		upndown();
	});
	//press up function
	$("#upbutton").click(function() {
		number++;
		upndown();
	});
	//Show List & next vip number
	$(document).ready(function() {
		$("#queryall").click();
		$("#viplevel").val("0");
		showId();

	});
	//doFunction JQuery when press insert button
	$("#insertbutton").click(function() {
		insertfunc();
		showId();
		location.reload()
	});
	//doFunction JQuery when press update button
	$("#updatebutton").click(function() {
		updatefunc();
		showId();
		location.reload()
	});
	//doFunction JQuery when press delete button
	$("#deletebutton").click(function() {
		deletefunc();
		showId();
		location.reload()
	});

	//Insert JQery by enter the form1
	$("#viptitle").keypress(function(event) {
		if (event.keyCode == 13) {
			return false;
		}
	});
	//up and down function
	function upndown() {
		var count = 0;
		$("#numbercount tr td:nth-child(2)").each(function() {
			if ($(this).text() == number) {
				trclick($(this).prev().text());
				count++;
			}
		});
		if (count == 0) {
			$("#viptitle").val("");
			$("#vipdiscount").val("");
			$("#vippic").html("");
			showId();
			$("#edittitle").css('display', 'none');
			$("#viptitle").removeAttr("readonly");
			$("#vipdiscount").removeAttr("readonly");
			$("#insertbutton").attr('disabled', false);
			$("#deletebutton").attr('disabled', true);
			$("#picbutton").attr('disabled', false);
		}
		$("#viplevel").val(number);
		if ($("#viplevel").val() == 0) {
			$("#insertbutton").attr("disabled", true);
		}
	};
	//Change disable or not when the following situation
	function trclick(id) {
		$("#viptitle").val($("#row" + id).children('td').eq(3).html());
		$("#viplevel").val($("#row" + id).children('td').eq(1).html());
		$("#vipnum").val($("#row" + id).children('td').eq(0).html());
		$("#vippic").html($("#row" + id).children('td').eq(2).html());
		$("#vipdiscount").val($("#row" + id).children('td').eq(4).html());
		$("#insertbutton").attr('disabled', true);
		$("#updatebutton").attr('disabled', true);
		$("#deletebutton").attr('disabled', false);
		$("#viptitle").attr("readonly", "readonly");
		$("#vipdiscount").attr("readonly", "readonly");
		$("#edittitle").css('display', 'block');
		$("#picbutton").attr('disabled', true);
	}
	//edit function control
	$("#edittitle").click(function() {
		$("#viptitle").removeAttr("readonly");
		$("#vipdiscount").removeAttr("readonly");
		$("#deletebutton").attr('disabled', true);
		$("#updatebutton").attr('disabled', false);
		$("#picbutton").attr('disabled', false);

	});
	// insert function
	function insertfunc() {
		$.ajax({
			url : "/admin/vip/insert?" + $("#vipnum").val() + "&viptitle="
					+ $("#viptitle").val() + "&viplevel="
					+ $("#viplevel").val() + "&vippic="
					+ $("#vippic img").attr("src") + "&vipdiscount="
					+ $("#vipdiscount").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");
	}
	// update function
	function updatefunc() {
		$.ajax({
			url : "/admin/vip/update?vipnum=" + $("#vipnum").val()
					+ "&viptitle=" + $("#viptitle").val() + "&viplevel="
					+ $("#viplevel").val() + "&vippic="
					+ $("#vippic img").attr("src") + "&vipdiscount="
					+ $("#vipdiscount").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");

	}
	// delete function
	function deletefunc() {
		$.ajax({
			url : "/admin/vip/delete?vipnum=" + $("#vipnum").val(),
			type : "GET",
			success : function(data) {
				$("#queryall").click();
			}
		});
		$("#viptitle").val("");

	}
	//Get next number
	function showId() {
		$.ajax({
			url : "/admin/vip/query2",
			type : "GET",
			success : function(data) {
				$("#vipnum").val(data);
			}
		});
	}

	//Get All AJAX
	$("#queryall")
			.click(
					function() {
						var text = "<table id=\"numbercount\" style=\"text-align:center\" class=\" table table-sm table-hover\">";
						text += "<tr><th>流水號</th><th>等級</th><th>徽章</th><th>稱號</th><th>折扣</th></tr>"
						$
								.ajax({
									url : "/admin/vip/query",
									type : "GET",
									success : function(Jdata) {
										var NumOfJData = Jdata.length;
										for (var i = 0; i < NumOfJData; i++) {
											text += "<tr onclick=\"trclick("
													+ Jdata[i]["vipnum"]
													+ ");\" class=\"col\""
													+ "id = row"
													+ Jdata[i]["vipnum"] + ">";
											text += "<td style=\"width:3.5rem\">"
													+ Jdata[i]["vipnum"]
													+ "</td>";
											text += "<td>"
													+ Jdata[i]["viplevel"]
													+ "</td>";
											text += "<td><img src=\""+ Jdata[i]["vippic"] + "\"></td>"
											text += "<td>"
													+ Jdata[i]["viptitle"]
													+ "</td>";
											text += "<td>"
													+ Jdata[i]["vipdiscount"]
													+ "</td>";
											text += "</tr>";
										}
										text += "<table>"
										$("#result").html(text);
									}
								});
					});
</script>
</html>