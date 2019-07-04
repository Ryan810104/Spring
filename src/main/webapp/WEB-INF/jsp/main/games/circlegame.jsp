<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/demo.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Barriecito&display=swap" rel="stylesheet">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>

<style>
@keyframes bounce{from{transform:translateY(0px)}to{transform:translateY(-10px)}}
@-webkit-keyframes bounce{from{transform:translateY(0px)}to{transform:translateY(-10px)}}
.bounce {animation: bounce 1s infinite alternate;-webkit-animation: bounce 1s infinite alternate;}
</style>



<script type="text/javascript">
$(function (){

	var rotateTimeOut = function (){
		$('#rotate').rotate({
			angle:0,
			animateTo:2160,
			duration:8000,
			callback:function (){
				alert('网络超时，请检查您的网络设置！');
			}
		});
	};
	var bRotate = false;

	var rotateFn = function (awards, angles, txt){
		bRotate = !bRotate;
		$('#rotate').stopRotate();
		$('#rotate').rotate({
			angle:0,
			animateTo:angles+1800,
			duration:8000,
			callback:function (){
				alert(txt);
				bRotate = !bRotate;
			}
		})
	};
	//特效
	$('.ml12').each(function(){
		  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
		});

		anime.timeline({loop: true})
		  .add({
		    targets: '.ml12 .letter',
		    translateX: [40,0],
		    translateZ: 0,
		    opacity: [0,1],
		    easing: "easeOutExpo",
		    duration: 1200,
		    delay: function(el, i) {
		      return 500 + 30 * i;
		    }
		  }).add({
		    targets: '.ml12 .letter',
		    translateX: [0,-30],
		    opacity: [1,0],
		    easing: "easeInExpo",
		    duration: 1100,
		    delay: function(el, i) {
		      return 100 + 30 * i;
		    }
		  });
		
		$('.cssAnim3').hover(function(){
			  $(this).addClass('rotateX');
			},function(){
			  $(this).removeClass('rotateX');
			});
//遊戲開始按鈕跟一些需要處理的事件
	$('.pointer').click(function (){
		
		
		document.getElementById('gametype').value='Roulette';
		if(bRotate)return;
		var item = rnd(0,7);

		switch (item) {
			case 0:
				//var angle = [26, 88, 137, 185, 235, 287, 337];
				
				rotateFn(0, 337, '可惜了!下一次就會中大獎');
				document.getElementById('money').value=0;
				document.getElementById('lastmoney').value=-200;
				break;
			case 1:
				//var angle = [88, 137, 185, 235, 287];
				rotateFn(1, 26, '贏了800元');
				document.getElementById('money').value=800;
				document.getElementById('lastmoney').value=600;
				break;
			case 2:
				//var angle = [137, 185, 235, 287];
				rotateFn(2, 88, '輸了1000');
				document.getElementById('money').value=-1000;
				document.getElementById('lastmoney').value=-1200;
				break;
			case 3:
				//var angle = [137, 185, 235, 287];
				rotateFn(3, 137, '恭喜你!中大獎8888');
				document.getElementById('money').value=8888;
				document.getElementById('lastmoney').value=8688;
				break;
			case 4:
				//var angle = [185, 235, 287];
				rotateFn(4, 185, '贏了1600元');
				document.getElementById('money').value=1600;
				document.getElementById('lastmoney').value=1400;
				break;
			case 5:
				//var angle = [185, 235, 287];
				rotateFn(5, 185, '贏了1600元');
				document.getElementById('money').value=1600;
				document.getElementById('lastmoney').value=1400;
				break;
			case 6:
				//var angle = [235, 287];
				rotateFn(6, 235, '輸了800元');
				document.getElementById('money').value=-800;
				document.getElementById('lastmoney').value=-1000;
				break;
			case 7:
				//var angle = [287];
				rotateFn(7, 287, '輸了500');
				document.getElementById('money').value=-500;
				document.getElementById('lastmoney').value=-700;
				break;
		}

		console.log(item);
	});
});
function rnd(n, m){
	return Math.floor(Math.random()*(m-n+1)+n)
}
</script>

</head>

<body >
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		

<script type="text/javascript" src="/resources/js/awardRotate.js"></script>

<form class="form-signin" name=savegame id="savegame" action="/save/SaveGameData"
		method="POST">	
			<h2>輸贏</h2>
			
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='money' name="'money'" type="text" value="${memberP.chipMemberid}"
						placeholder="取輪盤結果:" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='lastmoney' name=balance type="text" value="${memberP.chipBalanced}"
						placeholder="送進後台的結果" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='gametype' name="gameType" type="text" value="${memberP.chipBalanced}"
						placeholder="遊戲種類" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='datetime' name="chipBalanced" type="text" value="${memberP.chipBalanced}"
						placeholder="送進後台的結果" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='playerId' name="memberId" type="text" value="${sessionScope.member.memberId}"
						placeholder="玩家" class="form-control">
				</div>
			</div>
			
</form>

<h1 class="ml12" style="color:black ;text-align:center;font-family:'Barriecito', cursive;font-size:50px">
Russian roulette </h1>
<h1 class="ml12"  style="color:red ;text-align:center">提醒:每局需花200元</h1>



<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

<div class="turntable-bg" > 
  <div class="pointer"><img src="/resources/img/pointer1.png" alt="pointer"/></div>
  <div class="rotate" ><img id="rotate" src="/resources/img/table3.png" alt="turntable"/></div>
</div>
<a href="/main/games">
<h1 class="bounce" id="bounce" style="text-align:center">結束遊戲回選單</h1>

</a>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
</html>
