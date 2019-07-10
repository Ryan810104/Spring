<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link href="/resources/css/gameindex.css" rel="stylesheet">

<style>
article {
　background-image:url( '/resources/img/game10.png' );
　background-repeat:no-repeat;
　background-color: 背景顏色;
}



</style>
</head>
<body >
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->


<h1 class="ml15" style="text-align:center ;color:white" >
  <span class="word">遊戲</span>
  <span class="word">選單</span>
</h1>

<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>





		<figure class="snip1584">
			<img
				style="height:300px;width:300px;"
				src="/resources/img/game10.png"
				alt="sample87" />
			<figcaption>
				<h3>踩地雷</h3>
				<h5>進入遊戲</h5>
			</figcaption>
			<a href="/main/minesweeper"></a>
		</figure>
		<figure class="snip1584 ">
			<img
			style="height:300px;width:300px"
				src="/resources/img/game3.png"
				alt="sample119" />
			<figcaption>
				<h3>俄儸斯輪盤</h3>
				<h5>進入遊戲</h5>
			</figcaption>
			<a href="/main/Circlegame"></a>
		</figure>
		<figure class="snip1584">
			<img
			style="height:300px;"
				src="/resources/img/game13.png"
				alt="sample120" />
			<figcaption>
				<h3>球賽賭盤</h3>
				<h5>進入遊戲</h5>
			</figcaption>
			<a href="/main/Gamebling"></a>
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
