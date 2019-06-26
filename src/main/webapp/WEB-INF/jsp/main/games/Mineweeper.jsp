<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>
<style type="text/css">
.wrapper1 body {
	font-family: AppleColorEmoji;
	font-size: 15px;
	text-align: center;
	padding: 20px 0;
}

span, input, a, div, button {
	box-sizing: border-box;
}

.wrapper1 .btn, .input {
	padding: 12px 15px;
	font-size: 0.65em;
	border-radius: 3px;
	font-family: 'Exo 2', sans-serif;
	color: #666;
	font-weight: bold;
	display: inline-block;
}

.wrapper1 .btn {
	background: #f7f7f7;
	text-decoration: none;
	text-transform: uppercase;
	border: 0;
	cursor: pointer;
	margin-bottom: 10px;
	letter-spacing: 1px;
}

.flex {
	display: flex;
}

.flex-cell {
	flex: 1 1 auto;
}

.action-btn {
	margin-bottom: 10px;
	background-color: transparent;
	width: 100%;
	display: block;
	font-size: 1.2em;
	padding: 10px;
	border: 1px solid #eee;
	text-decoration: none;
	border-radius: 5px;
}

.action-btn:hover {
	background-color: #f4f4f4;
}

.action-btn .emoji {
	width: 20px;
	height: 20px;
}

input[type=radio] {
	margin: 0 5px 0 0;
}

input[type=number] {
	padding-right: 5px;
}

.input {
	border: 1px solid #e0e0e0;
}

.input-select {
	width: 100%;
	height: 40px;
	padding: 12px;
	font-size: 1em;
	margin-bottom: 10px;
	background: transparent;
}

.divider {
	align-self: center;
	flex: 0;
	padding: 0 10px;
	color: #999;
	font-size: 0.65em;
}

.prepend-input {
	padding: 7px 8px 6px 10px;
	margin: 5px 0;
	border-right: 1px solid #e0e0e0;
	line-height: 1;
	position: absolute;
}

.prepend-input+input {
	width: 100%;
	padding-left: 45px;
	margin-bottom: 10px;
}

code {
	display: none;
	margin-top: 10px;
	text-transform: none;
	background-color: #fff;
	padding: 2px 4px;
	max-width: 400px;
	text-align: left;
}

.cell .emoji {
	width: 100%;
}

.cell {
	/* disable hold to save image in iOS */
	-webkit-touch-callout: none;
	width: 25px;
	height: 25px;
	font-size: 20px;
	background-color: transparent;
	border: 0;
	display: inline-block;
	position: relative;
	padding: 2px 3px;
	vertical-align: middle;
	cursor: pointer;
}

.unmasked {
	cursor: default;
}

#map {
	white-space: nowrap;
}

.wrapper1 {
	padding: 10px;
	position: relative;
	-webkit-user-select: none;
	user-select: none;
	border-radius: 10px;
	margin-top: 10px;
	border: 5px solid #f4f4f4;
	display: inline-block;
	min-width: 250px;
}

.won .default-emoji, .lost .default-emoji {
	display: none;
}

.won #map, .lost #map {
	pointer-events: none;
}

.lost {
	box-shadow: 0 0 1px #f00;
}

.won {
	box-shadow: 0 0 1px #1a1;
}

.bar {
	margin: 10px -10px -10px;
	background-color: #f4f4f4;
}

.stat {
	width: 33.3%;
	font-size: 0.85em;
	padding: 8px 10px 5px;
	text-align: center;
}

.small-text {
	display: block;
	color: #999;
	margin-top: 5px;
	font-size: 0.7em;
	letter-spacing: 1px;
}

.settings {
	position: absolute;
	width: 40px;
	height: 40px;
	top: -20px;
	right: -20px;
	background-color: #f4f4f4;
	text-align: center;
	border-radius: 25px;
	padding: 2px 8px;
	border: 5px solid #fff;
	cursor: pointer;
	z-index: 1;
}

.settings .emoji {
	width: 15px;
	margin: 6px 0;
}

.settings-popup {
	margin-right: 10px;
	display: none;
	position: absolute;
}

.settings-popup button {
	width: 100%;
	margin: 0;
}

.settings-popup .flex {
	margin-bottom: 10px;
}

.show {
	display: block;
}

.settings-popup.show ~ * {
	visibility: hidden;
}

.stat, .link-to-github {
	font-family: "Exo 2", sans-serif;
}

.link-to-github {
	margin: 40px auto;
	display: block;
	font-size: 12px;
	color: #08c;
	text-decoration: none;
}

