<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<aside class="sidebar ex">
	<header class="sidebar-header ex">
		<figure class="sidebar-avatar ex">

			<a href="/main/setting/${sessionScope.member.memberNum}" id="result" > 
			<input type="text" value="${sessionScope.member.memberId}"
				id="memberId" style="display: none">
<!-- 			<img class="sidebar-avatar-in" -->
<%-- 				src="<c:url value='/admin/memberBeans/getServerPicture/${sessionScope.member.memberNum}' />" /> --%>
			</a>
			<img class="sidebar-avatar-logo ex" id="membervipimg"
				src="" />
		</figure>

		<div class="sidebar-title ex username-line-height">
			<a href="/main/setting">${sessionScope.member.memberLastName}</a>
		</div>
		<div class="sidebar-title ex" id="QQ"></div>

	</header>

	<nav class="sidebar-nav" role="navigation">
		<ul>
			<li class="sidebar-nav-item ex  active"><i
				class="sidebar-nav-item-icon fa fa-th-large"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/index">回到首頁</a></li>
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fa fa-newspaper"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/news">活動訊息</a></li>
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fa fa-gamepad"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/games">遊戲列表</a></li>
			<!-- 			<li class="sidebar-nav-item moe"><i -->
			<!-- 				class="sidebar-nav-item-icon fa fa-envira"></i> <a -->
			<!-- 				class="sidebar-nav-item-zelda moe text-line-height" href="/main/deposit">儲值金幣</a></li> -->
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fa fa-cart-arrow-down"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/admin/memberBeans/index2">購物商城</a></li>
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fa fa-area-chart"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/admin/memberBeans/list">遊戲排行</a></li>
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fas fa-vial"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/testing">測試</a></li>
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fas fa-envelope-open-text"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/complain">投訴箱</a></li>				
			<li class="sidebar-nav-item ex"><i
				class="sidebar-nav-item-icon fa fa-sign-out"></i> <a
				class="sidebar-nav-item-zelda ex text-line-height"
				href="/main/logout">登出</a></li>
		</ul>


		<footer class="sidebar-footer">
			<span class="sidebar-footer-icon ex">···</span> <span
				class="sidebar-footer-label ex">· · ·</span>
				<a href="/admin/index"><input type="button" id="admitbutton" class="btn btn-danger"  value="管理者介面" style="visibility:hidden"/></a>
		</footer>
</aside>
<main class="main ex"> <header
	class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar"
	style="padding: 0px">
	<span class="toggle"> <!-- fa-angle-double-left fa-bars fa-th-list -->
		<i class="fa fa-angle-double-left"></i>
	</span>
	<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex"></ul>

	<div class="d-flex justify-content-center h-100">
		<div class="searchbar">
			<input class="search_input" type="text" name="findmemberid" id="findmemberlist" placeholder="搜尋會員..."> <a class="search_icon">
			<i class="fas fa-search" style="color: white;"></i></a>
			
			
		  <ul class="results" id="membersearch01" style="display:none;" >
<!-- 			 <li> -->
<!-- 			 <div class="col-md-12"> -->
<!-- 					<div class="well well-sm"> -->
<!-- 						<div class="media"> -->
<!-- 							<a class="thumbnail pull-left" href="#"> <img -->
<!-- 								class="media-object" style="width: 70%;margin-top: 6px;"  -->
<!-- 								src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"> -->
<!-- 							</a> -->
<!-- 							<div class="media-body"> -->
<!-- 								<h4 class="media-heading">John Doe</h4> -->
<!-- 								<p style="margin-top: 0px;"> -->
<!-- 									<a href="#" class="btn btn-success btn-sm"><i class="fas fa-home"></i></a> -->
<!-- 									<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-user-friends"></i></a> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<hr style="    margin: 0px 20px 0px 20px;"> -->
<!-- 				</div> -->
<!-- 			</li> -->
<!-- 			 <li>			 <div class="col-md-12"> -->
<!-- 					<div class="well well-sm"> -->
<!-- 						<div class="media"> -->
<!-- 							<a class="thumbnail pull-left" href="#"> <img -->
<!-- 								class="media-object" style="width: 70%;margin-top: 6px;"  -->
<!-- 								src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"> -->
<!-- 							</a> -->
<!-- 							<div class="media-body"> -->
<!-- 								<h4 class="media-heading">John Doe</h4> -->
<!-- 								<p style="margin-top: 0px;"> -->
<!-- 									<a href="#" class="btn btn-success btn-sm"><i class="fas fa-home"></i></a> -->
<!-- 									<a href="#" class="btn btn-primary btn-sm"><i class="fas fa-user-friends"></i></a> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<hr style="    margin: 0px 20px 0px 20px;"> -->
<!-- 				</div></li> -->
<!-- 	 		<li>Search Result #3</li> -->
<!--          	<li>Search Result #4</li> -->
		 </ul>
		</div>
		<br>
	</div>
	<nav id="sidebar">

		<ul class="dots drop-down-menu" style="display: flex;">
			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="glyphicon glyphicon-user"><mark
							class="pink tada" id="friendcount" style="display:none"></mark></span>
					<ul class="dropdown-menu dropdownmenuCSSoverride" id="whoaddme">
