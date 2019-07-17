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
<!-- 				<h2>籌碼</h2> -->




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

<!-- 				<div class="form-group row"> -->
<!-- 					<div class="col-sm-11"> -->
<!-- 						<div class="btn-group"> -->
<!-- 							<button class="btn btn-lg btn-primary" type="button" id="delete1">delete</button> -->
<!-- 							<button class="btn btn-lg btn-primary" type="button" id="update1">update</button> -->
<!-- 							<button class="btn btn-lg btn-primary" type="button" -->
<!-- 								id="insert33">insert</button> -->
<!-- 							<button class="btn btn-lg btn-primary" type="button" -->
<!-- 								onclick="getAndsetVal();">click</button> -->
<!-- 							<button class="btn btn-lg btn-primary" type="button" -->
<!-- 								onclick="calculate();">換點數</button> -->

<!-- 												<button class="btn btn-lg btn-primary" type="button" id="find1">find</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
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
			aria-labelledby="exampleModalLongTitle" aria-hidden="true" style="text-align::center">
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

					
<!-- 						<input id='cal' name="cal" type="text" -->
<!-- 							 placeholder="cal:" -->
<!-- 							class="form-control" value="10" style="display:none">  -->
							
							<h5 class="modal-title" id="complaintPicTitle"
							style="font-size: 120%">兌換點數</h5>
							
						<input
							id='moneyRecordChip' name="moneyRecordChip" type="text"
							 placeholder="兌換點數:"
							class="form-control mb-3"> 
							
						<input id='moneyRecordType'
							name="moneyRecordType" type="text"
							placeholder="moneyRecordType:" class="form-control mb-3" value="topup" style="display:none">

						<input id='chipMemberNum' name="chipMemberNum" type="text"
							onclick="this.value=''" value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipFirstName' name="chipFirstName" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberFitstName}"
							placeholder="chipFirstName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipNickName' name="chipNickName" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipBalanced' name="chipBalanced" type="text"
							placeholder="chipBalanced:"
							class="form-control mb-3" style="display:none"> 
							
							<input id='chipType'
							name="chipType" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='win' name="win" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='round' name="round" type="text"
							 placeholder="round:" class="form-control mb-3"  style="display:none">	 

						
							 <div style="text-align:center">
							<button class="btn btn-success" type="button" id="sendout"
							 style="font-size: 20px;">Confirm</button>
							 </div>
						
						</form>	
					</div>


				</div>
			</div>
		</div>



<div class="row">

<!-- 基本禮包 -->
<div class="col-sm-4">

<i class="fas fa-gift" style="font-size: 50px;"></i>
<span style="font-size: 20px">基本禮包</span>
<form class="form-signin" name="form33" id="form33" action=""
			method="POST">	
						<input id='moneyRecordMemberNum1' name="moneyRecordMemberNum1"
							type="text" value="${sessionScope.member.memberNum}"
							placeholder="moneyRecordMemberNum:" class="form-control mb-3"
							onclick="this.value=''" style="display:none"> 
							
						<input id='moneyRecordFirstName1'
							name="moneyRecordFirstName1" type="text"
							value="${sessionScope.member.memberFitstName}"
							placeholder="moneyRecordFirstName:" class="form-control mb-3"
							onclick="this.value=''"> 
							
						<input id='moneyRecordNickName1'
							name="moneyRecordNickName1" type="text"
							value="${sessionScope.member.memberNickName}"
							placeholder="moneyRecordNickName:" class="form-control mb-4"
							onclick="this.value=''"> 
							
<!-- 							<h5 class="modal-title"  -->
<!-- 							style="font-size: 120%">超值優惠包</h5> -->
							
							<h3>入門 <span class="badge badge-success" style="font-size: 120%">超值優惠</span></h3>
							
						<input id='moneyRecordCash1'
							name="moneyRecordCash1" type="text" value="2000"
							 class="form-control mb-4"  disabled="disabled">

					
							
							<h5 class="modal-title" 
							style="font-size: 120%">點數額度</h5>
							
						<input
							id='moneyRecordChip1' name="moneyRecordChip1" type="text"
							value="10000" 
							class="form-control mb-3" disabled="disabled"> 
							
						<input id='moneyRecordType1'
							name="moneyRecordType1" type="text"
							placeholder="moneyRecordType:" class="form-control mb-3" value="topup" style="display:none">

						<input id='chipMemberNum1' name="chipMemberNum1" type="text"
							onclick="this.value=''" value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control mb-3" style="display:"> 
							
							<input
							id='chipFirstName1' name="chipFirstName1" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberFitstName}"
							placeholder="chipFirstName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipNickName1' name="chipNickName1" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipBalanced1' name="chipBalanced1" type="text"
							value="10000" placeholder="chipBalanced:"
							class="form-control mb-3" style="display:none" > 
							
							<input id='chipType1'
							name="chipType1" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='win1' name="win1" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='round1' name="round1" type="text"
							 placeholder="round:" class="form-control mb-3"  style="display:none">
							 
						
							 <div style="text-align:center">
							<button class="btn btn-success" type="button" id="sendout1"
							 style="font-size: 20px;">購買</button>
							 </div>
						
	</form>	



