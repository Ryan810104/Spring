<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>對賭房間</title>
</head>
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
	
}</style>



</head>
<body>
<!-- 房名 -->
<div  align="center" style="color:white; width:100%;position:absolute;z-index:1;">
${player1.gameRoomName} 
</div>

<script type="text/javascript">
var roomnum=${player1.roomNum};
</script>



<!-- 賭金資訊 -->
<div  align="center"  id="money" style="width:100%;color:white;margin-top:100px;position:absolute;z-index:1;">

</div>




<!-- 勇士的資料 -->
<div   style="margin-top:250px;position:absolute;z-index:1;">
<img src="/resources/img/Warriors_logo1.png"  style="width:180%;"  >
<h2  id="player1" name="player1"style="color:white"></h2>
</div>


<!-- 暴龍的資料 -->
<div   style="margin-top:250px;margin-left:1200px;position:absolute;z-index:1;">
<img src="/resources/img/tor.png"   style="width:80%">
<h2 id="player2" name="player2" style="color:white"></h2>
</div>




<div  align="center" style="margin-top:650px;color:white; width:100%;position:absolute;z-index:1;">
<input type="button" value="查看賭注結果"/>
</div>





<script>

	
	class Particle {
		constructor() {
			// changing these parameters can give very different results
			this.damp = 0.00002; // remember a very small amount of the last direction
			this.accel = 100; // move very quickly
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

	
	
	
	
	
	
	

	
	

//房間名稱動畫
// Wrap every letter in a span

//Wrap every letter in a span


</script>



<script>
	

      
		setInterval(function(){
			$.ajax({
				url:"/save/GameBling3?num="+roomnum,
				type:"POST",
				success : function(data) {
					$("#money").html("目前總賭金:"+data.gameMoney);
				var a="暴龍";	
				if(data.player1Result==a){
					$("#player2").html("玩家:"+data.memberId);
					$("#player1").html("玩家:"+data.gameRoomMember);
				}else{
					$("#player1").html("玩家:"+data.memberId);
					$("#player2").html("玩家:"+data.gameRoomMember);
				}
			
				

				}
				
			});
		},4);
			

		function showGame(data){
			
			alert(data);
	
		}
	
	</script>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>
<script>

</script>






</html>
