<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container">
			<div class="card-deck">
				<div class="card" style="height: 35rem">
					<img src="/resources/img/game1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h3 class="card-title">Emoji踩地雷</h3>
						<p class="card-text">踩地雷，是一款單人的電腦遊戲。遊戲目標是找出所有沒有地雷的方格，完成遊戲；要是按了有地雷的方格，遊戲失敗。遊戲以完成時間來評高低。</p>
						<hr>
						<div style="text-align: center; line-height: 4rem;">
							<a href="/main/minesweeper" class="btn btn-info ">進入遊戲</a>
						</div>
					</div>
				</div>
				<div class="card" style="height: 42rem">
					<img src="/resources/img/game5.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">俄羅斯方塊</h5>
						<p class="card-text">
							《俄羅斯方塊》具有數學性、動態性與知名度，也經常被用來作為遊戲程式設計的練習題材。按照金氏世界紀錄，俄羅斯方塊現時一共有9個世界紀錄，例如手提電話下載次數最多的遊戲等。</p>
						<hr>
						<div style="text-align: center; line-height: 4rem;">
							<a href="/main/Circlegame" class="btn btn-info ">進入遊戲</a>
						</div>
					</div>
				</div>
				<div class="card">
					<img src="/resources/img/game4.jpg" class="card-img-top"
						style="height: 40rem" alt="...">
					<div class="card-body">
						<h5 class="card-title">21點</h5>
						<p class="card-text">使用撲克牌玩的賭博遊戲。亦是賭場中莊家優勢在概率中最低的一種賭博遊戲。</p>
						<hr>
						<div style="text-align: center; line-height: 4rem;">
							<a href="#" class="btn btn-info ">進入遊戲</a>
						</div>
					</div>
				</div>
			</div>
		</div>
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
