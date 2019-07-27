<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>對賭房間</title>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
body, html {
	position: absolute;
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
	z-index:-1;
}

canvas {
	position: absolute;
	width: 100%;
	height: 100%;
	background: #000;
	cursor: pointer;
	z-index:-1;
	
}
.ml10 {
  position: relative;
  font-weight: 900;
  font-size: 2em;
}

.ml10 .text-wrapper {
  position: relative;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.05em;
  padding-bottom: 0.1em;
  overflow: hidden;
}

.ml10 .letter {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}
.ml13 {
  font-size: 1.9em;
  text-transform: uppercase;
  letter-spacing: 0.5em;
  font-weight: 600;
}

.ml13 .letter {
  display: inline-block;
  line-height: 1em;
}

	.button {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 12px 24px;
    border: 1px solid #a12727;
    border-radius: 8px;
    background: #ff4a4a;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff4a4a), to(#992727));
    background: -moz-linear-gradient(top, #ff4a4a, #992727);
    background: linear-gradient(to bottom, #ff4a4a, #992727);
    -webkit-box-shadow: #ff5959 0px 0px 40px 0px;
    -moz-box-shadow: #ff5959 0px 0px 40px 0px;
    box-shadow: #ff5959 0px 0px 40px 0px;
    text-shadow: #591717 1px 1px 1px;
    font: normal normal bold 23px impact;
    color: #ffffff;
    text-decoration: none;
}
.button:hover,
.button:focus {
    background: #ff5959;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff5959), to(#b62f2f));
    background: -moz-linear-gradient(top, #ff5959, #b62f2f);
    background: linear-gradient(to bottom, #ff5959, #b62f2f);
    color: #ffffff;
    text-decoration: none;
}
.button:active {
    background: #982727;
    background: -webkit-gradient(linear, left top, left bottom, from(#982727), to(#982727));
    background: -moz-linear-gradient(top, #982727, #982727);
    background: linear-gradient(to bottom, #982727, #982727);
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
    padding: 15px 60px;
    border: 5px solid #9322d4;
    border-radius: 34px;
    background: #e376a2;
    background: -webkit-gradient(linear, left top, left bottom, from(#e376a2), to(#0e3cf2));
    background: -moz-linear-gradient(top, #e376a2, #0e3cf2);
    background: linear-gradient(to bottom, #e376a2, #0e3cf2);
    -webkit-box-shadow: #ffff2f 0px 0px 40px 0px;
    -moz-box-shadow: #ffff2f 0px 0px 40px 0px;
    box-shadow: #ffff2f 0px 0px 40px 0px;
    text-shadow: #ccccca -3px -1px 0px;
    font: normal normal bold 26px impact;
    color: #0c0d0d;
    text-decoration: none;
}
.button1:hover,
.button1:focus {
    border: 5px solid #eb36ff;
    background: #ff8ec2;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff8ec2), to(#1148ff));
    background: -moz-linear-gradient(top, #ff8ec2, #1148ff);
    background: linear-gradient(to bottom, #ff8ec2, #1148ff);
    color: #0c0d0d;
    text-decoration: none;
}
.button1:active {
    background: #884761;
    background: -webkit-gradient(linear, left top, left bottom, from(#884761), to(#0e3cf2));
    background: -moz-linear-gradient(top, #884761, #0e3cf2);
    background: linear-gradient(to bottom, #884761, #0e3cf2);
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

<h1   align="center" class="ml13" style="color:white; width:100%;position:absolute;z-index:1;">${player1.gameRoomName}</h1>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
<script type="text/javascript">
//Wrap every letter in a span
var textWrapper = document.querySelector('.ml13');
textWrapper.innerHTML = textWrapper.textContent.replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml13 .letter',
    translateY: [100,0],
    translateZ: 0,
    opacity: [0,1],
    easing: "easeOutExpo",
    duration: 1400,
    delay: function(el, i) {
      return 300 + 30 * i;
    }
  }).add({
    targets: '.ml13 .letter',
    translateY: [0,-100],
    opacity: [1,0],
    easing: "easeInExpo",
    duration: 1200,
    delay: function(el, i) {
      return 100 + 30 * i;
    }
  });
</script>

<!-- 賭金資訊 -->
<h1   id="money" align="center" class="ml10" style="margin-top:400px;color:white; width:100%;position:absolute;z-index:1;">
  <span class="text-wrapper">
    <span class="letters"></span>
  </span>
</h1>


<script type="text/javascript">
//Wrap every letter in a span
var textWrapper = document.querySelector('.ml10 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>");

anime.timeline({loop: true})
  .add({
    targets: '.ml10 .letter',
    rotateY: [-90, 0],
    duration: 1300,
    delay: function(el, i) {
      return 45 * i;
    }
  }).add({
    targets: '.ml10',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });
  

</script>
<!-- 房名 -->



<script type="text/javascript">
var roomnum=${player1.roomNum}
</script>










<!-- 勇士的資料 -->
<div   style="margin-top:250px;position:absolute;z-index:1;">
<img src="https://opendoorlegal.org/wp-content/uploads/2018/09/golden-state-warriors-logo.png"  style="width:800px;height:450px"  >
<h2  align="center"  id="player1" name="player1"style=" border:silod 1px white;color:white"></h2>
</div>


<!-- 暴龍的資料 -->
<div   style="margin-top:250px;margin-left:1200px;position:absolute;z-index:1;">
<img src="/resources/img/tor.png"   style="width:430px;height:430px">
<h2  align="center" id="player2" name="player2" style="color:white"></h2>
</div>




<!-- 放玩家一的資料 -->
<form class="form-signin" name="form2" id="form2" action=""
			method="POST"  style="display:none">	
						<input id='chipRecordMemberNum' name="chipRecordMemberNum"
							type="text" value="${sessionScope.member.memberNum}"
							placeholder="chipRecordMemberNum" class="form-control"
							 > 
							
						<input id='chipRecordNickName'
							name="chipRecordNickName" type="text"
							value="${sessionScope.member.memberNickName}"
							placeholder="chipRecordNickName" class="form-control"
							> 
						<input id='chipRecordFirstName'
							name="chipRecordFirstName" type="text"
							value="${sessionScope.member.memberId}"
							placeholder="chipRecordFirstName" class="form-control"
							> 
						<input id='chipRecordChip'
							name="chipRecordChip" type="text" value=""
							placeholder="chipRecordChip" class="form-control">

					
						<input id='chipRecordChiptype' name="chipRecordChiptype" type="text"
							 placeholder="chipRecordChiptype"
							class="form-control"  > 
							
						<input
							id='chipRecordRound' name="chipRecordRound" type="text"
							value="${memberP.moneyRecordChip}" placeholder="chipRecordRound"
							class="form-control"> 
							
						<input id='chipRecordWin'
							name="chipRecordWin" type="text" 
							
							placeholder="chipRecordWin" class="form-control" value=0 >

						<input id='chipMemberNum' name="chipMemberNum" type="text"
							 value="${sessionScope.member.memberNum}"
							placeholder="chipMemberNum:" class="form-control"> 
							
							<input
							id='chipFirstName' name="chipFirstName" type="text"
							
							value="${sessionScope.member.memberId}"
							placeholder="chipFirstName:" class="form-control" > 
							
							<input
							id='chipNickName' name="chipNickName" type="text"
							
							value="${sessionScope.member.memberNickName}"
							placeholder="chipNickName:" class="form-control" > 
							
							<input
							id='chipBalanced' name="chipBalanced" type="text"
							value="${memberP.chipRecordChip}" placeholder="chipBalanced:"
							class="form-control"> 
							
							<input id='chipType'
							name="chipType" type="text" value="${memberP.chipRecordChip}"
							placeholder="chipType:" class="form-control" > 
							
							<input
							id='win' name="win" type="text" value=0
							placeholder="win:" class="form-control" > 
							
							<input
							id='round' name="round" type="text"
							 placeholder="round:" class="form-control"  >
							 
					
						</form>	
						
			


<div  align="center" style="margin-top:650px;color:white; width:100%;position:absolute;z-index:1;">
<a  id="showWinner"class="button" href="#">查看賭注結果</a>
<!-- <input   id="showWinner" type="button"  value="查看賭注結果"   /> -->
</div>

<div  id="backhome"align="center" style="display:none;margin-top:650px;color:white; width:100%;position:absolute;z-index:1;">
<a class="button1" href="/main/Gamebling"> Back to home</a>
</div>

<!-- 察看結果js -->
<script type="text/javascript">
var winner="";

$("#showWinner").mousedown(function(){

	document.getElementById('chipType').value='球賽賭盤';
	document.getElementById('chipRecordChiptype').value='球賽賭盤';
	document.getElementById('round').value='1';	
	document.getElementById('chipRecordRound').value='1';
	
	$.ajax({
		url:"/save/GameBling3?num="+roomnum,
		type:"POST",
		success : function(data) {
			if(data.player2Result==null){
				alert("還沒有玩家進來!");
			}else{
				document.getElementById('backhome').style.display="inline";
				document.getElementById('chipRecordChip').value=-(data.gameMoney/2);
				document.getElementById('chipBalanced').value=-(data.gameMoney/2);
				str=data.gameResult;
				alert(str);
				var player1Result="";
				var player2Result="";
				if(data.player1Result=="Warriors"){
					player1Result="勇士";
					player2Result="暴龍";
				}else{
					player1Result="暴龍";
					player2Result="勇士";
				}
//	 				alert(player1Result);
//	  				alert(player2Result);
			
				if(str.indexOf(player2Result)==0){			
				alert(data.gameRoomMember+"贏了!!");	

//	 				winner=data.gameRoomMember;		
				}else{
					alert(data.memberId+"贏了!!");
				}
				
				
				if(str.indexOf(player2Result)==0&&$("#chipFirstName").val()==data.gameRoomMember){
					  document.getElementById('chipRecordWin').value='1';
		 				document.getElementById('win').value='1';
		 				document.getElementById('chipRecordChip').value=data.gameMoney/2;
		 				document.getElementById('chipBalanced').value=data.gameMoney/2;
				}
				
				if(str.indexOf(player1Result)==0&&$("#chipFirstName").val()==data.memberId){
					  document.getElementById('chipRecordWin').value='1';
		 				document.getElementById('win').value='1';
		 				document.getElementById('chipRecordChip').value=data.gameMoney/2;
		 				document.getElementById('chipBalanced').value=data.gameMoney/2;
				}
				
			}	
		
			
		}
	
	});	
	
	
	var insert = $("#form2").serializeArray();
   
	//alert(JSON.stringify(insert));
	var i = {};
	$.each(insert, function(index, value1) {
		i[value1.name] = value1.value;
	});
	var ant1 = JSON.stringify(i);
	//alert(ant1);

	setTimeout(() => {
		
	
	$.ajax({url : '/admin/memberBeans/insert3?chipRecordMemberNum='
						+ $("#chipRecordMemberNum")
								.val()
						+ "&chipRecordNickName="
						+ $("#chipRecordNickName")
								.val()
						+ "&chipRecordFirstName="
						+ $("#chipRecordFirstName")
								.val()
						+ "&chipRecordChip="
						+ $("#chipRecordChip")
								.val()
						+ "&chipRecordChiptype="
						+ $("#chipRecordChiptype")
								.val()
						+ "&chipRecordRound="
						+ $("#chipRecordRound")
								.val()
								+ "&chipRecordWin="
						+ $("#chipRecordWin")
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

				},
				error : function(ajaxres) {
					alert("資料新增失敗");
				}
			});
	}, 2000);
	
});




</script>

<script>

	
	class Particle {
		constructor() {
			// changing these parameters can give very different results
			this.damp = 0.00002; // remember a very small amount of the last direction
			this.accel = 1; // move very quickly
			this.init();
		}
		init() {
			this.x = Math.random() * canvas.width;
			this.y = Math.random() * canvas.height;
			this.vx = this.accel * (Math.random() - Math.random());
			this.vy = this.accel * (Math.random() - Math.random());
		}
		step() {
			// move towards every attractor
			// at a speed inversely proportional to distance squared
			// (much slower when further away, very fast when close)
			for (const a of attractors) {
				// calculate the square of the distance
				// from this particle to the current attractor
				const dx = a.x - this.x;
				const dy = a.y - this.y;
				const d2 = dx * dx + dy * dy;
				if (d2 > 0.1) {
					// make sure we don't divide by zero
					// accelerate towards each attractor
					this.vx += this.accel * dx / d2;
					this.vy += this.accel * dy / d2;
				}
			}
			// move by the velocity
			this.x += this.vx;
			this.y += this.vy;
			// scale the velocity back for the next frame
			this.vx *= this.damp;
			this.vy *= this.damp;
			// draw particle
			ctx.fillRect(this.x, this.y, 0.5, 0.5);
		}
	}
	// init canvas
	const canvas = {
		init() {
			this.frame = 0;
			this.elem = document.createElement("canvas");
			document.body.appendChild(this.elem);
			this.resize();
			// reset on mouse click
		
			this.elem.addEventListener("touchstart", e => this.reset(), false);
			return this.elem.getContext("2d");
		},
		resize () {
			this.width = this.elem.width = this.elem.offsetWidth;
			this.height = this.elem.height = this.elem.offsetHeight;
		},
		reset() {
			ctx.globalCompositeOperation = "source-over";
			this.resize();
			ctx.fillStyle = "#321";
			ctx.globalCompositeOperation = "lighter";
			for (const p of particles) p.init();
			for (const a of attractors) a.init();
			this.frame = 0;
		}
	};
	// init pen
	const ctx = canvas.init();
	const attractors = Array.from({ length: 8 }, () => new Particle());
	const particles = Array.from({ length: 1000 }, () => new Particle());
	canvas.reset();
	// move and draw particles
	const run = () => {
		requestAnimationFrame(run);
		if (canvas.frame++ < 1000) { 
			for (const p of particles) p.step();
		}
	};
	run();





// Wrap every letter in a span

</script>





<script>
	

      
		setInterval(function(){
			$.ajax({
				url:"/save/GameBling3?num="+roomnum,
				type:"POST",
				success : function(data) {
					$("#money").html("目前總賭金:"+data.gameMoney);
					
				
				if(data.player1Result=="Raptors"){
					$("#player2").html("玩家:"+data.memberId);
					if(data.gameRoomMember==null){
						$("#player1").html("玩家:等待中.......");
					}else{
						$("#player1").html("玩家:"+data.gameRoomMember);
					}
						
					
				}else{
					$("#player1").html("玩家:"+data.memberId);
					
					if(data.gameRoomMember==null){
						$("#player2").html("玩家:等待中.......");
					}else{
						$("#player2").html("玩家:"+data.gameRoomMember);
					}
						
				}

				}
				
			});
		},4);
	
	</script>




	

</body>
<script>

</script>







</html>
