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
				<h2>籌碼</h2>




<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordMemberNum' name="moneyRecordMemberNum" -->
<%-- 							type="text" value="${sessionScope.member.memberNum}" --%>
<!-- 							placeholder="moneyRecordMemberNum:" class="form-control" -->
<!-- 							onclick="this.value=''"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordFirstName' name="moneyRecordFirstName" -->
<%-- 							type="text" value="${sessionScope.member.memberFitstName}" --%>
<!-- 							placeholder="moneyRecordFirstName:" class="form-control" -->
<!-- 							onclick="this.value=''"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordNickName' name="moneyRecordNickName" -->
<%-- 							type="text" value="${sessionScope.member.memberNickName}" --%>
<!-- 							placeholder="moneyRecordNickName:" class="form-control" -->
<!-- 							onclick="this.value=''"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->


<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordPoint' name="moneyRecordPoint" type="text" -->
<!-- 							value="" placeholder="moneyRecordPoint:" class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='cal' name="cal" type="text" -->
<%-- 							value="${memberP.moneyRecordpoint}" placeholder="cal:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordChip' name="moneyRecordChip" type="text" -->
<%-- 							value="${memberP.moneyRecordChip}" placeholder="moneyRecordChip:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='moneyRecordChiptype' name="moneyRecordChiptype" -->
<%-- 							type="text" value="${memberP.moneyRecordChip}" --%>
<!-- 							placeholder="moneyRecordChiptype:" class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='chipMemberNum' name="chipMemberNum" type="text" -->
<%-- 							onclick="this.value=''" value="${sessionScope.member.memberNum}" --%>
<!-- 							placeholder="chipMemberNum:" class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='chipFirstName' name="chipFirstName" type="text" -->
<!-- 							onclick="this.value=''" -->
<%-- 							value="${sessionScope.member.memberFitstName}" --%>
<!-- 							placeholder="chipFirstName:" class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='chipNickName' name="chipNickName" type="text" -->
<!-- 							onclick="this.value=''" -->
<%-- 							value="${sessionScope.member.memberNickName}" --%>
<!-- 							placeholder="chipNickName:" class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='chipBalanced' name="chipBalanced" type="text" -->
<%-- 							value="${memberP.chipRecordChip}" placeholder="chipBalanced:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='chipType' name="chipType" type="text" -->
<%-- 							value="${memberP.chipRecordChip}" placeholder="chipType:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='win' name="win" type="text" -->
<%-- 							value="${memberP.chipRecordChip}" placeholder="win:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<input id='round' name="round" type="text" -->
<%-- 							value="${memberP.chipRecordChip}" placeholder="round:" --%>
<!-- 							class="form-control"> -->
<%-- 						<div>${ErrorMsg.highwayName}</div> --%>
<!-- 					</div> -->
<!-- 				</div> -->

				<div class="form-group row">
					<div class="col-sm-11">
						<div class="btn-group">
							<button class="btn btn-lg btn-primary" type="button" id="delete1">delete</button>
							<button class="btn btn-lg btn-primary" type="button" id="update1">update</button>
							<button class="btn btn-lg btn-primary" type="button"
								id="insert33">insert</button>
							<button class="btn btn-lg btn-primary" type="button"
								onclick="getAndsetVal();">click</button>
							<button class="btn btn-lg btn-primary" type="button"
								onclick="calculate();">換點數</button>

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


		<button data-toggle='modal' data-target='#showtopup' class="btn btn-primary btn-lg active"
			onclick="topup();">
			<i class="fab fa-cc-visa" style="font-size: 20px"> <span
				style="font-size: 20px">儲值</span>
			</i>
		</button>

		<div class="modal fade" id="showtopup" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 150%">充值平台</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close" style="font-size: 200%">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