</div>

<!-- 進階禮包 -->
<div class="col-sm-4">

<i class="fas fa-gift" style="font-size: 50px;"></i>
<span style="font-size: 20px">進階禮包</span>

<form class="form-signin" name="form4" id="form4" action=""
			method="POST">	
						<input id='moneyRecordMemberNum2' name="moneyRecordMemberNum2"
							type="text" value="${sessionScope.member.memberNum}"
							placeholder="moneyRecordMemberNum:" class="form-control mb-3"
							onclick="this.value=''" style="display:none"> 
							
						<input id='moneyRecordFirstName2'
							name="moneyRecordFirstName2" type="text"
							value="${sessionScope.member.memberFitstName}"
							placeholder="moneyRecordFirstName:" class="form-control mb-3"
							onclick="this.value=''"> 
							
						<input id='moneyRecordNickName2'
							name="moneyRecordNickName2" type="text"
							value="${sessionScope.member.memberNickName}"
							placeholder="moneyRecordNickName:" class="form-control mb-4"
							onclick="this.value=''"> 
							
<!-- 							<h5 class="modal-title"  -->
<!-- 							style="font-size: 120%">儲值現金</h5> -->
							
							<h3>進階 <span class="badge badge-warning" style="font-size: 120%">加碼回饋</span></h3>
							
							
						<input id='moneyRecordCash2'
							name="moneyRecordCash2" type="text" value="5000"
							 class="form-control mb-4" disabled="disabled">

							
							<h5 class="modal-title" 
							style="font-size: 120%">點數額度</h5>
							
						<input
							id='moneyRecordChip2' name="moneyRecordChip2" type="text"
							value="50000" 
							class="form-control mb-3" disabled="disabled"> 
							
						<input id='moneyRecordType2'
							name="moneyRecordType2" type="text"
							placeholder="moneyRecordType:" class="form-control mb-3" value="topup" style="display:none">

						<input id='chipMemberNum2' name="chipMemberNum2" type="text"
							onclick="this.value=''" value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control mb-3" style="display:"> 
							
							<input
							id='chipFirstName2' name="chipFirstName2" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberFitstName}"
							placeholder="chipFirstName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipNickName2' name="chipNickName2" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipBalanced2' name="chipBalanced2" type="text"
							value="50000" placeholder="chipBalanced:"
							class="form-control mb-3" style="display:none"> 
							
							<input id='chipType2'
							name="chipType2" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='win2' name="win2" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='round2' name="round2" type="text"
							 placeholder="round:" class="form-control mb-3"  style="display:none">
							 
						
							 <div style="text-align:center">
							<button class="btn btn-success" type="button" id="sendout2"
							 style="font-size: 20px;">購買</button>
							 </div>
						
						</form>	

</div>

<!-- 高級禮包 -->
<div class="col-sm-4">

<i class="fas fa-gift" style="font-size: 50px;"></i>
<span style="font-size: 20px">高級禮包</span>


<form class="form-signin" name="form5" id="form5" action=""
			method="POST">	
						<input id='moneyRecordMemberNum3' name="moneyRecordMemberNum3"
							type="text" value="${sessionScope.member.memberNum}"
							placeholder="moneyRecordMemberNum:" class="form-control mb-3"
							onclick="this.value=''" style="display:none"> 
							
						<input id='moneyRecordFirstName3'
							name="moneyRecordFirstName3" type="text"
							value="${sessionScope.member.memberFitstName}"
							placeholder="moneyRecordFirstName:" class="form-control mb-3"
							onclick="this.value=''"> 
							
						<input id='moneyRecordNickName3'
							name="moneyRecordNickName3" type="text"
							value="${sessionScope.member.memberNickName}"
							placeholder="moneyRecordNickName:" class="form-control mb-4"
							onclick="this.value=''"> 
							
<!-- 							<h5 class="modal-title"  -->
<!-- 							style="font-size: 120%">儲值現金</h5> -->
							
							<h3>最高<span class="badge badge-danger" style="font-size: 120%">大放送</span></h3>
							
						<input id='moneyRecordCash3'
							name="moneyRecordCash3" type="text" value="10000"
							 class="form-control mb-4" disabled="disabled">

					