<!-- 						<li> -->
<!-- 						<a href="#"> -->
<!-- 							<div class="col-sm-12 size-adjust"> -->
<!-- 							<a  style="color:red ; font-size:14px;">user </a> -->
<!-- 							<a  style=" font-size:14px;">向你發出好友邀請</a> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 						</li> -->
<!-- 						<hr class="listhr"> -->
						
<!-- 						<li> -->
<!-- 						<a href="#"> -->
<!-- 							<div class="col-sm-12 size-adjust"> -->
<!-- 							<a  style="color:red ; font-size:14px;">user </a> -->
<!-- 							<a  style=" font-size:14px;">向你發出好友邀請</a> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 						</li> -->
<!-- 						<hr class="listhr"> -->
						
					</ul>
			</a>
			</li>
			<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="glyphicon glyphicon-envelope"><mark
							class="pink tada" style="display:none" id="notifycount"></mark></span>
					<ul class="dropdown-menu dropdownmenuCSSoverridenotify" id="notifystatus">
						
					</ul>
			</a></li>
		</ul>
	</nav>
	
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">好友邀請</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         已寄送好友邀請給<span id= "friendrequest" style="color:red"></span>，等待對方接受申請。
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">關閉</button>
      </div>
    </div>
  </div>
</div>

</header>
<hr style="margin-top: 0px">
<link rel="stylesheet" href="/resources/css/main-sidebar.css">
<style>
.dropdown-toggle::after {
	display: none;
}

