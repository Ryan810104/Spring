<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link href="/resources/css/gameindex.css" rel="stylesheet">

<style>
canvas {
	position:absolute;
	top:100;
	left:100;
	bottom:100;
}

</style>
</head>
<body >
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	
	<article class="content moe"  >
		<!-- WRITE YOUR CONTEXT HERE -->
<canvas id=c></canvas>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.5.1/dat.gui.min.js'></script>









<h1 class="ml15" style="text-align:center ;color:white" >
  <span class="word">遊戲</span>
  <span class="word">選單</span>
</h1>

<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>





		<figure class="snip1584"  style="float:left">
			<img
				style="height:300px;width:300px;"
				src="/resources/img/game10.png"
				alt="sample87" />
			<figcaption>
				<h3>踩地雷</h3>
				<h5>進入遊戲</h5>
				<hr>
				<h3>踩地雷是一款單人的電腦遊戲。遊戲目標是找出所有沒有地雷的方格，完成遊戲</h3>
				<h3>要是按了有地雷的方格，遊戲失敗。遊戲以完成時間來評高低。</h3>
			</figcaption>
			<a href="/main/minesweeper"></a>
		</figure>
		<figure class="snip1584 "   style="float:left">
			<img
			style="height:300px;width:300px"
				src="/resources/img/game3.png"
				alt="sample119" />
			<figcaption>
				<h3>俄儸斯輪盤</h3>
				<h5>進入遊戲</h5>
				<hr>
				<h3>覺得自己今天運不錯嗎?進來玩個幾把為自己賺點零用錢</h3>
			</figcaption>
			<a href="/main/Circlegame"></a>
		</figure>
		<figure class="snip1584"   style="float:left">
			<img
			style="height:300px;"
				src="/resources/img/game13.png"
				alt="sample120" />
			<figcaption>
				<h3>球賽賭盤</h3>
				<h5>進入遊戲</h5>
				<hr>
				<h3>想賭一把大的來翻身? 膽子夠大的就進來看看吧</h3>
			</figcaption>
			<a href="/main/Gamebling"></a>
		</figure>
		
		<figure class="snip1584">
			<img
			style="height:300px;"
				src="/resources/img/fruit.jpg"
				alt="sample120" />
			<figcaption>
				<h3>切!切!切!</h3>
				<h5>進入遊戲</h5>
				<hr>
				<h3>來玩玩好玩的小遊戲</h3>
			</figcaption>
			<a href="/main/fruit"></a>
		</figure>
		
		
		
	



		<script>
			var snippet = [].slice.call(document.querySelectorAll('.hover'));
			if (snippet.length) {
				snippet.forEach(function(snippet) {
					snippet.addEventListener('mouseout', function(event) {
						if (event.target.parentNode.tagName === 'figure') {
							event.target.parentNode.classList.remove('hover')
						} else {
							event.target.parentNode.classList.remove('hover')
						}
					});
				});
			}
			
			
			anime.timeline({loop: true})
			  .add({
			    targets: '.ml15 .word',
			    scale: [14,1],
			    opacity: [0,1],
			    easing: "easeOutCirc",
			    duration: 800,
			    delay: function(el, i) {
			      return 800 * i;
			    }
			  }).add({
			    targets: '.ml15',
			    opacity: 0,
			    duration: 1000,
			    easing: "easeOutExpo",
			    delay: 1000
			  });
			
			
			
			
			//背景動畫
			var w = c.width = window.innerWidth,
		h = c.height = window.innerHeight,
		ctx = c.getContext('2d'),

		opts = {

			rays: 30,
			maxRadius: Math.sqrt( w*w/4 + h*h/4 ),
			circleRadiusIncrementAcceleration: 2,
			radiantSpan: .4,
			rayAngularVelSpan: .005,
			rayAngularVelLineWidthMultiplier: 60,
			rayAngularAccWaveInputBaseIncrementer: .03,
			rayAngularAccWaveInputAddedIncrementer: .02,
			rayAngularAccWaveMultiplier: .0003,
			baseWaveInputIncrementer: .01,
			addedWaveInputIncrementer: .01,
			circleNumWaveIncrementerMultiplier: .1,
			
			cx: w / 2,
			cy: h / 2,
			tickHueMultiplier: 1,
			shadowBlur: 0,
			repaintAlpha: .2,
			apply: init
		},
		
		rays = [],
		tick = 0,
		tickHueMultiplied,
		gui = new dat.GUI;