.feedback {
	font-size: 1px;
	width: 1px;
	height: 1;
	overflow: hidden;
	position: absolute;
	left: -1px;
	top: -1px;
}
</style>
<body>
		<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- Sidebar -->

		<!-- start context -->
		
		<div class="container">

			<!-- Write your data here -->
			 <div class="bd-example">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/resources/img/01.jpg" class="d-block w-100" style="height:24rem" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="/resources/img/02.jpg" class="d-block w-100" style="height:24rem" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="/resources/img/03.jpg" class="d-block w-100" style="height:24rem" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
			<div class="wrapper1">
				<button type="button" class="settings js-settings"
					aria-haspopup="true" aria-expanded="false" aria-label="Settings"></button>
				<div class="js-settings-popup settings-popup">
					<div class="flex">
						<label class="btn flex-cell" aria-label="Use Twitter Emoji"><input
							type="radio" name="emoji" id="twemoji" checked> Twemoji</label> <label
							class="btn flex-cell" aria-label="Use Native Emoji"><input
							type="radio" name="emoji" id="emoji"> Native emoji</label>
					</div>
					<div class="flex">
						<input id="cols" class="input flex-cell" type="number" value="10"
							min="1" max="500" aria-label="Columns">
						<div class="flex-cell divider">&times;</div>
						<input id="rows" class="input flex-cell" type="number" value="10"
							min="1" max="500" aria-label="Rows"><br>
					</div>
					<div class="prepend-input">💣</div>
					<input id="bombs" class="input" type="number" value="10" min="1"
						max="2500" aria-label="Number of bombs"> <select
						id="emojiset" class="input input-select"
						aria-label="Change emoji set">
						<option value="🐣 💣 🚧 ◻️">🐣 💣 🚧</option>
						<option value="🍰 👾 📌 ◻️">🍰 👾 📌</option>
						<option value="🌷 ⚡️ 🐞 ◻️">🌷 ⚡️ 🐞</option>
						<option value="⭕️ ❌ ❗️ ✖️️">⭕️ ❌ ❗️ ✖️</option>
						<option value="☀ ⚡ ☔ ☁️">☀ ⚡ ☔ ☁️</option>
					</select>
					<button class="js-popup-new-game btn" type="button">Save
						and restart game</button>
				</div>
				<button type="button" class="action-btn js-new-game"
					aria-label="New game">
					<span class="default-emoji"></span> <span id="result"
						class="result-emoji"></span>
				</button>
				<div id="map" role="grid" aria-label="Mine field"></div>
				<div class="bar flex">
					<div class="stat flex-cell">
						<div id="bombs-left">0</div>
						<span class="small-text">BOMBS</span>
					</div>
					<div class="stat flex-cell">
						<div id="moves"></div>
						<span class="small-text">MOVES</span>
					</div>
					<div class="stat flex-cell">
						<div id="timer"></div>
						<span class="small-text">TIME</span>
					</div>
				</div>
			</div>
			<a href="https://github.com/muan/emoji-minesweeper"
				class="link-to-github">[Code]</a>
			<div aria-live="assertive" class="feedback"></div>
			<!-- Write your data here -->
			<!-- Write your data here -->
			<!-- insert footer in the end of context -->

			<!-- Your data ends here -->
			<!-- End of context -->
		</div>
		<!-- End of wrapper -->
	</div>
				<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
				<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include> 
</body>
<script src="/resources/js/Mine1.js"></script>
<script src="/resources/js/Mine2.js"></script>
<script>
	var emojiset = document.getElementById('emojiset').value.split(' ')
	var cols = document.getElementById('cols')
	var rows = document.getElementById('rows')
	var bombs = document.getElementById('bombs')
	game = new Game(cols.value, rows.value, bombs.value, emojiset, document
			.getElementById('twemoji').checked)
	document.querySelector('.js-new-game').addEventListener('click', restart)
	document.querySelector('.js-popup-new-game').addEventListener('click',
			restart)
	document
			.querySelector('.js-settings')
			.addEventListener(
					'click',
					function() {
						var list = document.querySelector('.js-settings-popup').classList
						list.contains('show') ? list.remove('show') : list
								.add('show')
						this.setAttribute('aria-expanded', list
								.contains('show'))
					})
	function restart() {
		clearInterval(game.timer)
		emojiset = document.getElementById('emojiset').value.split(' ')
		game = new Game(cols.value, rows.value, bombs.value, emojiset, document
				.getElementById('twemoji').checked)
		document.querySelector('.js-settings-popup').classList.remove('show')
		return false
	}
</script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga')
	ga('create', 'UA-21332781-19', 'auto')
	ga('send', 'pageview')
</script>
</html>