<!-- 						<input id='cal1' name="cal1" type="text" -->
<!-- 							 placeholder="cal:" -->
<!-- 							class="form-control" value="10" style="display:">  -->
							
							<h5 class="modal-title" 
							style="font-size: 120%">點數額度</h5>
							
						<input
							id='moneyRecordChip3' name="moneyRecordChip3" type="text"
							 value="150000"
							class="form-control mb-3" disabled="disabled"> 
							
						<input id='moneyRecordType3'
							name="moneyRecordType3" type="text"
							placeholder="moneyRecordType:" class="form-control mb-3" value="topup" style="display:none">

						<input id='chipMemberNum3' name="chipMemberNum3" type="text"
							onclick="this.value=''" value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control mb-3" style="display:"> 
							
							<input
							id='chipFirstName3' name="chipFirstName3" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberFitstName}"
							placeholder="chipFirstName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipNickName3' name="chipNickName3" type="text"
							onclick="this.value=''"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='chipBalanced3' name="chipBalanced3" type="text"
							value="150000" placeholder="chipBalanced:"
							class="form-control mb-3" style="display:none"> 
							
							<input id='chipType3'
							name="chipType3" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='win3' name="win3" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control mb-3" style="display:none"> 
							
							<input
							id='round3' name="round3" type="text"
							 placeholder="round:" class="form-control mb-3"  style="display:none">
							 
						
							 <div style="text-align:center">
							<button class="btn btn-success" type="button" id="sendout3"
							 style="font-size: 20px;">購買</button>
							 </div>
						
						</form>	


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
			});
			
			
			
			
			$(document).ready(function(){
				$("#moneyRecordFirstName1").change(function(){
					var aa1=$("#chipFirstName1").val();
					aa1 += $(this).val();
					$("#chipFirstName1").val(aa1);
				});
				
				$("#moneyRecordNickName1").change(function(){
					var cc1 = $("#moneyRecordNickName1").val();
					$("#chipNickName1").val(cc1);
				});
				
// 				$("#moneyRecordCash1").change(function(){
// 					var bb1=$("#moneyRecordCash1").val();
// //	 				bb +=$(this).val();
// 					$("#moneyRecordChip1").val(bb1*10);
// 					$("#chipBalanced1").val(bb1*10);
// 				});
				});
			
			
			$(document).ready(function(){
				$("#moneyRecordFirstName2").change(function(){
					var aa2=$("#chipFirstName2").val();
					aa2 += $(this).val();
					$("#chipFirstName2").val(aa2);
				});
				
				$("#moneyRecordNickName2").change(function(){
					var cc2 = $("#moneyRecordNickName2").val();
					$("#chipNickName2").val(cc2);
				});
				
// 				$("#moneyRecordCash2").change(function(){
// 					var bb2=$("#moneyRecordCash2").val();
// //	 				bb +=$(this).val();
// 					$("#moneyRecordChip2").val(bb2*15);
// 					$("#chipBalanced2").val(bb2*15);
// 				});
				});
			
			
			
			$(document).ready(function(){
				$("#moneyRecordFirstName3").change(function(){
					var aa3=$("#chipFirstName3").val();
					aa3 += $(this).val();
					$("#chipFirstName3").val(aa3);
				});
				
				$("#moneyRecordNickName3").change(function(){
					var cc3 = $("#moneyRecordNickName3").val();
					$("#chipNickName3").val(cc3);
				});
				
// 				$("#moneyRecordCash3").change(function(){
// 					var bb3=$("#moneyRecordCash3").val();
// //	 				bb +=$(this).val();
// 					$("#moneyRecordChip3").val(bb3*30);
// 					$("#chipBalanced3").val(bb3*30);
// 				});
				});
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
												$(location).attr("href","/admin/memberBeans/aiocheckout");
// 												$(location).attr("href","/admin/memberBeans/aiocheckoutonetime");


											},
											error : function(ajaxres) {
												alert("資料新增失敗");
											}
										});
							});
		</script>
		
