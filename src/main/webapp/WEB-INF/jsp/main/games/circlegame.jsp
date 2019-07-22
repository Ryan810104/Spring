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
		document.getElementById('chipType').value='Roulette';
		document.getElementById('chipRecordChiptype').value='Roulette';
		document.getElementById('playRound').value='1';
		document.getElementById('chipRecordRound').value='1';
		
		
		
		if(bRotate)return;
		var item = rnd(0,7);

		switch (item) {
			case 0:
				//var angle = [26, 88, 137, 185, 235, 287, 337];
				document.getElementById('chipBalanced').value=-200;
				document.getElementById('chipRecordChip').value=-200;	
				rotateFn(0, 337, '可惜了!下一次就會中大獎');
				document.getElementById('money').value=0;
				document.getElementById('win').value=0;
				document.getElementById('chipRecordWin').value=0;
				
				break;
			case 1:
				//var angle = [88, 137, 185, 235, 287];
				document.getElementById('chipBalanced').value=600;
				document.getElementById('chipRecordChip').value=600;
				rotateFn(1, 26, '贏了800元');
				document.getElementById('money').value=800;
				document.getElementById('win').value=1;
				document.getElementById('chipRecordWin').value=1;
				break;
			case 2:
				//var angle = [137, 185, 235, 287];
				document.getElementById('chipBalanced').value=-1200;
				document.getElementById('chipRecordChip').value=-1200;
				rotateFn(2, 88, '輸了1000');
				document.getElementById('money').value=-1000;
				document.getElementById('win').value=0;
				document.getElementById('chipRecordWin').value=0;
				break;
			case 3:
				//var angle = [137, 185, 235, 287];
				document.getElementById('chipBalanced').value=8688;
				document.getElementById('chipRecordChip').value=8688;
				rotateFn(3, 137, '恭喜你!中大獎8888');
				document.getElementById('money').value=8888;
				document.getElementById('win').value=1;
				document.getElementById('chipRecordWin').value=1;
				break;
			case 4:
				//var angle = [185, 235, 287];
				document.getElementById('chipBalanced').value=1400;
				document.getElementById('chipRecordChip').value=1400;
				rotateFn(4, 185, '贏了1600元');
				document.getElementById('money').value=1600;
				document.getElementById('win').value=1;
				document.getElementById('chipRecordWin').value=1;
				break;
			case 5:
				//var angle = [185, 235, 287];
				document.getElementById('chipBalanced').value=1400;
				document.getElementById('chipRecordChip').value=1400;
				rotateFn(5, 185, '贏了1600元');
				document.getElementById('money').value=1600;
				document.getElementById('win').value=1;
				document.getElementById('chipRecordWin').value=1;
				break;
			case 6:
				//var angle = [235, 287];
				document.getElementById('chipBalanced').value=-1000;
				document.getElementById('chipRecordChip').value=-1000;
				rotateFn(6, 235, '輸了800元');
				document.getElementById('money').value=-800;
				document.getElementById('win').value=0;
				document.getElementById('chipRecordWin').value=0;
				break;
			case 7:
				//var angle = [287];
				document.getElementById('chipBalanced').value=-700;
				document.getElementById('chipRecordChip').value=-700;
				rotateFn(7, 287, '輸了500');
				document.getElementById('money').value=-500;
				document.getElementById('win').value=0;
				document.getElementById('chipRecordWin').value=0;
				break;
		}
		
		//ajax丟資料
		var insert = $("#form2").serializeArray();
								//alert(insert);
								//alert(JSON.stringify(insert));
								var i = {};
								$.each(insert, function(index, value1) {
									i[value1.name] = value1.value;
								});
								var ant1 = JSON.stringify(i);
								//alert(ant1);

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
													+ "&playRound="
													+ $("#playRound").val()
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

<form class="form-signin" name=savegame id="savegame" action=""
		method="POST" style="display:none">	
			<h2>輸贏</h2>
			
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='money' name='money'  type="text" value="${memberP.chipMemberid}"
						placeholder="取輪盤結果:" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='balance' name='balance' type="text" value="${memberP.chipBalanced}"
						placeholder="送進後台的結果" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='gameType' name="gameType" type="text" value="${memberP.chipBalanced}"
						placeholder="遊戲種類" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='memberId' name="memberId" type="text" value="${sessionScope.member.memberId}"
						placeholder="玩家" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='round1' name="round1" type="text" value=""
						placeholder="局數" class="form-control">
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



	<form class="form-signin" name="form2" id="form2" action=""
			method="POST">	
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
							
							placeholder="chipRecordWin" class="form-control" value="" >

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
							id='win' name="win" type="text" value="${memberP.chipRecordChip}"
							placeholder="win:" class="form-control" > 
							
							<input
							id='playRound' name="playRound" type="text"
							 placeholder="round:" class="form-control"  >
							 
					
						</form>	








































<a href="/main/games">
<h1 class="bounce" id="bounce" style="text-align:center">結束遊戲回選單</h1>
</a>
		
		
		
		
		
		
	
		
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>     
</body>
</html>