<!-- 						<h5 class="modal-title" id="complaintPicTitle" -->
<!-- 							style="font-size: 120%">請輸入儲值金額</h5> -->
						<form class="form-signin" name="form2" id="form2" action=""
			method="POST">	
						<input id='moneyRecordMemberNum' name="moneyRecordMemberNum"
							type="text" value="${sessionScope.member.memberNum}"
							placeholder="moneyRecordMemberNum:" class="form-control"
							onclick="this.value=''" style="display:none"> 
							
						<input id='moneyRecordFirstName'
							name="moneyRecordFirstName" type="text"
							value="${sessionScope.member.memberFitstName}"
							placeholder="moneyRecordFirstName:" class="form-control"
							onclick="this.value=''"> 
							
						<input id='moneyRecordNickName'
							name="moneyRecordNickName" type="text"
							value="${sessionScope.member.memberNickName}"
							placeholder="moneyRecordNickName:" class="form-control"
							onclick="this.value=''"> 
							
							<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 120%">儲值現金</h5>
							
						<input id='moneyRecordCash'
							name="moneyRecordCash" type="text" value=""
							placeholder="儲值金額:" class="form-control">

					
						<input id='cal' name="cal" type="text"
							 placeholder="cal:"
							class="form-control" value="10" style="display:none"> 
							
							<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 120%">兌換點數</h5>
							
						<input
							id='moneyRecordChip' name="moneyRecordChip" type="text"
							value="${memberP.moneyRecordChip}" placeholder="兌換點數:"
							class="form-control"> 
							
						<input id='moneyRecordType'
							name="moneyRecordType" type="text"
							placeholder="moneyRecordType:" class="form-control" value="topup" style="display:none">

						<input id='chipMemberNum' name="chipMemberNum" type="text"
							onclick="this.value=''" value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control" style="display:none"> 
							
							<input
							id='chipFirstName' name="chipFirstName" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberFitstName}"
							placeholder="chipFirstName:" class="form-control" style="display:none"> 
							
							<input
							id='chipNickName' name="chipNickName" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control" style="display:none"> 
							
							<input
							id='chipBalanced' name="chipBalanced" type="text"
							value="${memberP.chipRecordChip}" placeholder="chipBalanced:"
							class="form-control" style="display:none"> 
							
							<input id='chipType'
							name="chipType" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control" style="display:none"> 
							
							<input
							id='win' name="win" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control" style="display:none"> 
							
							<input
							id='round' name="round" type="text"
							 placeholder="round:" class="form-control"  style="display:none">
							 
							 	<!-- 兌換按鈕 -->
<!-- 						<button class="btn btn-lg btn-primary" type="button" -->
<!-- 							onclick="" style="font-size: 20px">Exchange</button> -->
							 
							
							<button class="btn btn-warning" type="button" id="sendout"
							 style="font-size: 20px">Confirm</button>
						</form>	
					</div>


				</div>
			</div>
		</div>



		<script>
			function topup() {
				document.getElementById("showtopup");
			}
		</script>
		<script>
// 		$(document).ready(function(){
// 			var n1 = document.getElementById("moneyRecordCash").value;
// 			var n2 = document.getElementById("cal").value;
// 			document.getElementById("moneyRecordChip").value = n1 * n2;
				
// 			var tt1 = document.getElementById('moneyRecordMemberNum').value;
// 			document.getElementById('chipMemberNum').value = tt1;

// 			var oo1 = document.getElementById('moneyRecordFirstName').value;
// 			document.getElementById('chipFirstName').value = oo1;

// 			var kk1 = document.getElementById('moneyRecordNickName').value;
// 			document.getElementById('chipNickName').value = kk1;

// 			var dd1 = document.getElementById('moneyRecordChip').value;
// 			document.getElementById('chipBalanced').value = dd1;
			
// 		})

		</script>

		<script>
// 			function exchangepoint() {
// 				var n1 = document.getElementById("moneyRecordCash").value;
// 				var n2 = document.getElementById("cal").value;
// 				document.getElementById("moneyRecordChip").value = n1 * n2;
					
// 				var tt1 = document.getElementById('moneyRecordMemberNum').value;
// 				document.getElementById('chipMemberNum').value = tt1;

// 				var oo1 = document.getElementById('moneyRecordFirstName').value;
// 				document.getElementById('chipFirstName').value = oo1;

// 				var kk1 = document.getElementById('moneyRecordNickName').value;
// 				document.getElementById('chipNickName').value = kk1;

// 				var dd1 = document.getElementById('moneyRecordChip').value;
// 				document.getElementById('chipBalanced').value = dd1;
// 			}
			$(document).ready(function(){
			$("#moneyRecordFirstName").change(function(){
				var aa=$("#chipFirstName").val();
				aa += $(this).val();
				$("#chipFirstName").val(aa);
			});
			
			$("#moneyRecordNickName").change(function(){
				var cc = $("#moneyRecordNickName").val();
				$("#chipNickName").val(cc);
			});
			
			$("#moneyRecordCash").change(function(){
				var bb=$("#moneyRecordCash").val();
// 				bb +=$(this).val();
				$("#moneyRecordChip").val(bb*10);
				$("#chipBalanced").val(bb*10);
			});
			
			
// 			$("#moneyRecordChip").change(function(){
// 				var dd= $("#moneyRecordChip").val();
// 				dd +=$(this).val();
// 				$("#chipBalanced").val(dd);
// 			});
			
			
			});
		</script>
		<script>
// 		function synchorize(){
// 			var tt1 = document.getElementById('moneyRecordMemberNum1').value;
// 			document.getElementById('chipMemberNum1').value = tt1;

// 			var oo1 = document.getElementById('moneyRecordFirstName1').value;
// 			document.getElementById('chipFirstName1').value = oo1;

// 			var kk1 = document.getElementById('moneyRecordNickName1').value;
// 			document.getElementById('chipNickName1').value = kk1;

// 			var dd1 = document.getElementById('moneyRecordChip1').value;
// 			document.getElementById('chipBalanced1').value = dd1;