.navbarontop {
	/* position:fixed; */
	/* background-color:red; */
	
}
/*  Estilos Generales  */
*, *:before, *:after {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html, body {
	max-width: 100%;
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans TC', sans-serif;
	font-weight: 300;
	font-size: 10px;
	background: #e0e0e0;
	display: grid;
	grid-template-columns: 4.6rem 15.4rem calc(100vw - 20rem);
	grid-template-rows: auto;
}

h1, h2, p {
	line-height: 1.5;
	margin-bottom: .8rem;
	margin-top: 1.2rem;
}

h1 {
	font-size: 3.2rem;
}

h2 {
	font-size: 2rem;
}

ul {
	list-style: none;
}

img {
	border-style: none;
}

/* Barra Lateral */
.sidebar {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-between;
	position: fixed;
	font-size: 1.4rem;
	width: 100%;
	color: #b0b0b0;
	background-color: #212121;
	/*overflow: hide;*/
}

.sidebar a {
	text-decoration: none;
	color: #b0b0b0;
}

.sidebar-avatar img {
	border-radius: 50%;
	height: 100%;
	width: 100%;
	margin: 0;
}

.sidebar-avatar {
	border-radius: 50%;
	margin: 0;
	position: relative;
}

.sidebar-avatar-in {
	background: #e0e0e0;
	padding: 3%;
}

.sidebar-avatar-in:hover {
	background: #ff88f0;
	cursor: pointer;
}

.sidebar-avatar .sidebar-avatar-logo {
	background: rgba(18, 19, 17, 0.57);
	bottom: -0.5rem;
	height: 25%;
	padding: 4%;
	position: absolute;
	right: 1rem;
	width: 25%;
	cursor: pointer;
}

.sidebar-avatar-logo:hover {
	background: #020202;
	cursor: pointer;
}

.sidebar-title {
	margin: -2rem 0 0 0;
	font-size: 1.6rem;
}

.sidebar-title:hover {
	color: #ff88f0;
	cursor: pointer;
}

.sidebar-header {
	margin: .8rem 0 .8rem 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}

.sidebar-nav {
	flex-grow: 1;
	width: 100%;
}

.sidebar-nav-item {
	
}

.sidebar-nav-item:hover {
	background-color: #323232;
	cursor: pointer;
}

.sidebar-nav-item-icon {
	position: absolute;
	font-size: 1.8rem;
}

.sidebar-nav-item-zelda {
	position: absolute;
	font-size: 1.6rem;
	padding: .2rem 0 0 3rem;
}

.sidebar-footer {
	height: 3rem;
	width: 100%;
	font-size: 1rem;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.sidebar-footer:hover {
	cursor: pointer;
	background-color: #0f0f0f;
}

/* Iconos de colores */
.active .fa-th-large, .active>.fa-th-large+a {
	color: white;
}

.active .fa-newspaper, .active>.fa-newspaper+a {
	color: #80deea;
}

.active .fa-gamepad, .active>.fa-gamepad+a {
	color: #ba68C8;
}

.active .fa-envira, .active>.fa-envira+a {
	color: #adff2f;
}

.active .fa-cart-arrow-down, .active>.fa-cart-arrow-down+a {
	color: #2196F3;
}

.active .fa-envelope-open-text, .active>.fa-envelope-open-text+a {
	color: #f44336;
}

.active .fa-area-chart, .active>.fa-area-chart+a {
	color: #ffd54f;
}

.active .fa-cog, .active>.fa-cog+a {
	color: #8d6e63;
}

.active .fa-sign-out, .active>.fa-sign-out+a {
	color: #2cec72;
}

/* Contenido */
.main {
	padding: 2rem 2rem 2rem 2rem;
	font-size: 1.4rem;
}

.toggle {
	font-size: 2rem;
}

.content {
	text-align: justify;
}

/********************************************
Inicio Primer Estado: Colapsado (Default:MOE) 
*********************************************/
.sidebar.moe {
	grid-column: 1/2;
	grid-row: 1/2;
	height: inherit;
	width: initial;
}

.sidebar-header.moe {
	height: 4.5rem;
	width: 4.5rem;
	color: rgba(255, 0, 0, 0);
}

.sidebar-avatar.moe {
	height: 85%;
	width: 85%;
}

.sidebar-avatar-logo.moe {
	display: none;
}

.sidebar-title.moe {
	display: none;
}

.sidebar-nav-item.moe {
	padding: 1rem 0 2.8rem 1.5rem;
}

.sidebar-nav-item-zelda.moe {
	opacity: 0;
	width: 0rem;
}

.sidebar-footer-icon.moe {
	display: block;
	font-size: 1.5rem;
}

.sidebar-footer-label.moe {
	display: none;
}

.main.moe {
	grid-column: 2/4;
	grid-row: 1/2;
}

.content.moe {
	padding: 1.5rem 4rem 1.5rem 4rem;
	transition: .8s ease;
}

/************************************
Inicio Segundo Estado: Expandido (EX)
*************************************/
.sidebar.ex {
	grid-column: 1/3;
	grid-row: 1/2;
	height: inherit;
	width: initial;
}

.sidebar-header.ex {
	height: 20rem;
	width: 20rem;
	transition: .2s ease;
}

.sidebar-avatar.ex {
	height: 50%;
	width: 50%;
	transition-timing-function: cubic-bezier(0.1, 0.1, 0.5, 0.5);
	transition: 0.1s;
}

.sidebar-avatar-logo.ex {
	display: block;
}

.sidebar-title.ex {
	display: block;
	transition: 1s ease;
}

.sidebar-nav-item.ex {
	padding: 1rem 0 2.8rem 4.5rem;
	transition: 0.1s ease;
}

.sidebar-nav-item-zelda.ex {
	transition: .6s ease;
}

.sidebar-footer-icon.ex {
	display: none;
}

.sidebar-footer-label.ex {
	display: block;
	font-size: 1.5rem;
}

.main.ex {
	grid-column: 3/4;
	grid-row: 1/2;
}

.content.ex {
	padding: 0 2rem 0 2rem;
	transition: .8s ease;
}

/************************************
Inicio Tercer Estado: Oculto (OK)
*************************************/
.sidebar.ok {
	display: none;
}

.sidebar-header.ok {
	display: none;
}

.sidebar-avatar.ok {
	display: none;
}

.sidebar-avatar-logo.ok {
	display: none;
}

.sidebar-title.ok {
	display: none;
}

.sidebar-nav-item.ok {
	display: none;
}

.sidebar-nav-item-zelda.ok {
	display: none;
}

.sidebar-footer-icon.ok {
	display: none;
}

.sidebar-footer-label.ok {
	display: none;
}

.main.ok {
	grid-column: 1/4;
	grid-row: 1/2;
}

.content.ok {
	padding: 2.5rem 5rem 2.5rem 5rem;
	transition: 1.2s ease;
}

.text-line-height {
	line-height: 1rem;
}

.username-line-height {
	line-height: 7rem;
}
/* ========================= */
.searchbar {
	margin-right: 65px;
	margin-bottom: auto;
	margin-top: auto;
	height: 40px;
	background-color: #353b48;
	border-radius: 30px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	line-height: 40px;
	transition: width 0.4s linear;
	padding: 0 20px;
	width: 190px;
	caret-color: red;
}

.search_icon {
	height: 40px;
	width: 40px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
}
</style>
<script type="text/javascript" src="/resources/js/windowstop.js"></script>
<script>
	var hamburguesa = document.querySelector('.toggle');
	hamburguesa.addEventListener('click',function() {
		if (document.querySelector('.ex')) {

			var expandida = document.querySelector('.ex');
			var pivote = expandida.classList.contains('ex');
				while (pivote == true) {
					if (window.CP.shouldStopExecution(1)) {
						break;
					}
					expandida.classList.remove('ex');
					expandida.classList.add('ok');
					if (document.querySelector('.ex')) {
						var expandida = document.querySelector('.ex');
					} else {
						var pivote = false;
						var expandida = false;
					if (document.querySelector('.fa-angle-double-left')) {
						var fonta = document.querySelector('.fa-angle-double-left');
							fonta.classList.remove('fa-angle-double-left');
							fonta.classList.add('fa-list-ul');
					}
							} // else
									}
					window.CP.exitedLoop(1);
							// end while 1
		} else if (document.querySelector('.moe')) {

			var colapsada = document.querySelector('.moe');
			var pivote = colapsada.classList.contains('moe');
				while (pivote == true) {
					if (window.CP.shouldStopExecution(2)) {
						break;
					}
				colapsada.classList.remove('moe');
				colapsada.classList.add('ex');
					if (document.querySelector('.moe')) {
						var colapsada = document.querySelector('.moe');

					} else {
						var pivote = false;
						var colapsada = false;
					if (document.querySelector('.fa-bars')) {
						var fonta = document.querySelector('.fa-bars');
							fonta.classList.remove('fa-bars');
							fonta.classList.add('fa-angle-double-left');
						
					}
							} // end else
										}
						window.CP.exitedLoop(2);
							// end while 2
					} else if (document.querySelector('.ok')) {
						var oculta = document.querySelector('.ok');
						var pivote = oculta.classList.contains('ok');
						while (pivote == true) {
								if (window.CP.shouldStopExecution(3)) {
									break;
								}
							oculta.classList.remove('ok');
							oculta.classList.add('moe');
								if (document.querySelector('.ok')) {
									var oculta = document.querySelector('.ok');
								} else {
									var pivote = false;
									var oculta = false;

								if (document.querySelector('.fa-list-ul')) {
									var fonta = document.querySelector('.fa-list-ul');
										fonta.classList.remove('fa-list-ul');
										fonta.classList.add('fa-bars');
									}
										} // end else
												}
							window.CP.exitedLoop(3);
							// end while 3
						} else {
						}
					})

	var nav = document.querySelectorAll('.sidebar-nav-item');
	$(document).ready(function() {
		showImageBymemberId();
		for (i = 0; i < 9; i++) {
			if (localStorage.getItem("nav[" + i + "]")) {
				$("nav[" + i + "]").click();

				localStorage.removeItem("nav[" + i + "]");
				a(i);
			}
		};
		if ('${sessionScope.member.memberId}' == 'admin'){
			$("#admitbutton").css("visibility","visible");
		}
		
	});
	function showImageBymemberId() {
		$
				.ajax({
					url : "/admin/memberBeans/findBymemberId",
					data : {
						memberId : $("#memberId").val(),
					},
					type : "POST",
					success : function(data) {
						if (data["memberPhotoURL"] == null) {
							text = "<img class=\"sidebar-avatar-in\" src="+ "/resources/img/default-picture.png" + ">";
						} else {
							text = "<img  class=\"sidebar-avatar-in\" src="+ data["memberPhotoURL"] + ">";
						}

						$("#result").html(text);
					}
				});
	}
	nav[0].addEventListener('click', function() {

		var clica = nav[0];
		var activo = document.querySelector('.active');
		if (clica !== activo) {
			activo.classList.remove('active');
			clica.classList.add('active');
			console.log("1 activado");

		} else {
			console.log("nulo");
		}
	})
	function a(i) {

		var clica = nav[i];
		var activo = document.querySelector('.active');
		if (clica !== activo) {
			activo.classList.remove('active');
			clica.classList.add('active');
			console.log(i + "2 activado");
		} else {
			console.log("nulo");
		}
	}

	nav[1].addEventListener('click', function() {
		localStorage.setItem("nav[1]", "true");
		a(1);
	});

	nav[2].addEventListener('click', function() {
		localStorage.setItem("nav[2]", "true");
		a(2);
	})

	nav[3].addEventListener('click', function() {
		localStorage.setItem("nav[3]", "true");
		a(3);
	})

	nav[4].addEventListener('click', function() {
		localStorage.setItem("nav[4]", "true");
		a(4);
	})

	nav[5].addEventListener('click', function() {
		localStorage.setItem("nav[5]", "true");
		a(5);
	})
	nav[6].addEventListener('click', function() {
		localStorage.setItem("nav[6]", "true");
		a(6);
	})
	nav[7].addEventListener('click', function() {
		localStorage.setItem("nav[7]", "true");
		a(7);
	})

	// 	nav[8].addEventListener('click', function() {
	// 		localStorage.setItem("nav[8]", "true");
	// 		a(8);
	// 	})

	//# sourceURL=pen.js
</script> <script>

	window.onscroll = function() {
		scrollFunction()
	};
	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			document.getElementById("footbtn").style.display = "block";
		} else {
			document.getElementById("footbtn").style.display = "none";
		}
	}
	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script> 
