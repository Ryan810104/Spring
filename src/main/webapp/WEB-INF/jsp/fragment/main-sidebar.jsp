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
			<a href="/main/setting">${sessionScope.member.memberNickName}</a>
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
<!-- 			<li class="sidebar-nav-item ex"><i -->
<!-- 				class="sidebar-nav-item-icon fas fa-vial"></i> <a -->
<!-- 				class="sidebar-nav-item-zelda ex text-line-height" -->
<!-- 				href="/main/testing">測試</a></li> -->
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
				<a href="/admin/memberBeans/adminlist"><input type="button" id="admitbutton" class="btn btn-danger"  value="管理者介面" style="visibility:hidden"/></a>
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
					<span class=""><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMi4wMDEgNTEyLjAwMSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyLjAwMSA1MTIuMDAxOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPHBhdGggc3R5bGU9ImZpbGw6IzQ3NUQ2RDsiIGQ9Ik0zNjUuMjc1LDIyLjEzNWg1MS4yNDdjMTIuNzAyLDAsMjQuMTksNy41NDYsMjkuMjM1LDE5LjIwNGwzLjI3NSw3LjU2OWgxNS40NjYgIEM0OTAuNzMzLDQ4LjkwOCw1MTIsNzAuMTc1LDUxMiw5Ni40MXYxNzQuNjgzYzAsMTguNjM1LTE1LjEwNywzMy43NDItMzMuNzQyLDMzLjc0MkgzMDcuODI2Yy0xOC42MzUsMC0zMy43NDItMTUuMTA3LTMzLjc0Mi0zMy43NDIgIFYxMTMuMzI3QzI3NC4wODQsNjIuOTYzLDMxNC45MTEsMjIuMTM1LDM2NS4yNzUsMjIuMTM1eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojMkMzRjRGOyIgZD0iTTQ2NC40OTgsNDguOTA4aC0xNS40NjVsLTMuMjc1LTcuNTY5Yy01LjA0NC0xMS42NTgtMTYuNTMyLTE5LjIwNC0yOS4yMzUtMTkuMjA0aC0yNi41NDQgIGMxMi43MDIsMCwyNC4xOSw3LjU0NiwyOS4yMzUsMTkuMjA0bDMuMjc1LDcuNTY5aDE1LjQ2NmMyNi4yMzUsMCw0Ny41MDIsMjEuMjY3LDQ3LjUwMiw0Ny41MDJ2MTc0LjY4MyAgYzAsMTguNjM1LTE1LjEwNywzMy43NDItMzMuNzQyLDMzLjc0MmgyNi41NDRjMTguNjM1LDAsMzMuNzQyLTE1LjEwNywzMy43NDItMzMuNzQyVjk2LjQxMSAgQzUxMiw3MC4xNzYsNDkwLjczMyw0OC45MDgsNDY0LjQ5OCw0OC45MDh6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNGOURDNkE7IiBkPSJNMjA1Ljg0LDQ5LjIyMWwtOTcuMTktMjMuMTE5Yy0xMC4zNi0yLjQ2NS0yMS4yNTgsMC42MjEtMjguNzg4LDguMTUxTDUyLjIyNSw2MS44OUg0MC41MTIgIGMtMTYuOTQxLDAtMzAuNjc0LDEzLjczMy0zMC42NzQsMzAuNjc0YzAsMC0xLjU0NywzNy42MzQsMCw1MC4wNTFjMS44MzgsMTQuNzUzLDE0LjU5Miw1Ny42NDksMTQuNTkyLDU3LjY0OWgyMDcuMjg5ICBsMzguODQ0LTE1My43MjZjMS45OTEtNy44ODYtNy4xNjgtMTMuNzk0LTEzLjUzMi04LjcyOWwwLDBDMjQyLjYyNiw0OS4yNzMsMjIzLjc1MSw1My40ODEsMjA1Ljg0LDQ5LjIyMXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0U1QUM1MTsiIGQ9Ik0yNTcuMDMxLDM3LjgwOEwyNTcuMDMxLDM3LjgwOGMtNC4wNDQsMy4yMTktOC40NDksNS44NDMtMTMuMDc3LDcuODkxICBjLTAuMDQzLDAuMjc5LTAuMDcsMC41NTQtMC4xNDIsMC44MzhsLTM4Ljg0NCwxNTMuNzI2aDI2Ljc1MWwzOC44NDQtMTUzLjcyNkMyNzIuNTUzLDM4LjY1MiwyNjMuMzk0LDMyLjc0MywyNTcuMDMxLDM3LjgwOHoiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzJCQjRGMzsiIGQ9Ik01MDUuNCwzODYuNDUxdjEwMy40MUgzMTcuOHYtOTYuNTlIMzkuMDJ2LTYyLjA3aDQxMS4xM0M0ODAuNjYsMzMxLjIwMSw1MDUuNCwzNTUuOTMsNTA1LjQsMzg2LjQ1MXogICIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiMxNjg3QzQ7IiBkPSJNNDUwLjE0OCwzMzEuMTk5aC0yMy42NTFjMzAuNTE0LDAsNTUuMjUsMjQuNzM2LDU1LjI1LDU1LjI1djEwMy40MTZoMjMuNjUxVjM4Ni40NDggICBDNTA1LjM5OCwzNTUuOTM1LDQ4MC42NjIsMzMxLjE5OSw0NTAuMTQ4LDMzMS4xOTl6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojMTY4N0M0OyIgZD0iTTI3MC44MjksMzkzLjI3M3YtNi44MjRjMC0zMC41MTMtMjQuNzM0LTU1LjI0OC01NS4yNDctNTUuMjVIMTAxLjM2NCAgIGMtMzAuNTEyLDAuMDAxLTU1LjI0NywyNC43MzctNTUuMjQ3LDU1LjI1djYuODI0SDI3MC44Mjl6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6I0YyQTA3NzsiIGQ9Ik0zNTkuNzU0LDI3NS42ODV2NjcuMDk4YzAsMTguMzg1LDMzLjI4OCwzNi45MzYsMzMuMjg4LDM2LjkzNnMzMy4yODgtMTguNTUyLDMzLjI4OC0zNi45MzZ2LTY3LjA5OCAgSDM1OS43NTR6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNGRkNDQUE7IiBkPSJNNTA5LjM1NSwxOTUuNTY2djkuODAxYzAsMTEuNDQyLTkuMjY1LDIwLjcyLTIwLjcwOCwyMC43MmgtNy4wMjggIGMtMi44MDgsNTQuMDUxLTUyLjk0LDkxLjU4OS0xMDIuMTI4LDgzLjAyNmgtMC4wMTJjLTQxLjA1MS02LjI5OS03Mi44MjQtNDAuNzQ3LTc1LjAxMy04My4wMjZoLTcuMDI4ICBjLTExLjQ0MiwwLTIwLjcyLTkuMjc4LTIwLjcyLTIwLjcydi05LjgwMWMwLTExLjQ0Miw5LjI3OC0yMC43MiwyMC43Mi0yMC43Mmg2Ljg5NFYxMjkuODhjMC0xLjIwNCwwLjAyNC0yLjM5NSwwLjA4NS0zLjU3NSAgYzEyLjE2LDIuMzQ3LDI0LjcyLDMuNTYzLDM3LjU2MSwzLjU2M2MzOS4xMywwLDc1LjYwOC0xMS4zMzMsMTA2LjMzNi0zMC45MWM2LjczNi00LjI4LDEzLjIwNS04Ljk2MiwxOS4zNTgtMTQuMDIgIGM4LjY2MywxMi4yNDMsMTQuMDY4LDI4LjE0MywxNC4wNjgsNDQuOTQydjQ0Ljk2Nmg2LjkwN0M1MDAuMDksMTc0Ljg0Niw1MDkuMzU1LDE4NC4xMjQsNTA5LjM1NSwxOTUuNTY2eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjJBMDc3OyIgZD0iTTQ4OC42NDgsMTc0Ljg0NmgtNi45MDd2LTE4LjM1N2gtMC4wMDljLTAuMDA0LTMwLjQ3OC0wLjAwNy0yOC4wOS0wLjAxNS0yOC41MTggIGMtMC4zOTUtMTYuMTYzLTUuNzU0LTMxLjMxOC0xNC4wNDQtNDMuMDMzYy02LjE1Myw1LjA1OC0xMi42MjIsOS43NC0xOS4zNTgsMTQuMDJjNC4wNDksOS40OTcsNi4yOTksMTkuOTQyLDYuMjk5LDMwLjkyMnY0NC45NjYgIGwtMC4xMzQsNTEuMjQxYy0xLjIxNiwyMy40MDctMTEuNDkxLDQ0LjQzMS0yNy40MDgsNTkuNTk0Yy0xMi44MTYsMTIuMjItMjkuMjgsMjAuNjExLTQ3LjU4LDIzLjQzMiAgYzQ0Ljg4Myw3LjgxNCw5MC41NDMtMjIuNzU5LDEwMC4zMjgtNjkuMjMzbDAsMGMwLjAwMS0wLjAwMywwLjAwMS0wLjAwNiwwLjAwMi0wLjAwOWMwLjQ2NS0yLjIwOSwwLjg1MS00LjQ1MiwxLjE1LTYuNzMgIGMwLjAwOS0wLjA2OSwwLjAxNi0wLjEzOSwwLjAyNS0wLjIwOGMwLjEyNC0wLjk2NSwwLjIzMS0xLjkzNywwLjMyNS0yLjkxM2MwLjAyMy0wLjI0NSwwLjA0Ny0wLjQ4OSwwLjA2OS0wLjczNSAgYzAuMDkzLTEuMDYsMC4xNzQtMi4xMjQsMC4yMjktMy4xOThoMC4xMjFoNi45MDdjMTEuNDQyLDAsMjAuNzA4LTkuMjc4LDIwLjcwOC0yMC43MnYtOS44MDEgIEM1MDkuMzU1LDE4NC4xMjQsNTAwLjA5LDE3NC44NDYsNDg4LjY0OCwxNzQuODQ2eiIvPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM0NzVENkQ7IiBkPSJNMzkzLjA0MiwyNTguNTc5Yy0xMS41ODUsMC0yMi40OS00LjUxNC0zMC43MDctMTIuNzA5Yy00LjE1NS00LjE1NS03LjM2MS04Ljk5My05LjUzNi0xNC4zODUgICBjLTEuNTUtMy44NDEsMC4zMDgtOC4yMTEsNC4xNDktOS43NjFjMy44NDEtMS41NSw4LjIxMiwwLjMwOCw5Ljc2MSw0LjE1YzEuNDE3LDMuNTEyLDMuNTEyLDYuNjY5LDYuMjI2LDkuMzg0ICAgYzUuMzc4LDUuMzY0LDEyLjUyMSw4LjMyMiwyMC4xMDcsOC4zMjJjMTEuNjM0LDAsMjEuOTcyLTYuOTU1LDI2LjMzOC0xNy43MTljMS41NTgtMy44MzgsNS45MjgtNS42ODgsOS43Ny00LjEzMSAgIGMzLjgzOCwxLjU1Nyw1LjY4OCw1LjkzMSw0LjEzMSw5Ljc2OUM0MjYuNjA3LDI0Ny45NDksNDEwLjgxMywyNTguNTc5LDM5My4wNDIsMjU4LjU3OXoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM0NzVENkQ7IiBkPSJNMzQ4LjYzNywxODguMDk1Yy00LjE0MywwLTcuNS0zLjM1OC03LjUtNy41di00LjI4NWMwLTQuMTQyLDMuMzU3LTcuNSw3LjUtNy41czcuNSwzLjM1OCw3LjUsNy41ICAgdjQuMjg1QzM1Ni4xMzcsMTg0LjczNywzNTIuNzc5LDE4OC4wOTUsMzQ4LjYzNywxODguMDk1eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzQ3NUQ2RDsiIGQ9Ik00MzcuNDQ3LDE4OC4wOTVjLTQuMTQzLDAtNy41LTMuMzU4LTcuNS03LjV2LTQuMjg1YzAtNC4xNDIsMy4zNTctNy41LDcuNS03LjVzNy41LDMuMzU4LDcuNSw3LjUgICB2NC4yODVDNDQ0Ljk0NywxODQuNzM3LDQ0MS41OSwxODguMDk1LDQzNy40NDcsMTg4LjA5NXoiLz4KPC9nPgo8cGF0aCBzdHlsZT0iZmlsbDojRkY1QTU5OyIgZD0iTTI0MC40MywzODYuNDUxdjEwMy40MUgxNS43MnYtMTAzLjQxYzAtMzAuNTIsMjQuNzMtNTUuMjUsNTUuMjUtNTUuMjVoMTE0LjIxICBDMjE1LjY5LDMzMS4yMDEsMjQwLjQzLDM1NS45MywyNDAuNDMsMzg2LjQ1MXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0NFM0E0QzsiIGQ9Ik0xODUuMTgsMzMxLjE5OWgtMjMuNjUxYzMwLjUxNCwwLDU1LjI1LDI0LjczNiw1NS4yNSw1NS4yNXYxMDMuNDE2aDIzLjY1MVYzODYuNDQ4ICBDMjQwLjQzLDM1NS45MzUsMjE1LjY5NCwzMzEuMTk5LDE4NS4xOCwzMzEuMTk5eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjJBMDc3OyIgZD0iTTk0Ljc4NiwyNzUuNjg1djY3LjA5OGMwLDE4LjM4NSwxNC45MDQsMzMuMjg4LDMzLjI4OCwzMy4yODhsMCwwICBjMTguMzg1LDAsMzMuMjg4LTE0LjkwNCwzMy4yODgtMzMuMjg4di02Ny4wOThIOTQuNzg2eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRkZDQ0FBOyIgZD0iTTI0NC4zOTgsMTk1LjU2NnY5LjgwMWMwLDExLjQ0Mi05LjI3OCwyMC43Mi0yMC43MiwyMC43MmgtNy4wMjggIGMtMC45MjgsMTcuMTUzLTYuODM4LDMzLjI4Ny0xNS4xODcsNDUuMTczYzAsMC4wMTItMC4wMTIsMC4wMTItMC4wMTIsMC4wMjRjLTE2LjY5MywyNS42NzUtNTEuMDY1LDQzLjI0OS04Ni45MjksMzcuODI4aC0wLjAxMiAgYy00MS4wNTEtNi4yOTktNzIuODI0LTQwLjc0Ny03NS4wMTMtODMuMDI2aC03LjAyOGMtMTEuNDQyLDAtMjAuNzA4LTkuMjc4LTIwLjcwOC0yMC43MnYtOS44MDFjMC0xMS40NDIsOS4yNjYtMjAuNzIsMjAuNzA4LTIwLjcyICBoNi45MDd2LTMyLjYxMmMyMy43OTYtMS42MDUsMzEuNDkzLTguOTAxLDMxLjQ5My0zMi4zNTdjMCwwLDMwLjI3Nyw1My45MjgsMTE4Ljc3NSwzNy44NTNjOC41LTEuNTQ0LDE3LjUzNC0zLjczMywyNy4xNC02LjY3NiAgdjMzLjc5MWg2Ljg5NEMyMzUuMTIsMTc0Ljg0NiwyNDQuMzk4LDE4NC4xMjQsMjQ0LjM5OCwxOTUuNTY2eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjJBMDc3OyIgZD0iTTIyMy42NzgsMTc0Ljg0NmgtNi44OTR2LTYuMTk3di0yNy41OTRjLTkuNjA2LDIuOTQzLTE4LjY0MSw1LjEzMS0yNy4xNCw2LjY3NnYyNy4xMTZsLTAuMTM0LDUxLjI0MSAgYy0xLjIxNiwyMy40MDctMTEuNDkxLDQ0LjQzMS0yNy40MDgsNTkuNTk0Yy0xMi44MTYsMTIuMjItMjkuMjY4LDIwLjYxMS00Ny41OCwyMy40MzJjMzUuODUzLDUuNDE5LDcwLjI5Ny0xMi4yNDgsODYuOTI5LTM3LjgyOCAgYzAtMC4wMTIsMC4wMTItMC4wMTIsMC4wMTItMC4wMjRjNS4zNTctNi44MiwxMS4wODYtMTkuNjM3LDEzLjc1Ni0zMy43MDZoMC4wNDljMC40NzUtMi41NjksMC44NDEtNS4xODEsMS4wOTctNy44MjIgIGMwLjAxLTAuMTA1LDAuMDIzLTAuMjA5LDAuMDMzLTAuMzE1YzAuMTAzLTEuMTA1LDAuMTkxLTIuMjE0LDAuMjUyLTMuMzNoMC4xMzRoNi44OTRjMTEuNDQyLDAsMjAuNzItOS4yNzgsMjAuNzItMjAuNzJ2LTkuODAxICBDMjQ0LjM5OCwxODQuMTI0LDIzNS4xMiwxNzQuODQ2LDIyMy42NzgsMTc0Ljg0NnoiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojNDc1RDZEOyIgZD0iTTEyOC4wNzQsMjU4LjU3OWMtMTEuNTg2LDAtMjIuNDkxLTQuNTE0LTMwLjcwOC0xMi43MDljLTQuMTUzLTQuMTU0LTcuMzU5LTguOTkxLTkuNTM2LTE0LjM4NCAgIGMtMS41NS0zLjg0MSwwLjMwNy04LjIxMiw0LjE0OC05Ljc2MmMzLjg0MS0xLjU1Myw4LjIxMSwwLjMwOCw5Ljc2Miw0LjE0OGMxLjQxOCwzLjUxMywzLjUxMyw2LjY3MSw2LjIyNyw5LjM4NSAgIGM1LjM3OCw1LjM2NCwxMi41MjEsOC4zMjIsMjAuMTA3LDguMzIyYzExLjYzNCwwLDIxLjk3Mi02Ljk1NSwyNi4zMzgtMTcuNzE5YzEuNTU4LTMuODM4LDUuOTI4LTUuNjg4LDkuNzctNC4xMzEgICBjMy44MzgsMS41NTcsNS42ODgsNS45MzEsNC4xMzEsOS43NjlDMTYxLjY0LDI0Ny45NDksMTQ1Ljg0NSwyNTguNTc5LDEyOC4wNzQsMjU4LjU3OXoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiM0NzVENkQ7IiBkPSJNODMuNjY5LDE4OC4wOTVjLTQuMTQzLDAtNy41LTMuMzU4LTcuNS03LjV2LTQuMjg1YzAtNC4xNDIsMy4zNTctNy41LDcuNS03LjVzNy41LDMuMzU4LDcuNSw3LjUgICB2NC4yODVDOTEuMTY5LDE4NC43MzcsODcuODEyLDE4OC4wOTUsODMuNjY5LDE4OC4wOTV6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojNDc1RDZEOyIgZD0iTTE3Mi40NzksMTg4LjA5NWMtNC4xNDMsMC03LjUtMy4zNTgtNy41LTcuNXYtNC4yODVjMC00LjE0MiwzLjM1Ny03LjUsNy41LTcuNXM3LjUsMy4zNTgsNy41LDcuNSAgIHY0LjI4NUMxNzkuOTc5LDE4NC43MzcsMTc2LjYyMiwxODguMDk1LDE3Mi40NzksMTg4LjA5NXoiLz4KPC9nPgo8cGF0aCBzdHlsZT0iZmlsbDojRkZDQ0FBOyIgZD0iTTM4LjA3NSw0MDIuMjQ1SDE5LjI1OUM4LjYyMyw0MDIuMjQ1LDAsMzkzLjYyMiwwLDM4Mi45ODV2LTQyLjAzNSAgYzAtMTAuNjM3LDguNjIzLTE5LjI1OSwxOS4yNTktMTkuMjU5aDE4LjgxNmM3LjgxNCwwLDE0LjE0OSw2LjMzNSwxNC4xNDksMTQuMTQ5djUyLjI1NSAgQzUyLjIyNSwzOTUuOTEsNDUuODksNDAyLjI0NSwzOC4wNzUsNDAyLjI0NXoiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQ0UzQTRDOyIgZD0iTTIxMC44Miw0MzAuMzd2NTkuNDloLTE1di01OS40OWMwLTQuMTQsMy4zNi03LjUsNy41LTcuNVMyMTAuODIsNDI2LjIzLDIxMC44Miw0MzAuMzd6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQ0UzQTRDOyIgZD0iTTYwLjMzLDQzMC4zN3Y1OS40OWgtMTV2LTU5LjQ5YzAtNC4xNCwzLjM2LTcuNSw3LjUtNy41UzYwLjMzLDQyNi4yMyw2MC4zMyw0MzAuMzd6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6IzE2ODdDNDsiIGQ9Ik00NzUuNzksNDMwLjM3djU5LjQ5aC0xNXYtNTkuNDljMC00LjE0LDMuMzUtNy41LDcuNS03LjVDNDcyLjQzLDQyMi44Nyw0NzUuNzksNDI2LjIzLDQ3NS43OSw0MzAuMzcgIHoiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" style="
    width: 3rem;
