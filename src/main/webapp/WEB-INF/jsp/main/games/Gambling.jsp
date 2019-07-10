<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">


		<h1 class="ml4" style="text-align: center">
			<span class="letters letters-1">2019 NBA總冠軍</span> <span
				class="letters letters-2">勇士VS暴龍!! 誰將奪冠</span> <span
				class="letters letters-3">請下注!!</span>
		</h1>
		
<hr>

<div>
<form class="form-signin" name=savegame id="savegame" action=""
		method="POST"  style="margin-top:150px">	
			<h2>下注區</h2>
			
			<div class="form-group row">
				<div class="col-sm-12">
					<input id='whichTeam' name='money'  type="text" value="${memberP.chipMemberid}"
						placeholder="選擇你要的球隊:" class="form-control">
				</div>
			</div>
			

</form>
</div>


		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>


		<script>
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
