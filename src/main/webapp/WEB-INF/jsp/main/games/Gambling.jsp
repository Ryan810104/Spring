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
#myCanvas {
		display: block;
	}

	.roomnum,#button2 {
		font-family: "Gill Sans", "Gill Sans MT", Calibri, sans-serif;
		position: absolute;
		font-size: 0.5;
		text-transform: uppercase;
	
		border-radius: 10px;
		color: white;
		text-shadow: -1px -1px 1px rgba(0,0,0,0.8);
		border: 5px solid transparent;
		border-bottom-color: rgba(0,0,0,0.35);
		background: hsla(260, 100%, 50%, 1);
		cursor: pointer;

		animation: pulse 1s infinite alternate;
		transition: background 0.4s, border 0.2s, margin 0.2s;
	}
	.roomnum:hover,#button2:hover {
		background: hsla(220, 100%, 60%, 1);
		margin-top: -1px;

		animation: none;
	}
 .roomnum:hover, #button2:active {
		border-bottom-width: 0;
		margin-top: 5px;
	}
	@keyframes pulse {
		0% {
			margin-top: 0px;
		}
		100% {
			margin-top: 1px; 
		} 
	}
	
	.button {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 12px 38px;
    border: 1px solid #c23c3c;
    border-radius: 8px;
    background: #ff6262;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff6262), to(#c23c3c));
    background: -moz-linear-gradient(top, #ff6262, #c23c3c);
    background: linear-gradient(to bottom, #ff6262, #c23c3c);
    -webkit-box-shadow: #ff5a5a 0px 0px 40px 0px;
    -moz-box-shadow: #ff5a5a 0px 0px 40px 0px;
    box-shadow: #ff5a5a 0px 0px 40px 0px;
    text-shadow: #792626 1px 1px 1px;
    font: normal normal bold 20px arial;
    color: #ffffff;
    text-decoration: none;
}
.button:hover,
.button:focus {
    border: 1px solid #f24b4b;
    background: #ff7676;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff7676), to(#e94848));
    background: -moz-linear-gradient(top, #ff7676, #e94848);
    background: linear-gradient(to bottom, #ff7676, #e94848);
    color: #ffffff;
    text-decoration: none;
}
.button:active {
    background: #c23c3c;
    background: -webkit-gradient(linear, left top, left bottom, from(#c23c3c), to(#c23c3c));
    background: -moz-linear-gradient(top, #c23c3c, #c23c3c);
    background: linear-gradient(to bottom, #c23c3c, #c23c3c);
}
.button:before{
    content:  "\0000a0";
    display: inline-block;
    height: 24px;
    width: 24px;
    line-height: 24px;
    margin: 0 4px -6px -4px;
    position: relative;
    top: 0px;
    left: 0px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEyElEQVRIia2Va2xTZRjHf+fSrbRbYTh3010YY0Ecg8UoIETJ5APRDAYqfFliMqIJIpcgiSFZREOMH4xRol8MJCgYYzSBqENuMcIYlxmGLhtzA9Z1967b2q7t2p6257x+OGdQjSEu8UmenJw37/n/n///fc77KMwx6isoWFvI6ifmkyuniI1rxOaK8dC4tC//uBi7Ioy+MyJw6UOt8/PNV7/bntlYaMf+vxBc2F34vZgZFiI8JER4WIioV4jRy6Lv2JbeT2pZ98/98pwZhAAtaGUAZnxgy6F8yweVr7/73q8nXnE0pm9X567BgEQIdAMQJqHJjHPJBvXl3frRYPiwb895mgGUucI3rBDbyueHl0naFGS6QE+BHgM9DqkotgUlUnFWZEPbjd4vh2aIKtW5ZD1XREW3n4BZ3sNj06LkNqevc1mkqwXJfY7MhY+APQdSUUjFITlDdmGpMz9w1fjmlvaL8tlm9jUdbDi94/lHG1+rkVZvLJ5eoM2IaE8Av+nB32NtKetddparKmo8rpFy/4azsAhsDkjFTDUCpITv8WNnh76QTm7lcMPeXU04S028RIDkpJuhwUHP9NhQq7t/9OLxNtF6pg+PpTAXKFuaS+UbT7HjxSXUFpcX4Fi3E3TdKkmgjXexcc/pFWo0QRK/G2Tn/YJtOaWUL1xURo1RVpMKNtS9OsTw6Mi98KS35fadiYtHr9B6aZBb+8/z82CIQ++4vPsc2iBIDvPQdci021icS4l628c9ERxAyi4GYTxwRRZmE8uCjNxCyvMeq0A2KlbUTjdu3e412tu7Lqx7P/TSp9c5tHE56wsM/0rQTAJDgqk2ZAVZvTpMT8Q/QXZewCSQhNlbae1nPoRpkAx2yS9nTIUqzTdCsmteD7K2El0zwf3doA2AAmq3l2GfPxTK1vwuMB6AK2ngzKoxEKN38d0YJzxjdlzTC1Q9syZ/E8Y06EkI3QPNDzKkkhhqzCA4FdQGFwe6q8jKBRRThSxM/PtKdPQ+D972KKMaoa86+OhoA7X1dTnH5+dlOtD6IDaBeQAQ9cFIiEkVSPijuImPVWF4weEEuwMkG8hSWoPqiDxw1KgY4yLYtFp5u3yRrVJRk5C4a9prs0xLwEA/oevDeFSA8QjdqGxCFUAE9AikAFk2U5FAAtUFOTmw6klKEEkQCVNlpln4bMZuQ4ePlnAcnwrQ4eV3AUgq5u2kYlajGlZaa4qVkpVYf4ZhgRuQ6oTREVInOjgCGCrA5X7uxDRwuCwAmykTAWSlrSkWUfodLCwCDZLXwOeGZg9fn/2TFqztdI0x7AsTKivAhQ3ENPjbTVtzykBZDuSnkchpCjQQ/RBphUAcrvho2f8TB60STYKETnAihKfMRrUYg4luGBFEFZAjHuxON2QVQeZSkAsAO4gU6JMQvQPTg5AQ0Ozh1IEf2WsYeGcFzs6D1PQUbr2Lat8E9KfwHjjHTv8M8bfWsmtNEbX5fhxqG6jzQLE6mRREkhi3/PQcu8mR5k6+BUJpBj4YOCMxusaD1P8RpevN0+wYmOImYOw+RWuWnWV1VdSuKuHpXCcFGSpyWCPUO0HPD51c7vVyDfDxsOu+rppnP67npCODCv59lMqmObisdDDHiSgDGXP54L/EX5ztNQw3UOoSAAAAAElFTkSuQmCC") no-repeat left center transparent;
    background-size: 100% 100%;
}
	
	
.button1 {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 12px 38px;
    border: 1px solid #3598a9;
    border-radius: 8px;
    background: #56faff;
    background: -webkit-gradient(linear, left top, left bottom, from(#56faff), to(#3598a9));
    background: -moz-linear-gradient(top, #56faff, #3598a9);
    background: linear-gradient(to bottom, #56faff, #3598a9);
    -webkit-box-shadow: #5affff 0px 0px 40px 0px;
    -moz-box-shadow: #5affff 0px 0px 40px 0px;
    box-shadow: #5affff 0px 0px 40px 0px;
    text-shadow: #266d79 1px 1px 1px;
    font: normal normal bold 20px arial;
    color: #ffffff;
    text-decoration: none;
}
.button1:hover,
.button1:focus {
    border: 1px solid #4bd9f2;
    background: #67ffff;
    background: -webkit-gradient(linear, left top, left bottom, from(#67ffff), to(#40b6cb));
    background: -moz-linear-gradient(top, #67ffff, #40b6cb);
    background: linear-gradient(to bottom, #67ffff, #40b6cb);
    color: #ffffff;
    text-decoration: none;
}
.button1:active {
    background: #3598a9;
    background: -webkit-gradient(linear, left top, left bottom, from(#3598a9), to(#3598a9));
    background: -moz-linear-gradient(top, #3598a9, #3598a9);
    background: linear-gradient(to bottom, #3598a9, #3598a9);
}
.button1:before{
    content:  "\0000a0";
    display: inline-block;
    height: 24px;
    width: 24px;
    line-height: 24px;
    margin: 0 4px -6px -4px;
    position: relative;
    top: 0px;
    left: 0px;
    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEyElEQVRIia2Va2xTZRjHf+fSrbRbYTh3010YY0Ecg8UoIETJ5APRDAYqfFliMqIJIpcgiSFZREOMH4xRol8MJCgYYzSBqENuMcIYlxmGLhtzA9Z1967b2q7t2p6257x+OGdQjSEu8UmenJw37/n/n///fc77KMwx6isoWFvI6ifmkyuniI1rxOaK8dC4tC//uBi7Ioy+MyJw6UOt8/PNV7/bntlYaMf+vxBc2F34vZgZFiI8JER4WIioV4jRy6Lv2JbeT2pZ98/98pwZhAAtaGUAZnxgy6F8yweVr7/73q8nXnE0pm9X567BgEQIdAMQJqHJjHPJBvXl3frRYPiwb895mgGUucI3rBDbyueHl0naFGS6QE+BHgM9DqkotgUlUnFWZEPbjd4vh2aIKtW5ZD1XREW3n4BZ3sNj06LkNqevc1mkqwXJfY7MhY+APQdSUUjFITlDdmGpMz9w1fjmlvaL8tlm9jUdbDi94/lHG1+rkVZvLJ5eoM2IaE8Av+nB32NtKetddparKmo8rpFy/4azsAhsDkjFTDUCpITv8WNnh76QTm7lcMPeXU04S028RIDkpJuhwUHP9NhQq7t/9OLxNtF6pg+PpTAXKFuaS+UbT7HjxSXUFpcX4Fi3E3TdKkmgjXexcc/pFWo0QRK/G2Tn/YJtOaWUL1xURo1RVpMKNtS9OsTw6Mi98KS35fadiYtHr9B6aZBb+8/z82CIQ++4vPsc2iBIDvPQdci021icS4l628c9ERxAyi4GYTxwRRZmE8uCjNxCyvMeq0A2KlbUTjdu3e412tu7Lqx7P/TSp9c5tHE56wsM/0rQTAJDgqk2ZAVZvTpMT8Q/QXZewCSQhNlbae1nPoRpkAx2yS9nTIUqzTdCsmteD7K2El0zwf3doA2AAmq3l2GfPxTK1vwuMB6AK2ngzKoxEKN38d0YJzxjdlzTC1Q9syZ/E8Y06EkI3QPNDzKkkhhqzCA4FdQGFwe6q8jKBRRThSxM/PtKdPQ+D972KKMaoa86+OhoA7X1dTnH5+dlOtD6IDaBeQAQ9cFIiEkVSPijuImPVWF4weEEuwMkG8hSWoPqiDxw1KgY4yLYtFp5u3yRrVJRk5C4a9prs0xLwEA/oevDeFSA8QjdqGxCFUAE9AikAFk2U5FAAtUFOTmw6klKEEkQCVNlpln4bMZuQ4ePlnAcnwrQ4eV3AUgq5u2kYlajGlZaa4qVkpVYf4ZhgRuQ6oTREVInOjgCGCrA5X7uxDRwuCwAmykTAWSlrSkWUfodLCwCDZLXwOeGZg9fn/2TFqztdI0x7AsTKivAhQ3ENPjbTVtzykBZDuSnkchpCjQQ/RBphUAcrvho2f8TB60STYKETnAihKfMRrUYg4luGBFEFZAjHuxON2QVQeZSkAsAO4gU6JMQvQPTg5AQ0Ozh1IEf2WsYeGcFzs6D1PQUbr2Lat8E9KfwHjjHTv8M8bfWsmtNEbX5fhxqG6jzQLE6mRREkhi3/PQcu8mR5k6+BUJpBj4YOCMxusaD1P8RpevN0+wYmOImYOw+RWuWnWV1VdSuKuHpXCcFGSpyWCPUO0HPD51c7vVyDfDxsOu+rppnP67npCODCv59lMqmObisdDDHiSgDGXP54L/EX5ztNQw3UOoSAAAAAElFTkSuQmCC") no-repeat left center transparent;
    background-size: 100% 100%;
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
			<button  class="button" style="width:50%;align: center" data-toggle="modal"
				data-target="#login">開創房間</button>
		</div>		
			
				
			<div style="margin-top: 200px; text-align: center">	
				
			<button  class="button1" style="width:50%;align: center"  id="show"   data-toggle="modal"  data-target="#open"
				>現有房間列表</button>
		</div>
		
		



		<div class="modal fade" id="login" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header" >
						<h5 class="modal-title" id="exampleModalLongTitle">開設房間</h5>
						
					</div>
					
					
					<div class="modal-body">
						<form id="gameblingForm" name="gameblingForm"
							action="/save/GameBling" method="post">
							<h4 class="mb-3"></h4>
							
							
							<div class="mb-3">
								<label for="inputID">玩家編號</label> <input type="text" 
									id="membernum" name="membernum" value="${sessionScope.member.memberNum}"
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
							
							
							<div class="mb-3">
								<label for="inputID">你的名稱</label> <input type="text" 
									id="memberId" name="memberId" value="${sessionScope.member.memberId}"
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
							
							<div class="mb-3">
								<label for="inputID">請輸入房間名稱</label> <input type="text"
									id="gameRoomName" name="gameRoomName" value="${memberParam.memberId}"
									class="form-control" placeholder="" required autofocus>
									<span id="errorroom"></span>
							</div>

							<div class="mb-3">
								<label for="inputPassword">選擇你賭的球隊</label> <select id="player1Result" name="player1Result">
									<option value="Warriors">勇士</option>
									<option value="Raptors">暴龍</option>
									
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
							<div   align=center style="width:100%;height:40px ">
							<input  style="width:100% ;height:100% ;background-color:#5599FF" type="button" id="openroom"  value="確認開設房間"/>
                            </div>
							<hr>
				
						</form>
					</div>
					
					
				
		
					
				</div>
			</div>
		</div>
		
		<script>
		
		$("#openroom").click(function(){
 
			if(confirm("確定要開設賭局"))
			{
				$.ajax({
					url:"/main/complain/findSummary",
					type:"POST",
					data:{
						memberNum:$("#membernum").val().trim(),
					},
					success:function(data){		
						var money = $("#gameMoney").val() ;
						var money2 = parseInt(String(data).replace(",",""));
// 						alert(money);
// 						alert(typeof(money2));
// 						alert(money <= money2);
						if(money <= money2&&flag5==true&&flag6==true){						
							$("#gameblingForm").submit();
						}else if (money > money2){
							alert("你餘額不足請先儲值");	
							location.href='/main/Gamebling';
						};			
					},
					
				});				
			}
			else
			{
				location.href='/main/Gamebling';
			}
		});
		
			</script>
			

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
									    <th>房間號碼</th>
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
		
		
		
		<!-- 						放玩家2的資料 -->	
						<form id="submitroom" name="gameblingForm"
							action="/save/GameBling2" method="post"  style="display:none" >
							<h4 class="mb-3"></h4>	
							
							<div class="mb-3">
								<label for="inputID">roomnum</label> <input type="text" 
									id="roomNum" name="roomNum" value=""
									class="form-control" placeholder="" required autofocus readonly>
							</div>

							<div class="mb-3">
								<label for="inputID">你的名稱</label> <input type="text" 
									id="gameRoomMember" name="gameRoomMember" value="${sessionScope.member.memberId}"
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
							<div class="mb-3">
								<label for="inputID">memberNum</label> <input type="text" 
									id="chipMemberNum" name="chipMemberNum" value="${sessionScope.member.memberNum}"
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
							<div class="mb-3">
								<label for="inputID">money</label> <input type="text" 
									id="roommoney" name="roommoney" value=""
									class="form-control" placeholder="" required autofocus readonly>
							</div>
							
					
							
						</form>
					


		<script	src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>


		<script>
		var alldata=null
		var num2=0
		//前端判斷資料用
			function chkMoney() {
			let Money = document.getElementById("gameMoney").value;
			let re = new RegExp("^[0-9]*$");
			flag5 = false;

			if (Money == "") {
				document.getElementById("errormoney").innerHTML = "<i style='color:red'>一定要下注金額</n>";
			} else if (re.test(Money)) {
				flag5 = true;
				document.getElementById("errormoney").innerHTML = "<n style='color:#00DD00'>金額已確認</n>";
				
			} else{
				
				document.getElementById("errormoney").innerHTML = "<i style='color:red'>只能輸入金額</i>";
				
			}

		}
		
		
		//檢測房名
		function chkroomname(){
			flag6=false;
			let name= document.getElementById("gameRoomName").value;
			if(name==""){
				document.getElementById("errorroom").innerHTML = "<i style='color:red'>一定要輸入房名</n>";
			}else{
				document.getElementById("errorroom").innerHTML = "<i style='color:#00DD00'>以確認</n>";
				flag6=true;
			}
		}
		
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("gameMoney").addEventListener("blur",
					chkMoney);
		})
		
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("gameRoomName").addEventListener("blur",
					chkroomname);
		})
		
		
		//ajax傳資料
		$("#show").click(function(){
			$("#room").html("");
			$.ajax({
				url : "/save/GameBling1",
				type : "POST",
				success : function(data) {
					alldata=data;
					var opt="";
					for(i in data){
						
						opt += "<tr><td  id=\"num"+i+"1\" style='height:70px;width:100px'>" + data[i]["roomNum"] + "</td>" +"<td  style='height:60px;width:100px'>" + data[i]["gameRoomName"] + "</td>" + "<td style='height:60px;width:100px'>"
						+ data[i]["memberId"] + "</td>" + "<td style='height:70px;width:100px'>"
						+ data[i]["player1Result"] + "</td>" + "<td   id=\"money"+i+"1\" style='height:70px;width:100px' >"
						+ data[i]["gameMoney"] + "</td>"+ "<td style='height:70px;width:100px'>"
						+ "<button    style='margin-top:0px;width:80px' class='roomnum'  id=num"+i+">"+"進入房間"+"</button>"+"</td><tr>";
						
					}
					
					$("#room").append(opt);
					
					findroomnum();
					
				}
			
			});
			
		});
		

		function findroomnum(){
			
			$(".roomnum").click(function(){
				
				if(confirm("確定要以相同賭金下注另一隊!!"))
				{
					$("#roomNum").val($("#"+this.id+"1").html());
					
				    document.getElementById("submitroom").submit();
					
				}
				else
				{
					location.href='/main/Gamebling';
				}
			
			});
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
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