function init(){
	
	rays.length = 0;
	for( var i = 0; i < opts.rays; ++i )
		rays.push( new Ray );
	
	if( tick === 0 ){
		
		for( opt in opts ){
			
			if( isNaN( opts[ opt ] ) )
				gui.add( opts, opt );
			else
				gui.add( opts, opt, 0, opts[ opt ] * 3 )
		}
		gui.close();
		
		loop();
	}
}

function loop(){
	
	window.requestAnimationFrame( loop );
	
  ++tick;
	
	ctx.globalCompositeOperation = 'source-over';
	ctx.shadowBlur = 0;
	ctx.fillStyle = 'rgba(0,0,0,alp)'.replace( 'alp', opts.repaintAlpha );
	ctx.fillRect( 0, 0, w, h );
	ctx.shadowBlur = opts.shadowBlur;
	ctx.globalCompositeOperation = 'lighter';
	
	tickHueMultiplied = opts.tickHueMultiplier * tick;
	
	rays.map( function( ray ){ ray.step(); } );
}

function Ray(){
	
	this.circles = [ new Circle( 0 ) ];
	this.rot = Math.random() * Math.PI * 2;
	this.angularVel = Math.random() * opts.rayAngularVelSpan * ( Math.random() < .5 ? 1 : -1 );
	this.angularAccWaveInput = Math.random() * Math.PI * 2;
	this.angularAccWaveInputIncrementer = opts.rayAngularAccWaveInputBaseIncrementer + opts.rayAngularAccWaveInputAddedIncrementer * Math.random();
	
	var security = 100,
			count = 0;
	
	while( --security > 0 && this.circles[ count ].radius < opts.maxRadius )
		this.circles.push( new Circle( ++count ) );
}
Ray.prototype.step = function(){
	
	// this is just messy, but if you take your time to read it properly you'll understand it pretty easily
	this.rot += 
		this.angularVel += Math.sin( 
			this.angularAccWaveInput += 
				this.angularAccWaveInputIncrementer ) * opts.rayAngularAccWaveMultiplier;
	
	var rot = this.rot,
			x = opts.cx,
			y = opts.cy;
	
	ctx.lineWidth = Math.min( .00001 / Math.abs( this.angularVel ), 10 / opts.rayAngularVelLineWidthMultiplier ) * opts.rayAngularVelLineWidthMultiplier;

	ctx.beginPath();
	ctx.moveTo( x, y );
	
	for( var i = 0; i < this.circles.length; ++i ){
		
		var circle = this.circles[ i ];
		
		circle.step();
		
		rot += circle.radiant;
		
		var x2 = opts.cx + Math.sin( rot ) * circle.radius,
				y2 = opts.cy + Math.cos( rot ) * circle.radius,
				
				mx = ( x + x2 ) / 2,
				my = ( y + y2 ) / 2;
		
		ctx.quadraticCurveTo( x, y, mx, my );
		
		x = x2;
		y = y2;
	}
	
	ctx.strokeStyle = ctx.shadowColor = 'hsl(hue,80%,50%)'.replace( 'hue', ( ( ( rot + this.rot ) / 2 ) % ( Math.PI * 2 ) ) / Math.PI * 30 + tickHueMultiplied );
	
	ctx.stroke();
}

function Circle( n ){
	
	this.radius = opts.circleRadiusIncrementAcceleration * Math.pow( n, 2 );
	this.waveInputIncrementer = ( opts.baseWaveInputIncrementer + opts.addedWaveInputIncrementer * Math.random() ) * ( Math.random() < .5 ? 1 : -1 ) * opts.circleNumWaveIncrementerMultiplier * n;
	this.waveInput = Math.random() * Math.PI * 2;
	this.radiant = Math.random() * opts.radiantSpan * ( Math.random() < .5 ? 1 : -1 );
}
Circle.prototype.step = function(){
	
	this.waveInput += this.waveInputIncrementer;
	this.radiant = Math.sin( this.waveInput ) * opts.radiantSpan;
}
init();

window.addEventListener( 'resize', function(){
	
	w = c.width = window.innerWidth;
	h = c.height = window.innerHeight;
	
	opts.maxRadius = Math.sqrt( w*w/4 + h*h/4 );
	opts.cx = w / 2;
	opts.cy = h / 2;
	
	init();
});
c.addEventListener( 'click', function(e){
	
	opts.cx = e.clientX;
	opts.cy = e.clientY;
	
})
		</script>












		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		
	</article>
	

	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
<style>

.card {
	border-radius: 2rem;
}

.btn {
	background: black;
	text-decoration: none;
	text-transform: uppercase;
	border: 0;
	cursor: pointer;
	margin-bottom: 10px;
	letter-spacing: 1px;
}
</style>


</html>