// 			var cc1 = document.getElementById('moneyRecordChiptype1').value;
// 			document.getElementById('chipType1').value = cc1;
// 		}
		</script>

		<script>
			$("#sendout").click(function() {

								var insert = $("#form2").serializeArray();
								alert(insert);
								alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
								alert(ant1);

								$.ajax({url : '/admin/memberBeans/insert2?moneyRecordMemberNum='
													+ $("#moneyRecordMemberNum")
															.val()
													+ "&moneyRecordFirstName="
													+ $("#moneyRecordFirstName")
															.val()
													+ "&moneyRecordNickName="
													+ $("#moneyRecordNickName")
															.val()
													+ "&moneyRecordCash="
													+ $("#moneyRecordCash")
															.val()
													+ "&moneyRecordChip="
													+ $("#moneyRecordChip")
															.val()
													+ "&moneyRecordType="
													+ $("#moneyRecordType")
															.val()
													+ "&chipMemberNum="
													+ $("#chipMemberNum").val()
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
												alert("新增成功"
														+ data.data.chipRecordChip);
												$(location)
														.attr("href",
																"/admin/memberBeans/aiocheckout");

											},
											error : function(ajaxres) {
												alert("資料新增失敗");
											}
										});
							});
		</script>
		
		
		<script>
// 			function calculate() {
// 				var n1 = document.getElementById("moneyRecordPoint").value;
// 				var n2 = document.getElementById("cal").value;
// 				document.getElementById("moneyRecordChip").value = n1 * n2;
// 			}
		</script>
		<script>
// 			function getAndsetVal() {
// 				var tt = document.getElementById('moneyRecordMemberNum').value;
// 				document.getElementById('chipMemberNum').value = tt;

// 				var oo = document.getElementById('moneyRecordFirstName').value;
// 				document.getElementById('chipFirstName').value = oo;

// 				var kk = document.getElementById('moneyRecordNickName').value;
// 				document.getElementById('chipNickName').value = kk;

// 				var dd = document.getElementById('moneyRecordChip').value;
// 				document.getElementById('chipBalanced').value = dd;

// 				var cc = document.getElementById('moneyRecordChiptype').value;
// 				document.getElementById('chipType').value = cc;
// 			}
		</script>
		<script>
// 			$("#insert33")
// 					.click(
// 							function() {
// 								var insert = $("#form1").serializeArray();
// 								// 			var insert2 = $("#form2").serializeArray();
// 								alert(insert);
// 								// 			alert(insert2);
// 								alert(JSON.stringify(insert));
// 								// 			alert(JSON.stringify(insert2));
// 								var i = {};
// 								$.each(insert, function(index, value1) {
// 									i[value1.name] = value1.value;
// 								});
// 								var ant = JSON.stringify(i);
// 								alert(ant);

// 								// 			var o = {};
// 								// 			$.each(insert2, function(index, value1) {
// 								// 				i[value1.name] = value1.value;
// 								// 			});

// 								// 			var gg = JSON.stringify(0);
// 								// 			alert(gg);

// 								$
// 										.ajax({
// 											url : '/admin/memberBeans/insert2?moneyRecordMemberNum='
// 													+ $("#moneyRecordMemberNum")
// 															.val()
// 													+ "&moneyRecordFirstName="
// 													+ $("#moneyRecordFirstName")
// 															.val()
// 													+ "&moneyRecordNickName="
// 													+ $("#moneyRecordNickName")
// 															.val()
// 													+ "&moneyRecordPoint="
// 													+ $("#moneyRecordPoint")
// 															.val()
// 													+ "&moneyRecordChip="
// 													+ $("#moneyRecordChip")
// 															.val()
// 													+ "&moneyRecordChiptype="
// 													+ $("#moneyRecordChiptype")
// 															.val()
// 													+ "&chipMemberNum="
// 													+ $("#chipMemberNum").val()
// 													+ "&chipFirstName="
// 													+ $("#chipFirstName").val()
// 													+ "&chipNickName="
// 													+ $("#chipNickName").val()
// 													+ "&chipBalanced="
// 													+ $("#chipBalanced").val()
// 													+ "&chipType="
// 													+ $("#chipType").val()
// 													+ "&round="
// 													+ $("#round").val()
// 													+ "&win=" + $("#win").val(),
// 											method : 'POST',
// 											contentType : 'application/json;charset=UTF-8',
// 											dataType : 'json',
// 											data : ant,
// 											success : function(ajaxres) {
// 												// 					data=JSON.stringify(data);
// 												alert("新增成功"
// 														+ ajaxres.data.chipRecordChip);
// 												$(location)
// 														.attr("href",
// 																"/admin/memberBeans/aiocheckout");

// 											},
// 											error : function(ajaxres) {
// 												alert("資料新增失敗");
// 											}
// 										});


// 							});
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
				});
			});
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
						});
					});
		</script>


		<!-- jquery	Google CDN -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>






	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