<!-- 基本禮包 -->
		<script>
			$("#sendout1").click(function() {

								var insert = $("#form33").serializeArray();
								alert(insert);
								alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
								alert(ant1);

								$.ajax({url : '/admin/memberBeans/insert2?moneyRecordMemberNum='
													+ $("#moneyRecordMemberNum1")
															.val()
													+ "&moneyRecordFirstName="
													+ $("#moneyRecordFirstName1")
															.val()
													+ "&moneyRecordNickName="
													+ $("#moneyRecordNickName1")
															.val()
													+ "&moneyRecordCash="
													+ $("#moneyRecordCash1")
															.val()
													+ "&moneyRecordChip="
													+ $("#moneyRecordChip1")
															.val()
													+ "&moneyRecordType="
													+ $("#moneyRecordType1")
															.val()
													+ "&chipMemberNum="
													+ $("#chipMemberNum1").val()
													+ "&chipFirstName="
													+ $("#chipFirstName1").val()
													+ "&chipNickName="
													+ $("#chipNickName1").val()
													+ "&chipBalanced="
													+ $("#chipBalanced1").val()
													+ "&chipType="
													+ $("#chipType1").val()
													+ "&round="
													+ $("#round1").val()
													+ "&win=" + $("#win1").val()
													,
											method : 'post',
											contentType : 'application/json;charset=UTF-8',
											dataType : 'json',
											data : ant1,
											success : function(data) {
												alert("新增成功"
														+ data.data.chipRecordChip);
												$(location).attr("href","/admin/memberBeans/aiocheckout");
// 												$(location).attr("href","/admin/memberBeans/aiocheckoutonetime");


											},
											error : function(ajaxres) {
												alert("資料新增失敗");
											}
										});
							});
		</script>
		
<!-- 進階禮包 -->
		<script>
			$("#sendout2").click(function() {

								var insert = $("#form4").serializeArray();
								alert(insert);
								alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
								alert(ant1);

								$.ajax({url : '/admin/memberBeans/insert2?moneyRecordMemberNum='
													+ $("#moneyRecordMemberNum2")
															.val()
													+ "&moneyRecordFirstName="
													+ $("#moneyRecordFirstName2")
															.val()
													+ "&moneyRecordNickName="
													+ $("#moneyRecordNickName2")
															.val()
													+ "&moneyRecordCash="
													+ $("#moneyRecordCash2")
															.val()
													+ "&moneyRecordChip="
													+ $("#moneyRecordChip2")
															.val()
													+ "&moneyRecordType="
													+ $("#moneyRecordType2")
															.val()
													+ "&chipMemberNum="
													+ $("#chipMemberNum2").val()
													+ "&chipFirstName="
													+ $("#chipFirstName2").val()
													+ "&chipNickName="
													+ $("#chipNickName2").val()
													+ "&chipBalanced="
													+ $("#chipBalanced2").val()
													+ "&chipType="
													+ $("#chipType2").val()
													+ "&round="
													+ $("#round2").val()
													+ "&win=" + $("#win2").val()
													,
											method : 'post',
											contentType : 'application/json;charset=UTF-8',
											dataType : 'json',
											data : ant1,
											success : function(data) {
												alert("新增成功"
														+ data.data.chipRecordChip);
												$(location).attr("href","/admin/memberBeans/aiocheckout");
// 												$(location).attr("href","/admin/memberBeans/aiocheckoutonetime");


											},
											error : function(ajaxres) {
												alert("資料新增失敗");
											}
										});
							});
		</script>
		
		
		<script>
			$("#sendout3").click(function() {

								var insert = $("#form5").serializeArray();
								alert(insert);
								alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
								alert(ant1);

								$.ajax({url : '/admin/memberBeans/insert2?moneyRecordMemberNum='
													+ $("#moneyRecordMemberNum3")
															.val()
													+ "&moneyRecordFirstName="
													+ $("#moneyRecordFirstName3")
															.val()
													+ "&moneyRecordNickName="
													+ $("#moneyRecordNickName3")
															.val()
													+ "&moneyRecordCash="
													+ $("#moneyRecordCash3")
															.val()
													+ "&moneyRecordChip="
													+ $("#moneyRecordChip3")
															.val()
													+ "&moneyRecordType="
													+ $("#moneyRecordType3")
															.val()
													+ "&chipMemberNum="
													+ $("#chipMemberNum3").val()
													+ "&chipFirstName="
													+ $("#chipFirstName3").val()
													+ "&chipNickName="
													+ $("#chipNickName3").val()
													+ "&chipBalanced="
													+ $("#chipBalanced3").val()
													+ "&chipType="
													+ $("#chipType3").val()
													+ "&round="
													+ $("#round3").val()
													+ "&win=" + $("#win3").val()
													,
											method : 'post',
											contentType : 'application/json;charset=UTF-8',
											dataType : 'json',
											data : ant1,
											success : function(data) {
												alert("新增成功"
														+ data.data.chipRecordChip);
												$(location).attr("href","/admin/memberBeans/aiocheckout");
// 												$(location).attr("href","/admin/memberBeans/aiocheckoutonetime");


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