<script>
$(document).ready(function(){
	$("#membersearch01").hide();
});

$("#findmemberlist").on("input",function(){
	var text = "";
	var friendlist = "";
	$.ajax({
		url : "/friend/list/findmyfriend?memberid=" + '${sessionScope.member.memberNum}',
		type : "GET",
		success : function(Jdata) {
			var NumOfJData = Jdata.length;
			for (var j = 0 ; j < NumOfJData ; j++){
				friendlist += Jdata[j][0] + ",";
			}
			sessionStorage.setItem("friendlist",friendlist);
			}
		});
	$.ajax({
		url : "/admin/memberBeans/findfriend?findmemberid="+$("#findmemberlist").val(),
		type : "GET",
		success : function(Jdata) {
			var NumOfJData = Jdata.length;
			sessionStorage.setItem("length",Jdata.length);
			for (var i = 0; i < NumOfJData; i++) {
				if (Jdata[i]["memberNum"] == '${sessionScope.member.memberNum}'){
					continue;
				}
				var friend2member = sessionStorage.getItem("friendlist").split(",");
				for (var k  = 0 ; k < friend2member.length ; k++){
					if (Jdata[i]["memberNum"] == friend2member[k]){
						console.log ("myfriend");
						var ismyfriendornot = "<a style=\"color: springgreen\" onclick=\"talkfunction("+Jdata[i]["memberNum"]+")\" class=\"btn btn-sm\"><i class=\"fas fa-comment-dots\"></i></a>"
						break;
			//jdata <> ismyfriend <> ornot <> defination
					} else {
						var ismyfriendornot = "<a data-toggle=\"modal\" data-target=\"#exampleModalCenter\"  href=\"#\"  style=\"color: cyan;\" onclick=\"addfunction("+Jdata[i]["memberNum"]+",'"+Jdata[i]["memberId"]+"'); \" class=\"btn  btn-sm\"><i class=\"fas fa-user-friends\"></i></a>"
						console.log ("notmyfriend");
					}
				}
				text +=	"<li>"
				text += "<div class=\"col-md-12\">"
				text += "<div class=\"well well-sm\">"
				text +=	"<div class=\"media\">"
				text +=	"<a class=\"thumbnail pull-left\" href=\"#\"> <img "
				text +=	"class=\"media-object\" style=\" border-radius: 50% ; width: 60px;height: 60px;margin-top: 6px;\""
				text +=	"src=\"<c:url value='/admin/memberBeans/getServerPicture/"+Jdata[i]["memberNum"]+"' />\">"
				text +=	"</a>"
				text +=	"<div class=\"media-body\">"
				text +=	"<h4 class=\"media-heading\">"+Jdata[i]["memberId"]+"</h4>"
				text +=	"<p style=\"margin-top: 0px;\">"
				text +=	"<a href=\"/main/setting/"+Jdata[i]["memberNum"]+"\"  style=\"color: yellow\" class=\"btn btn-sm\" alt=\"HomePage\"><i class=\"fas fa-home\"></i></a>"
				
				text +=	 ismyfriendornot
				text +=	"<a href=\"/friend/list/report/"+Jdata[i]["memberNum"]+"\"  style=\"color: #ff6c00\" class=\"btn btn-sm\"><i class=\"fas fa-skull-crossbones\"></i></a>"
				text +=	"</p>"
				text +=	"</div>"
				text +=	"</div>"
				text +=	"</div>"
				text +=	"<hr style=\"margin: 0px 20px 0px 20px;\">"
				text +=	"</div>"
				text +=	"</li>"
				
			}
			
			$("#membersearch01").html(text);
		}
	});
	if ($("#findmemberlist").val().length > 1 ){
// 		console.log(sessionStorage.getItem("length"));
		$("#membersearch01").show();
	};
	
});

