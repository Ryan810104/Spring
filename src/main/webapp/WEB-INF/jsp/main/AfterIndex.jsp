<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link rel="stylesheet" href="/resources/css/CustomAfterIndex.css">
</head>
<body>
	<!--NavBar-->

	<!--     <div class="wrapper" > -->

	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>

	<!--NAV BAR end-->
	<!-- Page Content  -->
	<article class="content moe">
		<div id="content">
			<!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="bd-example">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleCaptions" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
						<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/resources/img/01.jpg" class="d-block w-100"
								style="height: 28rem" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Nulla vitae elit libero, a pharetra augue mollis
									interdum.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/resources/img/02.jpg" class="d-block w-100"
								style="height: 28rem" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/resources/img/03.jpg" class="d-block w-100"
								style="height: 28rem" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Praesent commodo cursus magna, vel scelerisque nisl
									consectetur.</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleCaptions"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="container">
				<div class="my-3 p-3 bg-white rounded shadow-sm">
					<h6 class="border-bottom border-gray pb-2 mb-0">News</h6>
					<div class="media text-muted pt-3">
						<p
							class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">

							<strong class="d-block text-danger">公告</strong> 系統將於 <strong
								class="text-danger">2019-05-30 09:00 ~ 12:00</strong>進行維護，如有不便請見諒。

						</p>
					</div>
					<div class="media text-muted pt-3">
						<p
							class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
							<strong class="d-block text-success">活動</strong> 端午活動上線啦！獎品總額高達 <strong>1,000,000
								元</strong>，詳情請入內參閱。
						</p>
					</div>
					<div class="media text-muted pt-3">
						<p
							class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
							<strong class="d-block text-success">活動</strong>
							第101期百家樂超級彩金已開獎，中獎名單請入內查看。
						</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="alert alert-dark rounded-pill bg-secondary text-center"
					role="alert">
					<h4
						class="alert-heading font-weight-bolder text-white d-inline mr-5">
						百 家 樂 超 級 彩 金</h4>
					<h2 class=" text-warning font-weight-bold d-inline align-center">9,156,552.0</h2>
					<button type="button"
						class="btn btn-outline-success d-inline ml-5 ">中獎名單</button>

				</div>
			</div>

			
			<div class="container">
				<div class="col-sm-10" style="margin: 0 auto;">
					<div class="panel panel-white post panel-shadow">
						<div class="post-heading">
							<div class="pull-left image">
								<img
									src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
									class="img-circle avatar" alt="user profile image">
							</div>
							<div class="pull-left meta">
								<div>
									<textarea cols="95" rows="3">輸入你想要寫的內容...</textarea>

								</div>
								<!-- 								<h6 class="text-muted time">1 minute ago</h6> -->

							</div>
							<div class="pull-left meta" style="all: inherit;">
								<input type="button" class="btn btn-success btn-lg" value="送出">
							</div>
						</div>
						<div class="post-description"></div>
					</div>
				</div>
			</div>
			<br>
			<div class="container">
				<div class="col-sm-10" style="margin: 0 auto;">
					<div class="panel panel-white post panel-shadow">
						<div class="post-heading">
							<div class="pull-left image">
								<img
									src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
									class="img-circle avatar" alt="user profile image">
							</div>
							<div class="pull-left meta">
								<div class="title h2">
									<a href="#"><b>Ryan Haywood</b></a> made a post.
								</div>
								<!-- 								<h6 class="text-muted time">1 minute ago</h6> -->
							</div>
						</div>
						<div class="post-description">
							<p>Bootdey is a gallery of free snippets resources templates
								and utilities for bootstrap css hmtl js framework. Codes for
								developers and web designers</p>
							<div class="stats">
								<a href="#" class="btn btn-default stat-item"> <i
									class="fa fa-thumbs-up icon"></i>2
								</a>
							</div>
						</div>
						<div class="post-footer">
							<div class="input-group">
								<input class="form-control" placeholder="Add a comment"
									type="text"> <span class="input-group-addon"> <a
									href="#"><i class="fa fa-edit"></i></a>
								</span>
							</div>
							<ul class="comments-list">
								<li class="comment"><a class="pull-left" href="#"> <img
										class="avatar"
										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
										alt="avatar">
								</a>
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>

										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<br>
						<div class="container">
				<div class="col-sm-10" style="margin: 0 auto;">
					<div class="panel panel-white post panel-shadow">
						<div class="post-heading">
							<div class="pull-left image">
								<img
									src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
									class="img-circle avatar" alt="user profile image">
							</div>
							<div class="pull-left meta">
								<div class="title h2">
									<a href="#"><b>Ryan Haywood</b></a> made a post.
								</div>
								<!-- 								<h6 class="text-muted time">1 minute ago</h6> -->
							</div>
						</div>
						<div class="post-description">
							<p>Bootdey is a gallery of free snippets resources templates
								and utilities for bootstrap css hmtl js framework. Codes for
								developers and web designers</p>
							<div class="stats">
								<a href="#" class="btn btn-default stat-item"> <i
									class="fa fa-thumbs-up icon"></i>9995
								</a>
							</div>
						</div>
						<div class="post-footer">
							<div class="input-group">
								<input class="form-control" placeholder="Add a comment"
									type="text"> <span class="input-group-addon"> <a
									href="#"><i class="fa fa-edit"></i></a>
								</span>
							</div>
							<ul class="comments-list">
								<li class="comment"><a class="pull-left" href="#"> <img
										class="avatar"
										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
										alt="avatar">
								</a>
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>

										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div></li>
							</ul>
														<ul class="comments-list">
								<li class="comment"><a class="pull-left" href="#"> <img
										class="avatar"
										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
										alt="avatar">
								</a>
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>

										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div></li>
							</ul>
														<ul class="comments-list">
								<li class="comment"><a class="pull-left" href="#"> <img
										class="avatar"
										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
										alt="avatar">
								</a>
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>

										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>




</body>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Noto Sans TC', sans-serif;
}
</style>
</html>