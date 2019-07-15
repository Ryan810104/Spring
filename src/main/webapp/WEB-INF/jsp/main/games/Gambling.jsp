<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>

<style>
.ml4 {
	position: relative;
	font-weight: 900;
	font-size: 4.5em;
}

.ml4 .letters {
	position: absolute;
	margin: auto;
	left: 0;
	top: 0.3em;
	right: 0;
	opacity: 0;
}
</style>







</head>

<body>

<c:choose>
		<c:when test="${open==0}">
			<script>
				alert("開設房間成功");
			</script>
		</c:when>
		
	</c:choose>





	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">


		<h1 class="ml4" style="text-align: center">
			<span class="letters letters-1">2019 NBA總冠軍</span> <span
				class="letters letters-2">勇士VS暴龍!! 誰將奪冠</span> <span
				class="letters letters-3">請下注!!</span>
		</h1>

		<hr>

		<div style="margin-top: 200px; text-align: center">
			<button style="align: center" data-toggle="modal"
				data-target="#login">開創房間</button>
				
				
			<button style="align: center"  id="show"   data-toggle="modal"  data-target="#open"
				>現有房間列表</button>
		</div>


		<div class="modal fade" id="login" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">開設房間</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					
					
					<div class="modal-body">
						<form id="gameblingForm" name="gameblingForm"
							action="/save/GameBling" method="post">
							<h4 class="mb-3"></h4>
							
							
							
							
							
							<div class="mb-3">
								<label for="inputID">你的名稱</label> <input type="text" 
									id="memberId" name="memberId" value="${sessionScope.member.memberId}"
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
							
							<div class="mb-3">
								<label for="inputID">請輸入房間名稱</label> <input type="text"
									id="gameRoomName" name="gameRoomName" value="${memberParam.memberId}"
									class="form-control" placeholder="" required autofocus>
							</div>

							<div class="mb-3">
								<label for="inputPassword">選擇你賭的球隊</label> <select id="gameResult" name="gameResult">
									<option value="勇士">勇士</option>
									<option value="暴龍">暴龍</option>
									
								</select>
							</div>
							
							<div class="mb-3">
								<label for="inputID">下賭金額</label> <input type="text"
									id="gameMoney" name="gameMoney" value=""
									class="form-control" placeholder="" required autofocus>
									<span id="errormoney"></span>
							</div>
							
							<div class="mb-3">
								<label for="roomStage">房間狀態</label> <input type="hidden"
									id="gameRoomStage" name="gameRoomStage" value=1
									class="form-control" placeholder="" required autofocus>
									<span id="errormoney"></span>
							</div>
							
							

							<hr>
							<button class="btn btn-lg btn-primary btn-block" type="submit">確認開設房間</button>

							<hr>
				
						</form>
					</div>
		
					
				</div>
			</div>
		</div>









<div class="modal fade" id="open" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">現有房間</h5>					
					</div>
					<table>
								<thead style="font-size: 120%; color: #0066FF;">
								
									<tr>
									
										<th>房間名稱</th>
										<th>房主</th>
										<th>球隊名稱</th>
										<th>賭注金額</th>									
									</tr>
								</thead>
								<tbody style="font-size: 120%" id="room"></tbody>
							</table>
					
					
					
					
					<div class="modal-body">
	               
					</div>
					
	
				</div>
			</div>
		</div>

















		
		<script	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>


		<script>
		
		//前端判斷資料用
			function chkMoney() {
			let Money = document.getElementById("gameMoney").value;
			let re = new RegExp("^[0-9]*$");
			flag5 = false;

			if (Money == "") {
				document.getElementById("errormoney").innerHTML = "<i style='color:red'>一定要下注金額</n>";
			} else if (re.test(Money)) {
				flag5 = true;
				document.getElementById("errormoney").innerHTML = "<n style='color:#66FFFF'>金額已確認</n>";
				
			} else{
				
				document.getElementById("errormoney").innerHTML = "<i style='color:red'>只能輸入金額</i>";
				
			}

		}
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("gameMoney").addEventListener("blur",
					chkMoney);
		})
		
		
		//ajax傳資料
		$("#show").click(function(){
			$("#room").html("");
			$.ajax({
				url : "/save/GameBling1",
				type : "POST",
				success : function(data) {
					var opt="";
					for(i in data){
						opt += "<tr><td>" + data[i]["gameRoomName"] + "</td>" + "<td>"
						+ data[i]["memberId"] + "</td>" + "<td>"
						+ data[i]["gameResult"] + "</td>" + "<td>"
						+ data[i]["gameMoney"] + "</td>"+ "<td style='text-align:center;'>"
						+ "<button  onclick=''>"+"進入房間"+"</button>"+ "</td><tr>";
					}
					$("#room").append(opt);
				}
			
			});
			
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//動畫部分的
			var ml4 = {};
			ml4.opacityIn = [ 0, 1 ];
			ml4.scaleIn = [ 0.2, 1 ];
			ml4.scaleOut = 3;
			ml4.durationIn = 800;
			ml4.durationOut = 600;
			ml4.delay = 500;

			anime.timeline({
				loop : true
			}).add({
				targets : '.ml4 .letters-1',
				opacity : ml4.opacityIn,
				scale : ml4.scaleIn,
				duration : ml4.durationIn
			}).add({
				targets : '.ml4 .letters-1',
				opacity : 0,
				scale : ml4.scaleOut,
				duration : ml4.durationOut,
				easing : "easeInExpo",
				delay : ml4.delay
			}).add({
				targets : '.ml4 .letters-2',
				opacity : ml4.opacityIn,
				scale : ml4.scaleIn,
				duration : ml4.durationIn
			}).add({
				targets : '.ml4 .letters-2',
				opacity : 0,
				scale : ml4.scaleOut,
				duration : ml4.durationOut,
				easing : "easeInExpo",
				delay : ml4.delay
			}).add({
				targets : '.ml4 .letters-3',
				opacity : ml4.opacityIn,
				scale : ml4.scaleIn,
				duration : ml4.durationIn
			}).add({
				targets : '.ml4 .letters-3',
				opacity : 0,
				scale : ml4.scaleOut,
				duration : ml4.durationOut,
				easing : "easeInExpo",
				delay : ml4.delay
			}).add({
				targets : '.ml4',
				opacity : 0,
				duration : 500,
				delay : 500
			});
		</script>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
</html>