// $(".search_input").click(function(){
// 	$("#membersearch01").show();
// 	event.stopPropagation();
// });

// $(".searchbar").blur(function(){
// 	$("#membersearch01").slideUp();
// });
$(".search_input").blur(function(){
	$(".searchbar").click(function(){
		$("#membersearch01").show();
	});
})
$(".search_icon").click(function(){
	$("#membersearch01").slideUp();
});
function addfunction(num,id){
	$("#friendrequest").html(id);
	$.ajax({
		url : "/friend/list/add?yourid="+'${sessionScope.member.memberNum}'+"&friendid="+num,
		type: "GET"
	})
// 	location.reload();
	$(".search_icon").click();
};

function talkfunction(id){
	$("#search_friend_icon").click();
}
</script>
<!-- 顯示玩家餘額 -->
<script type="text/javascript">
		$(document).ready(function() {
			setInterval(function() {
				$.ajax({

					url : "/admin/memberBeans/playersummarymoney?chipMemberNum="+${sessionScope.member.memberNum},
					type : "POST",
					success : function(data) {
							$("#QQ").html("餘額:"+"$"+data[1]);
					}

				});

			}, 3000); 

		});
	</script>
<script>
$(document).ready(function(){
	$.ajax({
		url : "/admin/vip/getvipimage?membernum="+'${sessionScope.member.memberNum}',
		type : "GET",
		success : function(data) {
				$("#membervipimg").attr("src",data);
		}
	});
});
</script>
