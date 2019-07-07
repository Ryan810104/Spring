<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="/resources/css/signin.css" rel="stylesheet">

<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("delete1").addEventListener("click", delete1);
		// 		document.getElementById("update1").addEventListener("click", update2);
		// 		document.getElementById("insert1").addEventListener("click", insert1);
		// 		document.getElementById("find1").addEventListener("click", find1);
	});
	function delete1() {
		document.form1.action = "/admin/chip/delete";
		document.form1.submit();
	}
	function update2() {
		document.form1.action = "/admin/chip/update";
		document.form1.submit();
	}
	// 	function insert1() {
	// 		document.form1.action = "/admin/member/insert";
	// 		document.form1.submit();
	// 	}
	// 	function find1() {
	// 		document.form1.action = "/admin/member/queryById";
	// 		document.form1.submit();
	// 	}
</script>


</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">


		<form class="form-signin" name="form1" id="form1" action=""
			method="POST">
			<div>
				<h2>遊戲紀錄</h2>

				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipMemberNum' name="chipMemberNum" type="text"
							onclick="this.value=''" placeholder="chipMemberNum:"
							class="form-control" value="${sessionScope.member.memberNum}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipFirstName' name="chipFirstName" type="text"
							onclick="this.value=''" placeholder="chipFirstName:"
							class="form-control" value="${sessionScope.member.memberFitstName}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipNickName' name="chipNickName" type="text"
							onclick="this.value=''" placeholder="chipNickName:"
							class="form-control" value="${sessionScope.member.memberNickName}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipBalanced' name="chipBalanced" type="text"
							placeholder="chipBalanced:" class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipType' name="chipType" type="text"
							placeholder="chipType:" class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='win' name="win" type="text" placeholder="win:"
							class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='round' name="round" type="text" placeholder="round:"
							class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordMemberNum' name="chipRecordMemberNum"
							type="text" placeholder="chipRecordMemberNum:"
							class="form-control"  value="${sessionScope.member.memberNum}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordFirstName' name="chipRecordFirstName"
							type="text" placeholder="chipRecordFirstName:"
							class="form-control"  value="${sessionScope.member.memberFitstName}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordNickName' name="chipRecordNickName"
							type="text" placeholder="chipRecordNickName:"
							class="form-control"  value="${sessionScope.member.memberNickName}">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordChip' name="chipRecordChip" type="text"
							placeholder="chipRecordChip:" class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordChipType' name="chipRecordChipType"
							type="text" placeholder="chipRecordChipType:"
							class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>

				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordWin' name="chipRecordWin" type="text"
							placeholder="chipRecordWin:" class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-12">
						<input id='chipRecordRound' name="chipRecordRound" type="text"
							placeholder="chipRecordRound:" class="form-control">
						<div>${ErrorMsg.highwayName}</div>
					</div>
				</div>


				<div class="form-group row">
					<div class="col-sm-11">
						<div class="btn-group">
							<button class="btn btn-lg btn-primary" type="button" id="delete1">delete</button>



							<button class="btn btn-lg btn-primary" type="button" id="update1">update</button>

							<button class="btn btn-lg btn-primary" type="button"
								id="insert33">insert</button>
							<button class="btn btn-lg btn-primary" type="button"
								onclick="getAndsetVal();">click</button>


							<!-- 					<button class="btn btn-lg btn-primary" type="button" id="find1">find</button> -->
						</div>
					</div>

				</div>
				<div>${ErrorMsg.exception}</div>
			</div>



		</form>

		<!-- 	Bootstarp -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>

		<script>
			function getAndsetVal() {
				var tt = document.getElementById('chipMemberNum').value;
				document.getElementById('chipRecordMemberNum').value = tt;
				
				
				var kk = document.getElementById('chipFirstName').value;
				document.getElementById('chipRecordFirstName').value = kk;
				
				
				var oo = document.getElementById('chipNickName').value;
				document.getElementById('chipRecordNickName').value = oo;
				

				var dd = document.getElementById('chipBalanced').value;
				document.getElementById('chipRecordChip').value = dd;

				var cc = document.getElementById('chipType').value;
				document.getElementById('chipRecordChipType').value = cc;

				var aa = document.getElementById('win').value;
				document.getElementById('chipRecordWin').value = aa;

				var qq = document.getElementById('round').value;
				document.getElementById('chipRecordRound').value = qq;
			}
		</script>
		<script>
			$("#insert33").click(
					function() {
						var insert = $("#form1").serializeArray();
						// 			var insert2 = $("#form2").serializeArray();
						alert(insert);
						// 			alert(insert2);
						alert(JSON.stringify(insert));
						// 			alert(JSON.stringify(insert2));
						var i = {};
						$.each(insert, function(index, value1) {
							i[value1.name] = value1.value;
						});
						var ant = JSON.stringify(i);
						alert(ant);

						// 			var o = {};
						// 			$.each(insert2, function(index, value1) {
						// 				i[value1.name] = value1.value;
						// 			});

						// 			var gg = JSON.stringify(0);
						// 			alert(gg);

						$.ajax({
							url : '/admin/memberBeans/insert3?chipMemberNum='
									+ $("#chipMemberNum").val()
									+ "&chipBalanced="
									+ $("#chipBalanced").val() + "&chipType="
									+ $("#chipType").val() + "&win="
									+ $("#win").val() + "&round="
									+ $("#round").val()
									+"&chipFirstName="
									+$("#chipFirstName").val()
									+"&chipNickName="
									+$("#chipNickName").val()
									+ "&chipRecordMemberNum="
									+ $("#chipRecordMemberNum").val()
									+ "&chipRecordFirstName="
									+ $("#chipRecordFirstName").val()
									+ "&chipRecordNickName="
									+ $("#chipRecordNickName").val()
									+ "&chipRecordChip="
									+ $("#chipRecordChip").val()
									+ "&chipRecordChipType="
									+ $("#chipRecordChipType").val()
									+ "&chipRecordWin="
									+ $("#chipRecordWin").val()
									+ "&chipRecordRound="
									+ $("#chipRecordRound").val(),
							method : 'POST',
							contentType : 'application/json;charset=UTF-8',
							dataType : 'json',
							data : ant,
							success : function(ajaxres) {
								// 					data=JSON.stringify(data);
								alert("新增成功" + ajaxres.data.chipRecordChip);
								// 					$(location).attr("href", "/admin/moneyrecord/list");

							},
							error : function(ajaxres) {
								alert("資料新增失敗");
							}
						});

						// 			$.ajax({
						// 				url : '/admin/memberBeans/insertchipandmoney',
						// 				method : 'POST',
						// 				contentType : 'application/json;charset=UTF-8',
						// 				dataType : 'json',
						// 				data : gg,
						// 				success : function(ajaxres) {
						// 					// 					data=JSON.stringify(data);
						// 					alert("新增成功" + ajaxres.data.chipRecordChip);
						// 					// 					$(location).attr("href", "/admin/moneyrecord/list");

						// 				},
						// 				error : function(ajaxres) {
						// 					alert("資料新增失敗");
						// 				}

						// 			})
					});
		</script>
		<script>
			$("#update1").click(function() {
				var update = $("#form1").serializeArray();
				JSON.stringify(update);
				var n = {};
				$.each(update, function(key, value1) {
					n[value1.name] = value1.value;
				})
				var update1 = JSON.stringify(n);
				alert(update1);

				$.ajax({
					url : '/admin/moneyrecord/update',
					method : 'POST',
					contentType : 'application/json;charset=UTF-8',
					dataType : 'json',
					data : update1,
					success : function(ajaxres) {
						alert("新增成功" + ajaxres.data.phone);
						alert(ajaxres.type);
						$(location).attr("href", "/admin/moneyrecord/list");
					},
					error : function(ajaxres) {
						alert("資料新增失敗");
					}
				})
			})
		</script>

		<script>
			$("#find1").click(
					function() {
						// 		$(location).attr("href","/admin/member/findByIdBetween?id1="+$('#id1').val()+"&id2="+$('#id2').val());
						$.ajax({
							url : "/admin/member/findByIdBetween?id1="
									+ $('#id1').val() + "&id2="
									+ $('#id2').val(),
							type : "GET",
							//  			data:{id1:$('#id1'), id2:$('#id2')},
							success : function(data) {
								alert(JSON.stringify(data))

								$(location).attr(
										"href",
										"/admin/member/list?id1="
												+ $('#id1').val() + "&id2="
												+ $('#id2').val());
							},
							error : function(data) {
								alert("資料搜尋失敗");
							}
						})
					})
		</script>


		<!-- jquery	Google CDN -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>






	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
