<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>

<body>
	<jsp:include page="/WEB-INF/jsp/fragment/main-sidebar.jsp"></jsp:include>
	<article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container" style="display:none">
			<form action="/friend/list/add" method="POST" id="friendaddform">
		<input type="text" id="friendlistmemberid" name= "friendlistmemberid" value="${sessionScope.member.memberNum}"> <br> <input
					type="text" id="friendlistfriendid" name="friendlistfriendid"> 
					<input type="button" value="submit" id="addfriend_hide_button" >
			</form>
		</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container">
		<div class="container h-100">
			<h1 class="d-flex justify-content-center">我的好友</h1>
			<hr>
			<div class="row" id="myfriendis">
					<div class="col-md-">
					<div class="well well-sm">
						<div class="media">
							<a class="thumbnail pull-left" href="#"> <img
								class="media-object"
								src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D">
							</a>
							<div class="media-body">
								<h4 class="media-heading">John Doe</h4>
								<p>
									<a href="#" class="btn btn-primary"><span
										class="glyphicon glyphicon-comment"></span> Message</a> <a
										href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-heart"></span> Favorite</a> <a href="#"
										class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				
	</div>
			</div>
		</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="container">
			<div class="container h-100">
			<h1 class="d-flex justify-content-center">搜尋會員</h1>
				<div class="d-flex justify-content-center h-100">
				
					<div class="searchbar">
						<input class="search_input" type="text" name="findmemberid"
							placeholder="Search..."> <a class="search_icon"><i
							class="fas fa-search"></i></a>
					</div>
				</div>
			</div>
			<hr>
			<!--  
			<div class="row">
				<div class="col-md-4">
					<div class="well well-sm">
						<div class="media">
							<a class="thumbnail pull-left" href="#"> <img
								class="media-object"
								src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D">
							</a>
							<div class="media-body">
								<h4 class="media-heading">John Doe</h4>
								<p>
									<a href="#" class="btn btn-primary"><span
										class="glyphicon glyphicon-comment"></span> Message</a> <a
										href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-heart"></span> Favorite</a> <a href="#"
										class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well well-sm">
						<div class="media">
							<a class="thumbnail pull-left" href="#"> <img
								class="media-object" src="http://placehold.it/80">
							</a>
							<div class="media-body">
								<h4 class="media-heading">John Doe</h4>
								<p>
									<span class="label label-info">10 photos</span> <span
										class="label label-primary">89 followers</span>
								</p>
								<p>
									<a href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-comment"></span> Message</a> <a
										href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-heart"></span> Favorite</a> <a href="#"
										class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well well-sm">
						<div class="media">
							<a class="thumbnail pull-left" href="#"> <img
								class="media-object" src="http://placehold.it/80">
							</a>
							<div class="media-body">
								<h4 class="media-heading">John Doe</h4>
								<p>
									<span class="label label-info">Tel: </span> <span
										class="label label-primary">89 followers</span><br> <span
										class="label label-info">Email: </span> <span
										class="label label-primary">89 followers</span>
								</p>
								<p>
									<a href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-comment"></span> Message</a> <a
										href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-heart"></span> Favorite</a> <a href="#"
										class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			-->
		</div>
		<div class="container">
			<div class="row" id="friend_search_result"></div>
		</div>

		<!-- WRITE YOUR CONTEXT HERE -->
		This is Friend Index
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
	</article>
	<jsp:include page="/WEB-INF/jsp/fragment/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/fragment/chat-room.jsp"></jsp:include>
</body>
<script>


