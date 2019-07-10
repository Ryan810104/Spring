<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<!-- <link rel="stylesheet" type="text/css" href="/resources/chatroomtest/css/normalize.css" /> -->


</head>
<link rel="stylesheet" type="text/css" href="/resources/chatroomtest/css/default.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" type="text/css" href="/resources/chatroomtest/css/styles.css">
<body>
<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
         <article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="demo" style="display:none">
		  <svg class="sidebar" viewBox="0 0 300 500">
			<path class="s-path" fill="#fff" d="M0,0 50,0 a0,250 0 1,1 0,500 L0,500" />
		  </svg>
		  <div class="static">
			<div class="static__text">Pull white sidebar to the right</div>
		  </div>
		  <div class="sidebar-content active">
			<div class="contact">
			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" />
			  <span class="contact__name">Ethan Hawke</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/2.png" alt="" class="contact__photo" />
			  <span class="contact__name">Natalie Portman</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/3.png" alt="" class="contact__photo" />
			  <span class="contact__name">Kevin Spacey</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/4.png" alt="" class="contact__photo" />
			  <span class="contact__name">Rosamund Pike</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/5.png" alt="" class="contact__photo" />
			  <span class="contact__name">Robert Redford</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/6.png" alt="" class="contact__photo" />
			  <span class="contact__name">Scarlett Johansson</span>
			  <span class="contact__status online"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/7.png" alt="" class="contact__photo" />
			  <span class="contact__name">Tom Cruise</span>
			  <span class="contact__status"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/8.png" alt="" class="contact__photo" />
			  <span class="contact__name">Eva Green</span>
			  <span class="contact__status"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/9.png" alt="" class="contact__photo" />
			  <span class="contact__name">Paul Newman</span>
			  <span class="contact__status"></span>
			</div>
			<div class="contact">
			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" />
			  <span class="contact__name">Thomas Break</span>
			  <span class="contact__status"></span>
			</div>
			<div class="search">
			  <img src="/resources/chatroomtest/img/t8TeL1S.png" alt="" class="search__img" />
			  <input type="text" class="search__input" placeholder="Search" />
			</div>
		  </div>
		  <div class="chat">
			<span class="chat__back"></span>
			<span class="chat__status">status</span>
			<div class="chat__person">
			  <span class="chat__online active"></span>
			  <span class="chat__name">Huehue Huehue</span>
			</div>
			<div class="chat__messages">
			  <div class="chat__msgRow">
				<div class="chat__message mine">Such SVG, much Javascript, very CSS!</div>
			  </div>
			  <div class="chat__msgRow">
				<div class="chat__message notMine">Wow!</div>
			  </div>
			  <div class="chat__msgRow">
				<div class="chat__message notMine">Very elastic! Such easings!</div>
			  </div>
			  <div class="chat__msgRow">
				<div class="chat__message mine">
				  
				</div>
			  </div>
			</div>
			<input type="text" class="chat__input" placeholder="Your message" />
		  </div>
		</div>
		
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="search_friend" id="search_friend_icon" style="min-height: 44.4px;">
			<span class="chat_on_icon" style="line-height: 1.8rem;"> <!--     <i class="fa fa-comments fa-xs" aria-hidden="true"></i>	 -->
			<i class="fas fa-user-friends fa-xs" aria-hidden="true"></i>
			</span>
		</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
         </article>
<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
<script type="text/javascript" src='/resources/chatroomtest/js/stopExecutionOnTimeout.js?t=1'></script>
<script type="text/javascript" src='/resources/chatroomtest/js/jquery.min.js'></script>
<script type="text/javascript" src="/resources/chatroomtest/js/main.js"></script>
<script>

$("#search_friend_icon").click(function(){
	$(".demo").slideToggle();
});

</script>
   
</body>
</html>
