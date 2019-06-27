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
			<div class="row">
				<div class="MultiCarousel" data-items="1,3,5,6" data-slide="3"
					id="MultiCarousel" data-interval="100">
					<div class="MultiCarousel-inner">
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>
						<div class="item">
							<div class="pad15">
								<p class="lead">Multi Item Carousel</p>
								<p>₹ 1</p>
								<p>₹ 6000</p>
								<p>50% off</p>
							</div>
						</div>

					</div>
					<button class="btn btn-primary leftLst"><</button>
					<button class="btn btn-primary rightLst">></button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<br /> <br /> <br />
					<hr />
					<p>Settings</p>
					<p>Change data items for xs,sm,md and lg display items
						respectively. Ex:data-items="1,3,5,6"</p>
					<p>Change data slide for slides per click Ex:data-slide="1"</p>
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
<script src="/resources/js/shopindex.js"></script>
<style>
.MultiCarousel {
	float: left;
	overflow: hidden;
	padding: 15px;
	width: 100%;
	position: relative;
}

.MultiCarousel .MultiCarousel-inner {
	transition: 1s ease all;
	float: left;
}

.MultiCarousel .MultiCarousel-inner .item {
	float: left;
}

.MultiCarousel .MultiCarousel-inner .item>div {
	text-align: center;
	padding: 10px;
	margin: 10px;
	background: #f1f1f1;
	color: #666;
}

.MultiCarousel .leftLst, .MultiCarousel .rightLst {
	position: absolute;
	border-radius: 50%;
	top: calc(50% - 20px);
}

.MultiCarousel .leftLst {
	left: 0;
}

.MultiCarousel .rightLst {
	right: 0;
}

.MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over {
	pointer-events: none;
	background: #ccc;
}
</style>
</html>