$(".search_icon").click(function(){
	var text = "";
	$.ajax({
		url : "/admin/memberBeans/findfriend?findmemberid="+$(".search_input").val(),
		type : "GET",
		success : function(Jdata) {
//				console.log(Jdata);
			var NumOfJData = Jdata.length;
			for (var i = 0; i < NumOfJData; i++) {
				if (Jdata[i]["memberNum"] == '${sessionScope.member.memberNum}'){
					continue;
				}
				text += "<div class=\"col-md-4\">";
					text +=	"<div class=\"well well-sm\">";
					text += "  <div class=\"media\">";
					text +=    "  <a class=\"thumbnail pull-left\" href=\"#\">";
					text +=       "   <img class=\"media-object\" src=\"<c:url value='/admin/memberBeans/getPicture/"+Jdata[i]["memberNum"]+"' />\">";
					text +=    " </a>";
					text +=    "  <div class=\"media-body\">";
					text +=       "   <h4 class=\"media-heading\">"+Jdata[i]["memberId"] +"</h4>";
					text +=        "  <p><span class=\"label label-info\">VipLevel : </span> <span class=\"label label-primary\">"+Jdata[i]["memberViplevel"]+"</span><br>";
					text +=  	"	<span class=\"label label-info\">Email: </span> <span class=\"label label-primary\">"+Jdata[i]["memberEmail"]+"</span></p>";
					text +=      "     <p>";
					text +=       " <a  onclick=\"addfunction("+Jdata[i]["memberNum"]+")\" class=\"btn btn-xs btn-default btn-primary btn-block\"><span ></span> 加入好友</a>";
//		                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
//		                            <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
	           	 text +=        "    </p>";
	            text +=      "   </div>";
	            text +=     " </div>";
	            text +=   "  </div>";
	            text += "  </div>";
//					text += "<p>"+Jdata[i]["memberId"] + Jdata[i]["memberViplevel"] + Jdata[i]["memberEmail"] + "</p>";
			}
			$("#friend_search_result").html(text);
		}
	});
});
function addfunction(num){
	$("#friendlistfriendid").val(num);
	console.log($("#friendaddform").serialize());
	$.ajax({
		url : "/friend/list/add?"+$("#friendaddform").serialize(),
		type: "GET"
	})
	confirm("已加入好友");
	location.reload();
	
};
$(document).ready(function(){
	var myfriend =""; 
	$.ajax({
		url : "/friend/list/findmyfriend?memberid="+'${sessionScope.member.memberNum}',
		type : "GET",
		success : function(Jdata) {
			var NumOfJData = Jdata.length;
			for (var i = 0; i < NumOfJData; i++) {
			myfriend += "<div class=\"col-md-4\">";
			myfriend +=	"<div class=\"well well-sm\">";
			myfriend += "  <div class=\"media\">";
			myfriend +=    "  <a class=\"thumbnail pull-left\" href=\"#\">";
			myfriend +=       "   <img class=\"media-object\" src=\"http://placehold.it/80\">";
			myfriend +=    " </a>";
			myfriend +=    "  <div class=\"media-body\">";
			myfriend +=       "   <h4 class=\"media-heading\">"+Jdata[i][1] +"</h4>";
			myfriend +=        "  <p><span class=\"label label-info\">VipLevel : </span> <span class=\"label label-primary\">"+Jdata[i][3]+"</span><br>";
			myfriend +=  	"	<span class=\"label label-info\">Email: </span> <span class=\"label label-primary\">"+Jdata[i][2]+"</span></p>";
			myfriend +=      "     <p>";
			myfriend +=       " <a onclick=\"talktofromclickbutton("+Jdata[i][0]+")\" class=\"btn btn-xs btn-default btn-success btn-block\"><span class=\"glyphicon glyphicon-comment\"></span>傳訊息</a>";
//                         <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
//                         <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-ban-circle"></span> Unfollow</a>
       	 myfriend +=        "    </p>";
       	myfriend +=      "   </div>";
       	myfriend +=     " </div>";
       	myfriend +=   "  </div>";
       	myfriend += "  </div>";
			}
			$("#myfriendis").html(myfriend);
		}
	});
});
// function talktofromclickbutton(id){
// 	var sender = '${sessionScope.member.memberNum}';
// 	var receiver = id;
// 	opencontact(sender,receiver);
// }
</script>
<style>
.media-object{
width: 80px;
border-radius: 50px;
height: 80px;
margin-right: 15px;
}
.searchbar {
	margin-bottom: auto;
	margin-top: auto;
	height: 60px;
	background-color: #353b48;
	border-radius: 30px;
	padding: 10px;
}

.search_input {
	color: white;
	border: 0;
	outline: 0;
	background: none;
	width: 0;
	caret-color: transparent;
	line-height: 40px;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_input {
	padding: 0 10px;
	width: 450px;
	caret-color: red;
	transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
	background: white;
	color: #e74c3c;
}

.search_icon {
	height: 40px;
	width: 40px;
	float: right;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	color: white;
}
</style>
</html>
