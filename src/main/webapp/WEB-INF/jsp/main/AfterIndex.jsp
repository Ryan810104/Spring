<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="/resources/css/odometer.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/resources/js/odometer.js"></script>
<style>
.button {
  display: inline-block;
  padding: 3px 5px;
  font-size: 5px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #AAAAAA;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  transition-duration: 0.4s;
}

.button:hover {background-color: #888888}

.button:active {
  background-color: #666666;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.button1 {
  display: inline-block;
  padding: 3px 5px;
  font-size: 5px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #C63300;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  transition-duration: 0.4s;
}

.button1:hover {background-color: #A42D00}

.button1:active {
  background-color: #FF0000;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body>

	<c:choose>
		<c:when test="${insertComplaint==1}">
			<script>
				alert("投訴成功");
			</script>
		</c:when>
	</c:choose>
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
			<div class="row">
			<div class="col-sm-6">
				<div class="my-3 p-3 bg-white rounded shadow-sm">
					<h6 class="border-bottom border-gray pb-2 mb-0">News</h6>
					<div class="media text-muted pt-3">
						<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
							<strong class="d-block text-danger">公告</strong> 系統將於 <strong
								class="text-danger">2019-05-30 09:00 ~ 12:00</strong>進行維護，如有不便請見諒。
						</p>
					</div>
					<div class="media text-muted pt-3">
						<p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
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
			<div class="col-sm-6 my-3">
			<a class="weatherwidget-io" href="https://forecast7.com/zh-tw/25d03121d57/taipei/" data-label_1="TAIPEI" data-label_2="WEATHER" data-font="Noto Sans TC" data-icons="Climacons Animated" data-days="3" data-theme="marine" style="display: block; position: relative; height: 123px; padding: 0px; overflow: hidden; text-align: left; text-indent: -299rem;">TAIPEI WEATHER<iframe id="weatherwidget-io-0" class="weatherwidget-io-frame" scrolling="no" frameborder="0" width="100%" src="https://weatherwidget.io/w/" style="display: block; position: absolute; top: 0px; height: 123px;"></iframe></a>
			<div class="col-sm-6 my-3" style="margin:auto;">
			
			<div style="background-color: #dce54f; text-align: center; border-radius: 3rem;">
			<h4 class="m-2" style="padding-top: 2rem; color: black;">百 家 樂 超 級 彩 金</h4>
			<div class="odometer" style="padding:2rem"></div>
			<br>
			<button type="button"
						class="btn btn-outline-success m-4">中獎名單</button>
			</div>
			
			</div>
			</div>
			</div>
			</div>
			<div class="container">

			</div>

			<form name="CMBtextarea">
				<div class="container">
					<div class="col-sm-10" style="margin: 0 auto;">
						<div class="panel panel-white post panel-shadow">
							<div class="post-heading">
								<div class="pull-left image">
									<img
										src="/admin/memberBeans/getServerPicture/${sessionScope.member.memberNum}"
										class="img-circle avatar" alt="user profile image">
								</div>
								<div class="pull-left meta">
									<div id="putdisplaynone">
										<input type="text" id="CustomermessageboardMemberid"
											name="CustomermessageboardMemberid" placeholder="此欄為隱藏抓取ID格"
											style="display: none" value="${sessionScope.member.memberId}" />
										<input type="text" id="CustomermessageboardMemberNum"
											name="CustomermessageboardMemberNum" placeholder="此欄為隱藏抓取num格"
											style="display: none" value="${sessionScope.member.memberNum}" />
										<input type="text" id="customermessageboardArticleFloor"
											name="customermessageboardArticleFloor" style="display: none">
										<input type="text" id="articlefloor" style="display: none" value="1">
										<!--隱藏搜尋樓數位置 -->
										<input type="text" id="searchstart" style="display: none" >
										<input type="text" id="searchend" style="display: none" >
										<textarea class="form-control" cols="95" rows="1"
											placeholder="標題..." name="customermessageboardTitle"
											id="CustomermessageboardTitle"></textarea>
									</div>
									<div>
										<textarea class="form-control" cols="95" rows="3"
											placeholder="輸入你想要寫的內容..." name="CustomermessageboardMessage"
											id="CustomermessageboardMessage"></textarea>

									</div>
									<!--<h6 class="text-muted time">1 minute ago</h6> -->

								</div>
								<span class="input-group-addon"><input type="button"
									class="btn btn-success btn-lg" value="送出"
									id="messageboardsubmit"> </span>
							</div>
							<div class="post-description"></div>
						</div>
					</div>
				</div>
			</form>
			<input type="text" id="customermessageboardResponseFloor" style="display: none">
<!-- 			<br> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="col-sm-10" style="margin: 0 auto;"> -->
<!-- 					<div class="panel panel-white post panel-shadow"> -->
<!-- 						<div class="post-heading"> -->
<!-- 							<div class="pull-left image"> -->
<!-- 								<img -->
<!-- 									src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D" -->
<!-- 									class="img-circle avatar" alt="user profile image"> -->
<!-- 							</div> -->
<!-- 							<div class="pull-left meta"> -->
<!-- 								<div class="title h2"> -->
<!-- 									<a href="#"><b>Ryan Haywood</b></a> made a post. -->
<!-- 								</div> -->
<!-- 																<h6 class="text-muted time">1 minute ago</h6> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="post-description" > -->
<!-- 							<p>Bootdey is a gallery of free snippets resources templates -->
<!-- 								and utilities for bootstrap css hmtl js framework. Codes for -->
<!-- 								developers and web designers</p> -->
<!-- 							<div class="stats"> -->
<!-- 								<a href="#" class="btn btn-default stat-item"> <i -->
<!-- 									class="fa fa-thumbs-up icon"></i>2 -->
<!-- 								</a> -->
<!-- 								<button><i class="fa fa-thumbs-up icon" style="font-size: 17px"></i><span style="font-size: 17px">2</span></button><span>&nbsp&nbsp&nbsp&nbsp</span> -->
<!-- 								<a href="#" class="btn btn-default stat-item" ><i class="fas fa-comment-dots" id="messageorder" ><span style="font-size: 15px" >&nbsp&nbsp留言</span></i></a> -->
<!-- 								<button><i class="fas fa-comment-dots" id="messageorder" style="font-size: 20px"><span style="font-size: 20px">&nbsp&nbsp留言</span></i></button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="post-footer" id="messageorder1"> -->
<!-- 							<div class="input-group" id="messageorder11" > -->
<!-- 								<input class="form-control" placeholder="Add a comment" -->
<!-- 									type="text" id="commentcontent"> <span class="input-group-addon" >  -->
<!-- 									<button id="comment"><i class="fa fa-edit"></i></button> -->
									
<!-- 								</span> -->
<!-- 							</div> -->
<!-- 							<div id="test"> -->
<!-- 							<ul class="comments-list" > -->
<!-- 								<li class="comment"><a class="pull-left" href="#"> <img -->
<!-- 										class="avatar" -->
<!-- 										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D" -->
<!-- 										alt="avatar"> -->
<!-- 								</a> -->
<!-- 									<div class="comment-body"> -->
<!-- 										<div class="comment-heading"> -->
<!-- 											<h4 class="user">Gavino Free</h4> -->

<!-- 										</div> -->
<!-- 										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p> -->
<!-- 									</div></li> -->
<!-- 							</ul> -->
<!-- 							<ul class="comments-list" > -->
<!-- 								<li class="comment"><a class="pull-left" href="#"> <img -->
<!-- 										class="avatar" -->
<!-- 										src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D" -->
<!-- 										alt="avatar"> -->
<!-- 								</a> -->
<!-- 									<div class="comment-body"> -->
<!-- 										<div class="comment-heading"> -->
<!-- 											<h4 class="user">Gavino Free</h4> -->

<!-- 										</div> -->
<!-- 										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p> -->
<!-- 									</div></li> -->
<!-- 							</ul> -->
<!-- 							<div class="post-footer" align="center"> -->
<!-- 							<button><i class="far fa-caret-square-down"></i>&nbsp;&nbsp;查看更多&nbsp;&nbsp;<i class="far fa-caret-square-down"></i></button> -->
<!-- 							</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<br>
			<div style="" align="center">
			<input type="radio" name="gender" value="name" id="radioname" checked="true"><label for="radioname">UserID</label>
			<input type="radio" name="gender" value="title" id="radiotitle"><label for="radiotitle">Title</label>
			<input type="radio" name="gender" value="content" id="radiocontent"><label for="radiocontent">Content</label> 
			<form action="/main/search" name="search">
			<input type="text" id="searchbyuserid" name="customermessageboardMemberid">
			<input type="text" id="searchbytitle" name="customermessageboardTitle">
			<input type="text" id="searchbycontent" name="customermessageboardMessage">
			<input type="button" value="查詢" id="searchbutton">
			</form>
			</div>
			<br>
			<!-- 			ajax 網頁啟動會填入留言區域的div -->
			<div id="messageboard"></div>
			<div class="post-footer" id="more" align="center"><button><i class="far fa-caret-square-down"></i>&nbsp;&nbsp;查看更多&nbsp;&nbsp;<i class="far fa-caret-square-down"></i></button></div>
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
<script>

	var checkfloor = 100 ;

	$('[name=gender]').change(function () {
    	var checked = $("input[name=gender]:checked").val() ;
    	if (checked == 'name'){
    		$("#searchbyuserid").css('display','block');
    		$("#searchbytitle").css('display','none');
    		$("#searchbycontent").css('display','none');
    	}else if (checked == 'title'){
    		$("#searchbyuserid").css('display','none');
    		$("#searchbytitle").css('display','block');
    		$("#searchbycontent").css('display','none');
    	}else if(checked == 'content'){
    		$("#searchbyuserid").css('display','none');
    		$("#searchbytitle").css('display','none');
    		$("#searchbycontent").css('display','block');
    	}
	})
	
	var floor = 3 ;

	$("#more").mousedown(function() {
		$("#searchstart").val(parseInt($("#searchstart").val())-3) ;
	  	$("#searchend").val(parseInt($("#searchend").val())-3) ;
	});
	
// 	$(window).scroll(function(){
//  	   last=$("body").height()-$(window).height()
//  	   if($(window).scrollTop()>=last){
//   	  		$("#searchstart").val(parseInt($("#searchstart").val())+3) ;
//   	  		$("#searchend").val(parseInt($("#searchend").val())+3) ;
//  	   }
// 	})
	var flag = 0 ;
	function checkpressornot(){	
		$.ajax({
			url : "/main/pressornot/",
			type : "POST",
			data : {
				memberid : $("#CustomermessageboardMemberid").val(),
				},
			success : function(res) {
				likelist = res.data ;
				sessionStorage.setItem("likelist",likelist);
			}
			})
		}

	
	$("#more").mouseup(function(){
		
		checkpressornot();
		var likelist = sessionStorage.getItem("likelist");
		
		$.ajax({url : "/main/searchcontinue/",
			type : "POST",
			data : {
				CustomermessageboardResponseFloor : $("#searchend").val(),
				CustomermessageboardArticleFloor : $("#searchstart").val(),
				},
				success : function(data) {
					var floor = 3 ;
					if( data == ""){
						alert("已無資料");
					}else{
					var txt = "";
					for (var i = 0 ; i < data.length; i++) {
					txt += "<div class=\"container\">";
					txt += "<div class=\"col-sm-10\" style=\"margin: 0 auto;\">";
					txt += "<div class=\"panel panel-white post panel-shadow\">";
					txt += "<div class=\"post-heading\">";
					txt += "<div class=\"pull-left image\">";
					txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
					txt += "<div class=\"pull-left meta\">";
					txt += "<div class=\"title h2\">";
					txt += "<a href=\"#\"><b>"
							+ data[i]["customermessageboardMemberid"]
							+ "</b></a>"
							+ data[i]["customermessageboardTitle"]
							+ "</div></div></div>";
					txt += "<div class=\"post-description\">";
					txt += "<p>"
							+ data[i]["customermessageboardMessage"]
							+ "</p>";
					txt += "<div class=\"stats\">";
					
					var flag = 0 ;
					
					checkfloor = data[i]["customermessageboardArticleFloor"];
					for(var j =0 ; j<likelist.length ; j++){
						if (likelist[j] == checkfloor){
							flag = 1 ;
							break;
						}else{
							flag = 0;
						}
					}		
					if(flag == 1){
						txt += "<span><i class=\"fas fa-heart\" id=\"like"+parseInt(i+floor)+"\" style=\"font-size: 20px ; color: red\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}else{
						txt += "<span><i class=\"far fa-heart\" id=\"like"+parseInt(i+floor)+"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}
					
					txt += "<script>"
					txt += "$(\"#like"+parseInt(i+floor)+"\").click(function(){"
					txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
					txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 20px ; color : black \");"
					txt +=	"}else{"
					txt +=	"this.setAttribute(\"class\", \"fas fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 20px ; color : red \");}"
					txt += "$.ajax({url : \"/main/pressnice/\","
					txt += "type : \"POST\","
					txt += "data : {Articlefloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val() , Memberid : $(\"#CustomermessageboardMemberid\").val(),},"
					txt += "success : function(data) {checkpressornot();}})"
					txt +=  "})<\/script>"
						
						
					// 留言button id = floor + i  ex:floor0, floor1
					txt += "<span><button class=\"button\"><i class=\"fas fa-comment-dots\" id=\"floor"+ parseInt(i+floor) +"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\">&nbsp&nbsp留言</span></i></button></span>";
					txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+parseInt(i+floor)+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span></div></div>";
					//留言區域 id = floor + i + 1  ex: floor01 , floor11
					txt += "<div class=\"post-footer\" id=\"floor"+parseInt(i+floor)+"1\"  style=\"display: none\">";
					txt += "<div class=\"input-group\">";
					// 輸入留言區域給予id = leavecontentarea +i
					txt += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" id=\"leavecontentarea"+parseInt(i+floor)+"\">";
					// 放置ajax抓取該articlefloor最大樓數+1的位置  id= customermessageboardResponseFloor + i 
					txt += "<input type=\"text\" id=\"customermessageboardResponseFloor"+parseInt(i+floor)+"\" style=\"display: none\">"
					// 送出留言button  id=articlefloor+i 
					txt += "<form id=\"report"+parseInt(i+floor)+"2\" name=\"report\" action=\"/main/report\">"
					txt += "<input type=\"text\" name=\"customermessageboardNum\" style=\"display: none\" value=\""+data[i]["customermessageboardNum"]+"\">"
					txt += "<input type=\"text\" name=\"customermessageboardMemberid\" style=\"display: none\" value=\""+data[i]["customermessageboardMemberid"]+"\">"
					txt += "<span class=\"input-group-addon\"><button id=\"articlefloor"+parseInt(i+floor)+"\" ><i class=\"fa fa-edit\"></i></button>"
					// id=articlefloor+i+1    放置該樓層的真實articlefloor
					txt += "<input type=\"text\" id=\"articlefloor"+parseInt(i+floor)+"1\" style=\"display: none\" value=\""+data[i]["customermessageboardArticleFloor"]+"\"></span></form></div>"
					txt += "<div id=\"floor"+parseInt(i+floor)+"11\"></div>"
					txt += "</div></div></div></div></div><br>";
					//  隱藏留言  
					txt += "<script>"
					txt += "$(\"#floor"+parseInt(i+floor)+"\").click(function(){$(\"#\"+this.id+\"1\").toggle(300);})"
					txt += "<\/script>"
					txt += "<script>"																																																																																																																																
					//寫入aftercomment傳出留言之後自動搜尋留言寫出																																																																																																																																					
					txt += "function aftercomment"+parseInt(i+floor)+"(){var txt1 = \"\" ;$(\"#floor"+parseInt(i+floor)+"11\").empty();$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val() },success : function(data) {for (var k = 0; k < data.length; k++) {txt1 += \"<ul class=\\\"comments-list\\\" >\";txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"#\\\"> <img class=\\\"avatar\\\" src=\\\"/admin/memberBeans/getServerPicture/\"+data[k][\"customermessageboardMemberNum\"]+\"\\\" alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\"><h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[k][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[k][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+parseInt(i+floor)+"11\").html(txt1);}})}"
				//  取出articlefloor 並放置該article的最大樓數+1
					txt += "$(\"#articlefloor"+parseInt(i+floor)+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+parseInt(i+floor)+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
					txt += "<\/script>"
					//  送出留言 抓取articlefloor&responsefloor +1後送出
					txt += "<script>"
					txt += "$(\"#articlefloor"+parseInt(i+floor)+"\").mouseup(function() {$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+parseInt(i+floor)+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+parseInt(i+floor)+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+parseInt(i+floor)+"\").val('');aftercomment"+parseInt(i+floor)+"();}})});"
					txt += "<\/script>"	
						// 按下留言按鈕搜尋該articlefloor的留言並寫入
					txt += "<script>"																																																																																																																																				
					txt += "$(\"#floor"+parseInt(i+floor)+"\").mousedown(function(){aftercomment"+parseInt(i+floor)+"()})"
					txt += "<\/script>"	
					
				}
					txt += "<script>"
					txt += "$(\".button1\").click(function(){document.getElementById(this.id+\"2\").submit();})"
					txt += "<\/script>"	
					floor = floor + 3 ;
					$("#messageboard").append(txt);
// 					report();
					}

				}
				})
				
			});
	
	$("#messageorder").click(function(){
		$("#"+this.id+"1").toggle(1000);
// 		alert($("floor11").html());
		aftercomment();
	})
	
// 	function aftercomment(){var txt1 = \"\" ;$(\"#floor"+i+"11\").empty();$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val() },success : function(data) {for (var i = 0; i < data.length; i++) {txt1 += \"<ul class=\\\"comments-list\\\" >\";txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"#\\\"> <img class=\\\"avatar\\\" src=\\\"http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D\\\" alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\"><h4 class=\\\"user\\\">\"+data[i][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>\"+data[i][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+i+"11\").html(txt1);}})}
		
// 	$("#comment").mousedown(function(){
// 		$.ajax({
// 			url : "/main/searchthelastofcomment/",
// 			type : "POST",
// 			data : { CustomermessageboardArticleFloor : $("#articlefloor").val()},
// 			success : function(data) {
// 				$("#customermessageboardResponseFloor").val(data[0]["customermessageboardResponseFloor"] + 1);
// 			}
// 		})
// 	})
	
// 	$("#comment").mouseup(function() {
// 				$.ajax({
// 					url : "/main/public/",
// 					type : "POST",
// 					data : {
// 						CustomermessageboardMessage : $(
// 								"#commentcontent").val(),
// 						CustomermessageboardResponseFloor : $(
// 								"#customermessageboardResponseFloor").val(),
// 						CustomermessageboardArticleFloor : $(
// 									"#articlefloor").val(),
// 						CustomermessageboardMemberid : $(
// 								"#CustomermessageboardMemberid").val(),
// 						CustomermessageboardStatus : 1,
// 					},
// 					success : function() {
// 						$("#customermessageboardResponseFloor").val('');
// 						alert("已傳送成功");
// 					}
// 				})
// 			});

	$("#messageboardsubmit").mousedown(function() {
						$.ajax({
							url : "/main/searchthelastofmessage/",
							type : "POST",
							success : function(data) {
							$("#customermessageboardArticleFloor").val(data[0]["customermessageboardArticleFloor"] + 1);
								}
								})
					});
	$("#messageboardsubmit").mouseup(function() {
				$.ajax({
					url : "/main/public/",
					type : "POST",
					data : {
						CustomermessageboardTitle : $(
								"#CustomermessageboardTitle").val(),
						CustomermessageboardMessage : $(
								"#CustomermessageboardMessage").val(),
						CustomermessageboardArticleFloor : $(
								"#customermessageboardArticleFloor").val(),
						CustomermessageboardMemberid : $(
								"#CustomermessageboardMemberid").val(),
						CustomermessageboardStatus : 1,
						CustomermessageboardMemberNum : $(
						"#CustomermessageboardMemberNum").val(),
					},
					success : function() {
						$("#CustomermessageboardTitle").val('');
						$("#CustomermessageboardMessage").val('');
// 						location.reload();
					},
					error: function(){
						$("#CustomermessageboardTitle").val('');
						$("#CustomermessageboardMessage").val('');
						location.reload();
		        }
				})
			});

	$(document).ready(function() {
		
		checkpressornot();
		var likelist = sessionStorage.getItem("likelist");
		
			$.ajax({
				url : "/main/searchall/",
				type : "POST",
				success : function(data) {
					var txt = "";
					var result = new Array() ;	
					for (var i = 0 ; i < data.length; i++) {
					txt += "<div class=\"container\">";
					txt += "<div class=\"col-sm-10\" style=\"margin: 0 auto;\">";
					txt += "<div class=\"panel panel-white post panel-shadow\">";
					txt += "<div class=\"post-heading\">";
					txt += "<div class=\"pull-left image\">";
					txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
					txt += "<div class=\"pull-left meta\">";
					txt += "<div class=\"title h2\">";
					txt += "<a href=\"#\"><b>"
							+ data[i]["customermessageboardMemberid"]
							+ "</b></a> "
							+ data[i]["customermessageboardTitle"]
							+ "</div></div></div>";
					txt += "<div class=\"post-description\">";
					txt += "<p>"
							+ data[i]["customermessageboardMessage"]
							+ "</p>";
					txt += "<div class=\"stats\">";
					
					checkfloor = data[i]["customermessageboardArticleFloor"];
					var flag = 0 ;
					
					for(var j =0 ; j < likelist.length ; j++){
						if (likelist[j] == checkfloor){
							flag = 1 ;
							break;
						}else{
							flag = 0;
						}
					}		
					if(flag == 1){
						txt += "<span><i class=\"fas fa-heart\" id=\"like"+i+"\" style=\"font-size: 30px ; color: red\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}else{
						txt += "<span><i class=\"far fa-heart\" id=\"like"+i+"\" style=\"font-size: 30px\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}
					
					txt += "<script>"
					txt += "$(\"#like"+i+"\").click(function(){"
					txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
					txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : black \");"
					txt +=	"}else{"
					txt +=	"this.setAttribute(\"class\", \"fas fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : red \");}"
					txt += "$.ajax({url : \"/main/pressnice/\","
					txt += "type : \"POST\","
					txt += "data : {Articlefloor : $(\"#articlefloor"+i+"1\").val() , Memberid : $(\"#CustomermessageboardMemberid\").val(),},"
					txt += "success : function(data) {checkpressornot();}})"
					txt +=  "})<\/script>"
						
					// 留言button id = floor + i  ex:floor0, floor1
					
					
					txt += "<span><button class=\"button\"><i class=\"fas fa-comment-dots\" id=\"floor"+i+"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\">&nbsp&nbsp留言</span></i></button></span>";
					// 檢舉button id = floor + i + 2 ex:floor02 , floor12
					txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+i+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span></div></div>";
					//留言區域 id = floor + i + 1  ex: floor01 , floor11
					txt += "<div class=\"post-footer\" id=\"floor"+i+"1\"  style=\"display: none\">";
					txt += "<div class=\"input-group\">";
					// 輸入留言區域給予id = leavecontentarea +i
					txt += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" id=\"leavecontentarea"+i+"\">";
					// 放置ajax抓取該articlefloor最大樓數+1的位置  id= customermessageboardResponseFloor + i 
					txt += "<input type=\"text\" id=\"customermessageboardResponseFloor"+i+"\" style=\"display: none\">"
					// 送出留言button  id=articlefloor+i  
					txt += "<form id=\"report"+i+"2\" name=\"report\" action=\"/main/report\">"
					txt += "<input type=\"text\" name=\"customermessageboardNum\" style=\"display: none\" value=\""+data[i]["customermessageboardNum"]+"\">"
					txt += "<input type=\"text\" name=\"customermessageboardMemberid\" style=\"display: none\" value=\""+data[i]["customermessageboardMemberid"]+"\">"
					txt += "<span class=\"input-group-addon\"><button type=\"button\" id=\"articlefloor"+i+"\"><i class=\"fa fa-edit\"></i></button>"
					// id=articlefloor+i+1    放置該樓層的真實articlefloor
					txt += "<input name=\"customermessageboardArticleFloor\" type=\"text\" id=\"articlefloor"+i+"1\" style=\"display: none\" value=\""+data[i]["customermessageboardArticleFloor"]+"\"></span></form></div>"									
					txt += "<div id=\"floor"+i+"11\"></div>"
					txt += "</div></div></div></div></div><br>";
					//  隱藏留言  
					txt += "<script>"
					txt += "$(\"#floor"+i+"\").click(function(){$(\"#\"+this.id+\"1\").toggle(300);})"
					txt += "<\/script>"
					txt += "<script>"																																																																																																																	
					//寫入aftercomment傳出留言之後自動搜尋留言寫出																																																																																																														
					txt += "function aftercomment"+i+"(){var txt1 = \"\" ;$(\"#floor"+i+"11\").empty();"
					txt += "$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { "
					txt += "CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val() },"
					txt += "success : function(data) {"				
					txt += "for (var i = 0; i < data.length; i++) { "
					txt += "txt1 += \"<ul class=\\\"comments-list\\\" >\";"
					txt += "txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"#\\\"> "
					txt += "<img class=\\\"avatar\\\" src=\\\""
					txt += "/admin/memberBeans/getServerPicture/\"+data[i][\"customermessageboardMemberNum\"]+\"\\\" "
					txt += "alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\">"
					txt += "<h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[i][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[i][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+i+"11\").html(txt1)}})}"
				//  取出articlefloor 並放置該article的最大樓數+1
					txt += "$(\"#articlefloor"+i+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+i+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
					txt += "<\/script>"
					//  送出留言 抓取articlefloor&responsefloor +1後送出
					txt += "<script>"
					txt += "$(\"#articlefloor"+i+"\").mouseup(function() {$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+i+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+i+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+i+"\").val('');aftercomment"+i+"();}})});"
					
					txt += "<\/script>"	
						// 按下留言按鈕搜尋該articlefloor的留言並寫入
					txt += "<script>"
					txt += "$(\"#floor"+i+"\").mousedown(function(){aftercomment"+i+"()})"
					txt += "<\/script>"	
				}
					txt += "<script>"
					txt += "function report(){$(\".button1\").click(function(){document.getElementById(this.id+\"2\").submit();})}"
					txt += "<\/script>"	
					$("#messageboard").html(txt);
					var i = data[0]["customermessageboardArticleFloor"] ;
					$("#searchstart").val(i-2);
					$("#searchend").val(i);
					report();
					$('[name=gender]').change();
			}
		})
		
		function report(){
		$(".button1").click(function(){
			document.getElementById(this.id+"2").submit();
		})
			}
			
		$("#searchbutton").click(function(){
				$.ajax({
					url : "/main/query/",
					type : "POST",
					data : {
						CustomermessageboardTitle : $("#searchbytitle").val(),
						CustomermessageboardMessage : $("#searchbycontent").val(),
						CustomermessageboardMemberid : $("#searchbyuserid").val(),	
					},
					success : function(data) {
						var txt = "";
						var result = new Array() ;	
						for (var i = 0 ; i < data.length; i++) {
						txt += "<div class=\"container\">";
						txt += "<div class=\"col-sm-10\" style=\"margin: 0 auto;\">";
						txt += "<div class=\"panel panel-white post panel-shadow\">";
						txt += "<div class=\"post-heading\">";
						txt += "<div class=\"pull-left image\">";
						txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
						txt += "<div class=\"pull-left meta\">";
						txt += "<div class=\"title h2\">";
						txt += "<a href=\"#\"><b>"
								+ data[i]["customermessageboardMemberid"]
								+ "</b></a> "
								+ data[i]["customermessageboardTitle"]
								+ "</div></div></div>";
						txt += "<div class=\"post-description\">";
						txt += "<p>"
								+ data[i]["customermessageboardMessage"]
								+ "</p>";
						txt += "<div class=\"stats\">";
						// 留言button id = floor + i  ex:floor0, floor1
						txt += "<span><i class=\"far fa-heart\" id=\"like"+i+"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
						txt += "<span><button class=\"button\"><i class=\"fas fa-comment-dots\" id=\"floor"+i+"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\">&nbsp&nbsp留言</span></i></button></span>";
						// 檢舉button id = floor + i + 2 ex:floor02 , floor12
						txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+i+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span></div></div>";
						//留言區域 id = floor + i + 1  ex: floor01 , floor11
						txt += "<div class=\"post-footer\" id=\"floor"+i+"1\"  style=\"display: none\">";
						txt += "<div class=\"input-group\">";
						// 輸入留言區域給予id = leavecontentarea +i
						txt += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" id=\"leavecontentarea"+i+"\">";
						// 放置ajax抓取該articlefloor最大樓數+1的位置  id= customermessageboardResponseFloor + i 
						txt += "<input type=\"text\" id=\"customermessageboardResponseFloor"+i+"\" style=\"display: none\">"
						// 送出留言button  id=articlefloor+i  
						txt += "<form id=\"report"+i+"2\" name=\"report\" action=\"/main/report\">"
						txt += "<input type=\"text\" name=\"customermessageboardNum\" style=\"display: none\" value=\""+data[i]["customermessageboardNum"]+"\">"
						txt += "<input type=\"text\" name=\"customermessageboardMemberid\" style=\"display: none\" value=\""+data[i]["customermessageboardMemberid"]+"\">"
						txt += "<span class=\"input-group-addon\"><button type=\"button\" id=\"articlefloor"+i+"\"><i class=\"fa fa-edit\"></i></button>"
						// id=articlefloor+i+1    放置該樓層的真實articlefloor
						txt += "<input name=\"customermessageboardArticleFloor\" type=\"text\" id=\"articlefloor"+i+"1\" style=\"display: none\" value=\""+data[i]["customermessageboardArticleFloor"]+"\"></span></form></div>"									
						txt += "<div id=\"floor"+i+"11\"></div>"
						txt += "</div></div></div></div></div><br>";
						//  隱藏留言  
						txt += "<script>"
						txt += "$(\"#floor"+i+"\").click(function(){$(\"#\"+this.id+\"1\").toggle(300);})"
						txt += "<\/script>"
						txt += "<script>"																																																																																																																	
						//寫入aftercomment傳出留言之後自動搜尋留言寫出																																																																																																														
						txt += "function aftercomment"+i+"(){var txt1 = \"\" ;$(\"#floor"+i+"11\").empty();"
						txt += "$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { "
						txt += "CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val() },"
						txt += "success : function(data) {"				
						txt += "for (var i = 0; i < data.length; i++) { "
						txt += "txt1 += \"<ul class=\\\"comments-list\\\" >\";"
						txt += "txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"#\\\"> "
						txt += "<img class=\\\"avatar\\\" src=\\\""
						txt += "/admin/memberBeans/getServerPicture/\"+data[i][\"customermessageboardMemberNum\"]+\"\\\" "
						txt += "alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\">"
						txt += "<h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[i][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[i][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+i+"11\").html(txt1)}})}"
					//  取出articlefloor 並放置該article的最大樓數+1
						txt += "$(\"#articlefloor"+i+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+i+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
						txt += "<\/script>"
						//  送出留言 抓取articlefloor&responsefloor +1後送出
						txt += "<script>"
						txt += "$(\"#articlefloor"+i+"\").mouseup(function() {$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+i+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+i+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+i+"\").val('');aftercomment"+i+"();}})});"
						
						txt += "<\/script>"	
							// 按下留言按鈕搜尋該articlefloor的留言並寫入
						txt += "<script>"
						txt += "$(\"#floor"+i+"\").mousedown(function(){aftercomment"+i+"()})"
						txt += "<\/script>"					
					}
						$("#messageboard").empty();
						$("#messageboard").html(txt);
						$('[name=gender]').change();
						report();
					}
			})
		})
	var a = 0;
if (!sessionStorage.getItem("count")){
	a = 15000;
	$(".odometer").html(a);
} else if (sessionStorage.getItem("count")){
	a = parseInt(sessionStorage.getItem("count"));
	$(".odometer").html(a);
}

setInterval(function(){
	a +=  Math.floor(Math.random()*5) +1;
	sessionStorage.setItem("count",a);
	$(".odometer").html(a);
				},3500);		
});
</script>
<script>

!function(d,s,id){
	var js,fjs=d.getElementsByTagName(s)[0];
	if(!d.getElementById(id)){
		js=d.createElement(s);
		js.id=id;
		js.src='https://weatherwidget.io/js/widget.min.js';
		fjs.parentNode.insertBefore(js,fjs);
		}}(document,'script','weatherwidget-io-js');
</script>
</html>