">	<mark class="pink tada" id="friendcount" style="display:none"></mark></span>
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
					<span class=""><img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSItMjEgMSA1MTEgNTExLjk5OTk4IiB3aWR0aD0iNTEycHgiPjxwYXRoIGQ9Im0zMTEuNjI4OTA2IDQzNS43NzM0MzhjMCAzNS4wNDY4NzQtMjMuNjQ0NTMxIDY0LjU1NDY4Ny01NS44Mzk4NDQgNzMuNDY4NzUtNi40ODgyODEgMS43OTY4NzQtMTMuMzIwMzEyIDIuNzU3ODEyLTIwLjM3NSAyLjc1NzgxMi00Mi4wOTc2NTYgMC03Ni4yMjY1NjItMzQuMTI1LTc2LjIyNjU2Mi03Ni4yMjY1NjJsNzYuMzQ3NjU2LTM5LjIzNDM3NnptMCAwIiBmaWxsPSIjZTU4ZTEzIi8+PHBhdGggZD0ibTMwNy45NDE0MDYgNDU5LjI4NTE1NmMtNy44NDc2NTYgMjQuMjE4NzUtMjcuNDkyMTg3IDQzLjEzMjgxMy01Mi4xNTIzNDQgNDkuOTU3MDMyLTE1LjUwMzkwNi00LjI4OTA2My0yOS4wMjM0MzctMTMuMzUxNTYzLTM4Ljg3NS0yNS41MDM5MDctNy45NDE0MDYtOS44MDA3ODEtLjc3NzM0My0yNC40NTMxMjUgMTEuODM1OTM4LTI0LjQ1MzEyNXptMCAwIiBmaWxsPSIjZjdkMzYwIi8+PHBhdGggZD0ibTQzMi4yMTA5MzggMzU5LjU1ODU5NC0xNjMuNzYxNzE5IDM1LjQxNDA2Mi0yMjkuODQzNzUtMzUuNDE0MDYyYzE4LjAzNTE1NiAwIDI4LjIzNDM3NS05LjQzMzU5NCAzNC4wMjM0MzctMjUuMDc4MTI1IDI4LjAwMzkwNi03NS41MjM0MzgtNDYuNTgyMDMxLTI5NS42MzI4MTMgMTYyLjc4NTE1Ni0yOTUuNjMyODEzIDIwOS4zNjcxODggMCAxMzQuNzY5NTMyIDIyMC4xMDkzNzUgMTYyLjc3MzQzOCAyOTUuNjMyODEzIDUuODAwNzgxIDE1LjY0NDUzMSAxNS45OTYwOTQgMjUuMDc4MTI1IDM0LjAyMzQzOCAyNS4wNzgxMjV6bTAgMCIgZmlsbD0iI2Y3ZDM2MCIvPjxwYXRoIGQ9Im00NzAuMzE2NDA2IDM5Ny42Njc5NjljMCAyMS4wNDI5NjktMTcuMDYyNSAzOC4xMDU0NjktMzguMTA1NDY4IDM4LjEwNTQ2OWgtMzkzLjYwNTQ2OWMtMTAuNTE5NTMxIDAtMjAuMDUwNzgxLTQuMjYxNzE5LTI2Ljk0NTMxMy0xMS4xNjAxNTctNi44OTg0MzctNi44OTQ1MzEtMTEuMTYwMTU2LTE2LjQyNTc4MS0xMS4xNjAxNTYtMjYuOTQ1MzEyIDAtMjEuMDQ2ODc1IDE3LjA2MjUtMzguMTA5Mzc1IDM4LjEwNTQ2OS0zOC4xMDkzNzVoMzkzLjYwNTQ2OWMxMC41MTk1MzEgMCAyMC4wNTA3ODEgNC4yNjU2MjUgMjYuOTQ1MzEyIDExLjE2MDE1NiA2Ljg5ODQzOCA2Ljg5ODQzOCAxMS4xNjAxNTYgMTYuNDI1NzgxIDExLjE2MDE1NiAyNi45NDkyMTl6bTAgMCIgZmlsbD0iI2U1OGUxMyIvPjxwYXRoIGQ9Im0zOTguMTg3NSAzMzQuNDgwNDY5aC0yMDQuNTc0MjE5Yy0yMi4wNTQ2ODcgMC0zOS42OTE0MDYtMTguMjUzOTA3LTM5LjAwNzgxMi00MC4zMDA3ODEgMi44ODI4MTItOTMuMjY1NjI2LTExLjk5MjE4OC0yNTMuNTU4NTk0IDc5LjI3NzM0My0yNTUuMzIwMzEzLTI1MC41MzUxNTYgMS4yOTY4NzUtOTAuMzgyODEyIDMyMC42OTkyMTktMTk1LjI2OTUzMSAzMjAuNjk5MjE5aDM5My41OTc2NTdjLTE4LjAyNzM0NCAwLTI4LjIyMjY1Ny05LjQzMzU5NC0zNC4wMjM0MzgtMjUuMDc4MTI1em0wIDAiIGZpbGw9IiNlNThlMTMiLz48cGF0aCBkPSJtNDcwLjMxNjQwNiAzOTcuNjY3OTY5YzAgMjEuMDQyOTY5LTE3LjA2MjUgMzguMTA1NDY5LTM4LjEwNTQ2OCAzOC4xMDU0NjloLTI4My40ODA0NjljLTEwLjUyMzQzOCAwLTIwLjA1NDY4OC00LjI2MTcxOS0yNi45NDkyMTktMTEuMTYwMTU3LTYuODk0NTMxLTYuODk0NTMxLTExLjE2MDE1Ni0xNi40MjU3ODEtMTEuMTYwMTU2LTI2Ljk0NTMxMiAwLTIxLjA0Njg3NSAxNy4wNjI1LTM4LjEwOTM3NSAzOC4xMDkzNzUtMzguMTA5Mzc1aDI4My40ODA0NjljMTAuNTE5NTMxIDAgMjAuMDUwNzgxIDQuMjY1NjI1IDI2Ljk0NTMxMiAxMS4xNjAxNTYgNi44OTg0MzggNi44OTg0MzggMTEuMTYwMTU2IDE2LjQyNTc4MSAxMS4xNjAxNTYgMjYuOTQ5MjE5em0wIDAiIGZpbGw9IiNmN2QzNjAiLz48cGF0aCBkPSJtMjc0LjE0ODQzOCA0MS43NjU2MjVjLjA4MjAzMS0uOTYwOTM3LjExMzI4MS0xLjkzMzU5NC4xMTMyODEtMi45MTc5NjkgMC0yMS40NDkyMTgtMTcuMzk0NTMxLTM4Ljg0NzY1Ni0zOC44NDc2NTctMzguODQ3NjU2LTIxLjQ2MDkzNyAwLTM4Ljg0NzY1NiAxNy4zOTg0MzgtMzguODQ3NjU2IDM4Ljg0NzY1NiAwIC45ODQzNzUuMDMxMjUgMS45NTcwMzIuMTEzMjgyIDIuOTE3OTY5IiBmaWxsPSIjZTU4ZTEzIi8+PGcgZmlsbD0iI2U2ZTZlNiI+PHBhdGggZD0ibTQyNC42MTMyODEgMTY3LjcxODc1Yy00LjMyODEyNSAwLTcuODM1OTM3LTMuNTExNzE5LTcuODM1OTM3LTcuODM1OTM4IDAtMzYuMjY5NTMxLTkuMzI0MjE5LTY3LjIyMjY1Ni0yNy43MTA5MzgtOTItMTMuNzI2NTYyLTE4LjQ5NjA5My0yNy42ODM1OTQtMjYuNDU3MDMxLTI3LjgyMDMxMi0yNi41MzkwNjItMy43NjU2MjUtMi4xMTMyODEtNS4xMjEwOTQtNi44Nzg5MDYtMy4wMTk1MzItMTAuNjUyMzQ0IDIuMTAxNTYzLTMuNzY5NTMxIDYuODQzNzUtNS4xMzY3MTggMTAuNjIxMDk0LTMuMDUwNzgxLjY2Nzk2OS4zNzEwOTQgMTYuNTM1MTU2IDkuMjc3MzQ0IDMyLjI1IDMwLjE2MDE1NiAxNC4zMDQ2ODggMTkuMDA3ODEzIDMxLjM1NTQ2OSA1Mi4xNDg0MzggMzEuMzU1NDY5IDEwMi4wODIwMzEgMCA0LjMyNDIxOS0zLjUxMTcxOSA3LjgzNTkzOC03LjgzOTg0NCA3LjgzNTkzOHptMCAwIi8+PHBhdGggZD0ibTQ1OS4wOTM3NSAxMjIuNzg5MDYyYy00LjMyODEyNSAwLTcuODM1OTM4LTMuNTA3ODEyLTcuODM1OTM4LTcuODM1OTM3IDAtNTAuMDIzNDM3LTI5LjYyNS02OS45MTAxNTYtMzAuODg2NzE4LTcwLjczMDQ2OS0zLjYxMzI4Mi0yLjM1NTQ2OC00LjY2MDE1Ni03LjE5NTMxMi0yLjMyODEyNS0xMC44MjAzMTIgMi4zMzU5MzctMy42MjUgNy4xNDA2MjUtNC42OTUzMTMgMTAuNzc3MzQzLTIuMzc4OTA2IDEuNTU4NTk0Ljk4ODI4MSAzOC4xMDkzNzYgMjQuOTI5Njg3IDM4LjEwOTM3NiA4My45Mjk2ODcgMCA0LjMyODEyNS0zLjUwNzgxMyA3LjgzNTkzNy03LjgzNTkzOCA3LjgzNTkzN3ptMCAwIi8+PHBhdGggZD0ibTQ2LjIwMzEyNSAxNjcuNzE4NzVjLTQuMzI4MTI1IDAtNy44MzU5MzctMy41MTE3MTktNy44MzU5MzctNy44MzU5MzggMC00OS45MzM1OTMgMTcuMDUwNzgxLTgzLjA3NDIxOCAzMS4zNTE1NjItMTAyLjA4MjAzMSAxNS43MTg3NS0yMC44ODI4MTIgMzEuNTgyMDMxLTI5Ljc5Mjk2OSAzMi4yNS0zMC4xNjAxNTYgMy43ODkwNjItMi4wOTM3NSA4LjU1ODU5NC0uNzE4NzUgMTAuNjUyMzQ0IDMuMDcwMzEzIDIuMDg5ODQ0IDMuNzgxMjUuNzIyNjU2IDguNTM5MDYyLTMuMDUwNzgyIDEwLjYzNjcxOC0uMzA4NTkzLjE3NTc4Mi0xNC4xNzE4NzQgOC4xNTYyNS0yNy44MTY0MDYgMjYuNTM1MTU2LTE4LjM5MDYyNSAyNC43NzczNDQtMjcuNzEwOTM3IDU1LjczMDQ2OS0yNy43MTA5MzcgOTItLjAwMzkwNyA0LjMyNDIxOS0zLjUxMTcxOSA3LjgzNTkzOC03LjgzOTg0NCA3LjgzNTkzOHptMCAwIi8+PHBhdGggZD0ibTExLjcyMjY1NiAxMjIuNzg5MDYyYy00LjMyODEyNSAwLTcuODM1OTM3LTMuNTA3ODEyLTcuODM1OTM3LTcuODM1OTM3IDAtNTkgMzYuNTU0Njg3LTgyLjk0MTQwNiAzOC4xMDkzNzUtODMuOTI5Njg3IDMuNjUyMzQ0LTIuMzI0MjE5IDguNDk2MDk0LTEuMjQ2MDk0IDEwLjgyMDMxMiAyLjQwMjM0MyAyLjMxNjQwNiAzLjY0MDYyNSAxLjI1MzkwNiA4LjQ2ODc1LTIuMzc1IDEwLjc5Njg3NS0xLjMwMDc4MS44NTE1NjMtMzAuODgyODEyIDIwLjc0NjA5NC0zMC44ODI4MTIgNzAuNzMwNDY5IDAgNC4zMjgxMjUtMy41MDc4MTMgNy44MzU5MzctNy44MzU5MzggNy44MzU5Mzd6bTAgMCIvPjwvZz48L3N2Zz4K" style="
    width: 3rem;
"><mark class="pink tada" style="display:none" id="notifycount"></mark></span>
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
						console.log(JSON.stringify(data).length);
//						$("#QQ").html("餘額:"+"$"+data[1]);
					if(JSON.stringify(data).length == '2'){
//							alert("a");
						$("#QQ").html("餘額:"+"$"+0);
					} else{
						$("#QQ").html("餘額:"+"$"+data[1]);
					}
					}

				});

			}, 1000); 

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
