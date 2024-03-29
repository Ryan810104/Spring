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
<link href="https://fonts.googleapis.com/css?family=ZCOOL+KuaiLe&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap" rel="stylesheet">
<style>

.container1 {
  max-width: 960px;
  margin: 0 auto;
  width: 100%;
/*   padding: 5rem 2rem; */
}
.container1 .field-input {
  text-align: center;
}
.container1 .field-input input {
  text-align: left;
  border-radius: 6rem;
  border: 1px solid #a0a0a0;
  padding: .6rem 2rem .6rem 1rem;
  width: 20rem;
  font-family: 'roboto';
  transition: .5s;
}
.container1 .field-input input:focus {
  outline: none;
  border-color: #212121;
  transition: .5s;
}
.container1 .field-input span:before {
  content: '';
  cursor: pointer;
  position: relative;
  font-family: 'fontawesome';
  top: 0;
  right: 3rem;
}

.button {
  display: inline-block;
  padding: 3px 5px;
  font-size: 5px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
    background-color: #5d7eda;
    border: none;
    border-radius: 15px;
    box-shadow: 0 5px #999;
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
  box-shadow: 0 5px #999;
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
	
	<c:choose>
		<c:when test="${insertCmbNum==1}">
			<script>
				alert("已有人投訴此文章");
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
							<img src="/resources/img/bg71701.png" class="d-block w-100"
								style="height: 28rem" alt="...">
							<div class="carousel-caption d-none d-md-block">

							</div>
						</div>
						<div class="carousel-item">
							<img src="/resources/img/bg71703.PNG" class="d-block w-100"
								style="height: 28rem" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/resources/img/bg71702.PNG" class="d-block w-100"
								style="height: 28rem" alt="...">
							<div class="carousel-caption d-none d-md-block">
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
			<div class="col-sm-6 my-3">
			<br>
			<br>
			<a class="weatherwidget-io" href="https://forecast7.com/zh-tw/25d03121d57/taipei/" data-label_1="TAIPEI" data-label_2="WEATHER" data-font="Noto Sans TC" data-icons="Climacons Animated" data-days="3" data-theme="marine" style="display: block; position: relative; height: 123px; padding: 0px; overflow: hidden; text-align: left; text-indent: -299rem;">TAIPEI WEATHER<iframe id="weatherwidget-io-0" class="weatherwidget-io-frame" scrolling="no" frameborder="0" width="100%" src="https://weatherwidget.io/w/" style="display: block; position: absolute; top: 0px; height: 123px;"></iframe></a>
			
			</div>
			<div class="col-sm-6 my-3">
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
								<div class="pull-left image" style="width: 20%">
									<img
										src="/admin/memberBeans/getServerPicture/${sessionScope.member.memberNum}"
										class="img-circle avatar" alt="user profile image"
										>
								</div>
								<div class="pull-left meta" style="width: 60%">
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
											id="CustomermessageboardTitle" maxlength="10"></textarea>
									</div>
									<div>
										<textarea class="form-control" cols="95" rows="2"
											placeholder="輸入你想要寫的內容..." name="CustomermessageboardMessage"
											id="CustomermessageboardMessage" maxlength="130"></textarea>
									</div>
									<!--<h6 class="text-muted time">1 minute ago</h6> -->	
								</div>
								<div class="pull-left meta" style="width: 15% ; padding-left: 5px" >
								<span class="input-group-addon"><input type="button"
									class="btn btn-success btn-lg" value="送出"
									id="messageboardsubmit"> </span>
								</div>	
								
							</div>
							<div class="post-description"></div>
						</div>
					</div>
				</div>
			</form>
			<input type="text" id="customermessageboardResponseFloor" style="display: none">
<!-- 			<br> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="col-sm-4" style="margin: 0 auto;"> -->
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
			<div style="font-family: 'ZCOOL KuaiLe' ;color: #000088" align="center"  >  依&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="gender" value="name" id="radioname" checked="true" ><label for="radioname" style="font-family: 'Permanent Marker' ; color: black">&nbsp;UserID</label>
			<input type="radio" name="gender" value="title" id="radiotitle"><label for="radiotitle" style="font-family: 'Permanent Marker' ; color: black">&nbsp;Title</label>
			<input type="radio" name="gender" value="content" id="radiocontent"><label for="radiocontent" style="font-family: 'Permanent Marker' ; color: black">&nbsp;Content</label> 
			&nbsp;&nbsp;找
			
			<div class="container1">
  			<div class="field-input">
  			<form action="/main/query" name="search">
   			 	<input type="text" id="searchbyuserid" name="customermessageboardMemberid" placeholder="UserID">
				<input type="text" id="searchbytitle" name="customermessageboardTitle" placeholder="含有......字元">
				<input type="text" id="searchbycontent" name="customermessageboardMessage" placeholder="含有......字元"><span id="searchbutton"> </span>
 			 </form>
 			 </div>
			</div>
<!-- 			<input type="button" value="查詢" id="searchbutton" style="width: 200px"> -->
			
			</div>
			<br>
			<!-- 			ajax 網頁啟動會填入留言區域的div -->
			<div id="messageboard"></div>
<!-- 			<div class="post-footer" id="more" align="center"><button><i class="far fa-caret-square-down"></i>&nbsp;&nbsp;查看更多&nbsp;&nbsp;<i class="far fa-caret-square-down"></i></button></div> -->
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
    		$("#searchbyuserid").css('display','inline');
    		$("#searchbytitle").css('display','none');
    		$("#searchbytitle").val("");
    		$("#searchbycontent").css('display','none');
    		$("#searchbycontent").val("");
    	}else if (checked == 'title'){
    		$("#searchbyuserid").css('display','none');
    		$("#searchbyuserid").val("");
    		$("#searchbytitle").css('display','inline');
    		$("#searchbycontent").css('display','none');
    		$("#searchbycontent").val("");
    	}else if(checked == 'content'){
    		$("#searchbyuserid").css('display','none');
    		$("#searchbyuserid").val("");
    		$("#searchbytitle").css('display','none');
    		$("#searchbytitle").val("");
    		$("#searchbycontent").css('display','inline');
    	}
	})
	
	var floor = 3 ;

// 	$("#more").mousedown(function() {
// 	  	$("#searchend").val(parseInt($("#searchend").val())-1) ;
// 	});
	
	function more(){
		$("#searchend").val(parseInt($("#searchend").val())-1) ;
		checkpressornot();
		var likelist = sessionStorage.getItem("likelist");
		var datalength = 0 ;
		$.ajax({url : "/main/searchcontinue/",
			type : "POST",
			data : {
				CustomermessageboardArticleFloor : $("#searchend").val(),
				},
				success : function(data) {
					var floor = 3 ;					
					if( data == ""){
// 						alert("已無資料");
					}else{
						datalength = data.length - 1 ;
					var txt = "<div class=\"row\">";
					for (var i = 0 ; i < data.length; i++) {
					txt += "<div class=\"col-sm-4\" style=\"margin: 0 auto;\">";
					txt += "<div class=\"panel panel-white post panel-shadow\">";
					txt += "<div class=\"post-heading\">";
					txt += "<div class=\"pull-left image\">";
					txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
					txt += "<div class=\"pull-left meta\">";
					txt += "<div class=\"title h2\">";
					txt += "<a href=\"/main/setting/"+data[i]["customermessageboardMemberNum"]+"\"><b>"
							+ data[i]["customermessageboardMemberid"]
							+ "</b></a>"
							+ "&nbsp&nbsp"+ data[i]["customermessageboardTitle"]
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
						txt += "<span><i class=\"fas fa-heart\" id=\"like"+parseInt(i+floor*times)+"\" style=\"font-size: 30px ; color: red\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}else{
						txt += "<span><i class=\"far fa-heart\" id=\"like"+parseInt(i+floor*times)+"\" style=\"font-size: 30px ; color: white;\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}
					
					txt += "<script>"
					txt += "$(\"#like"+parseInt(i+floor*times)+"\").click(function(){"
					txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
					txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : white \");"
					txt +=	"}else{"
					txt +=	"this.setAttribute(\"class\", \"fas fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : red \");}"
					txt += "$.ajax({url : \"/main/pressnice/\","
					txt += "type : \"POST\","
					txt += "data : {Articlefloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val() , Memberid : $(\"#CustomermessageboardMemberid\").val(),},"
					txt += "success : function(data) {checkpressornot();}})"
					txt +=  "})<\/script>"
						
						
					// 留言button id = floor + i  ex:floor0, floor1
					txt += "<span><button class=\"button\"><i class=\"fas fa-comment-dots\" id=\"floor"+ parseInt(i+floor*times) +"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\">&nbsp&nbsp留言</span></i></button></span>";
					txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+parseInt(i+floor*times)+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span>"
					
					if( (data[i]["customermessageboardMemberid"]) == $("#CustomermessageboardMemberid").val() ){
						txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal"+parseInt(i+floor*times)+"\" id=\"update"+parseInt(i+floor*times)+"\" ><i class=\"fas fa-edit\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp修改</span></i></button></span>";
						
						txt += "<div class=\"modal fade\" id=\"exampleModal"+parseInt(i+floor*times)+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
						txt += "<div class=\"modal-dialog\" role=\"document\">";
						txt += "<div class=\"modal-content\">";
						txt += "<div class=\"modal-header\">";
						txt += "<h2 class=\"modal-title\" style=\"color:black\" id=\"exampleModalLabel\">修改貼文內容</h2>";
						txt += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
						txt += "<span aria-hidden=\"true\">&times;</span>";
						txt += "</button>";
						txt += "</div>";
						txt += "<div class=\"modal-body\">";
						
						txt += "<form name=\"update\" action=\"/main/update\" id=\"update"+parseInt(i+floor*times)+"1\" style=\"color:black\">";
						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\" style=\"display: none;\">";
						txt += "文章標題  ：<textarea cols=\"30\" rows=\"1\" maxlength=\"10\" name=\"customermessageboardTitle\" >"+data[i]["customermessageboardTitle"]+"</textarea><br>";
						txt += "文章內容  ：<textarea cols=\"50\" rows=\"3\" maxlength=\"130\" name=\"customermessageboardMessage\">"+data[i]["customermessageboardMessage"]+"</textarea>";
						txt += "</form>";
						txt += "<form action=\"/main/delete\" id=\"delete"+parseInt(i+floor*times)+"\" style=\"display:none\">";
						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\">";
						txt += "</form>";
						
						txt += "</div>";
						txt += "<div class=\"modal-footer\">";
						txt += "<button type=\"button\" class=\"btn btn-primary\" id=\"update"+parseInt(i+floor*times)+"0\">修改</button>";
						txt += "<script>$(\"#update"+parseInt(i+floor*times)+"0\").click(function(){document.getElementById(\"update"+parseInt(i+floor*times)+"1\").submit();})<\/script>";
						txt += "<button type=\"button\" id=\"delete"+parseInt(i+floor*times)+"0\" class=\"btn btn-primary\">刪除</button>";
						txt += "<script>$(\"#delete"+parseInt(i+floor*times)+"0\").click(function(){document.getElementById(\"delete"+parseInt(i+floor*times)+"\").submit();})<\/script>";
						txt += "</div></div></div></div>";
					
					}
					
					txt += "</div></div>";
					//留言區域 id = floor + i + 1  ex: floor01 , floor11
					txt += "<div class=\"post-footer\" id=\"floor"+parseInt(i+floor*times)+"1\"  style=\"display: none\">";
					txt += "<div class=\"input-group\">";
					// 輸入留言區域給予id = leavecontentarea +i
					txt += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" id=\"leavecontentarea"+parseInt(i+floor*times)+"\">";
					txt += "<span class=\"input-group-addon\"><button id=\"articlefloor"+parseInt(i+floor*times)+"\" ><i class=\"fa fa-edit\"></i></button>"
					// 放置ajax抓取該articlefloor最大樓數+1的位置  id= customermessageboardResponseFloor + i 
					txt += "<input type=\"text\" id=\"customermessageboardResponseFloor"+parseInt(i+floor*times)+"\" style=\"display: none\">"
					// 送出留言button  id=articlefloor+i 
					txt += "<form id=\"report"+parseInt(i+floor*times)+"2\" name=\"report\" action=\"/main/report\">"
					txt += "<input type=\"text\" name=\"customermessageboardNum\" style=\"display: none\" value=\""+data[i]["customermessageboardNum"]+"\">"
					txt += "<input type=\"text\" name=\"customermessageboardMemberid\" style=\"display: none\" value=\""+data[i]["customermessageboardMemberid"]+"\">"
					// id=articlefloor+i+1    放置該樓層的真實articlefloor
					txt += "<input type=\"text\" id=\"articlefloor"+parseInt(i+floor*times)+"1\" style=\"display: none\" value=\""+data[i]["customermessageboardArticleFloor"]+"\"></span></form></div>"
					txt += "<div id=\"floor"+parseInt(i+floor*times)+"11\"></div>"
					txt += "</div></div></div><br>";
					//  隱藏留言  
					txt += "<script>"
					txt += "$(\"#floor"+parseInt(i+floor*times)+"\").click(function(){$(\"#\"+this.id+\"1\").toggle(300);})"
					txt += "<\/script>"
					txt += "<script>"																																																																																																																																
					//寫入aftercomment傳出留言之後自動搜尋留言寫出																																																																																																																																					
					txt += "function aftercomment"+parseInt(i+floor*times)+"(){var txt1 = \"\" ;$(\"#floor"+parseInt(i+floor)+"11\").empty();$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val() },success : function(data) {for (var k = 0; k < data.length; k++) {txt1 += \"<ul class=\\\"comments-list\\\" >\";txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"/main/setting/\"+data[k][\"customermessageboardMemberNum\"]+\"\\\"> <img class=\\\"avatar\\\" src=\\\"/admin/memberBeans/getServerPicture/\"+data[k][\"customermessageboardMemberNum\"]+\"\\\" alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\"><h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[k][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[k][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+parseInt(i+floor*times)+"11\").html(txt1);}})}"
				//  取出articlefloor 並放置該article的最大樓數+1
					txt += "$(\"#articlefloor"+parseInt(i+floor*times)+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+parseInt(i+floor)+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
					txt += "<\/script>"
					//  送出留言 抓取articlefloor&responsefloor +1後送出
					txt += "<script>"
					txt += "$(\"#articlefloor"+parseInt(i+floor*times)+"\").mouseup(function() {if($(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val() == \"\"){alert(\"不可空白\")}else{$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+parseInt(i+floor*times)+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val('');aftercomment"+parseInt(i+floor*times)+"();}})}});"	
					txt += "<\/script>"	
						// 按下留言按鈕搜尋該articlefloor的留言並寫入
					txt += "<script>"																																																																																																																																				
					txt += "$(\"#floor"+parseInt(i+floor*times)+"\").mousedown(function(){aftercomment"+parseInt(i+floor*times)+"()})"
					txt += "<\/script>"	
					
				}
					txt += "</div>";
					txt += "<script>"
					txt += "$(\".button1\").click(function(){document.getElementById(this.id+\"2\").submit();})"
					txt += "<\/script>"	
					floor = floor + 3 ;
					$("#messageboard").append(txt);
// 					report();
					times = times + 1 ;
					$("#searchend").val(data[datalength]["customermessageboardArticleFloor"]) ;
					}

				}
				})
	}
	
	$(window).scroll(function(){
 	   last=$("body").height()-$(window).height()
 	   if($(window).scrollTop()>=last){
  	  		more();
 	   }
	})
	
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

	var times = 1 ;
	
// 	$("#more").mouseup(function(){
		
// 		checkpressornot();
// 		var likelist = sessionStorage.getItem("likelist");
// 		var datalength = 0 ;
// 		$.ajax({url : "/main/searchcontinue/",
// 			type : "POST",
// 			data : {
// 				CustomermessageboardArticleFloor : $("#searchend").val(),
// 				},
// 				success : function(data) {
// 					var floor = 3 ;					
// 					if( data == ""){
// 						alert("已無資料");
// 					}else{
// 						datalength = data.length - 1  ;
// 					var txt = "<div class=\"row\">";
// 					for (var i = 0 ; i < data.length; i++) {
// 					txt += "<div class=\"col-sm-4\" style=\"margin: 0 auto;\">";
// 					txt += "<div class=\"panel panel-white post panel-shadow\">";
// 					txt += "<div class=\"post-heading\">";
// 					txt += "<div class=\"pull-left image\">";
// 					txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
// 					txt += "<div class=\"pull-left meta\">";
// 					txt += "<div class=\"title h2\">";
// 					txt += "<a href=\"/main/setting/"+data[i]["customermessageboardMemberNum"]+"\"><b>"
// 							+ data[i]["customermessageboardMemberid"]
// 							+ "</b></a>"
// 							+ "&nbsp&nbsp"+ data[i]["customermessageboardTitle"]
// 							+ "</div></div></div>";
// 					txt += "<div class=\"post-description\">";
// 					txt += "<p>"
// 							+ data[i]["customermessageboardMessage"]
// 							+ "</p>";
// 					txt += "<div class=\"stats\">";
					
// 					var flag = 0 ;
					
// 					checkfloor = data[i]["customermessageboardArticleFloor"];
// 					for(var j =0 ; j<likelist.length ; j++){
// 						if (likelist[j] == checkfloor){
// 							flag = 1 ;
// 							break;
// 						}else{
// 							flag = 0;
// 						}
// 					}		
// 					if(flag == 1){
// 						txt += "<span><i class=\"fas fa-heart\" id=\"like"+parseInt(i+floor*times)+"\" style=\"font-size: 30px ; color: red\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
// 					}else{
// 						txt += "<span><i class=\"far fa-heart\" id=\"like"+parseInt(i+floor*times)+"\" style=\"font-size: 30px ; color: white;\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
// 					}
					
// 					txt += "<script>"
// 					txt += "$(\"#like"+parseInt(i+floor*times)+"\").click(function(){"
// 					txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
// 					txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
// 					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : white \");"
// 					txt +=	"}else{"
// 					txt +=	"this.setAttribute(\"class\", \"fas fa-heart\");"
// 					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : red \");}"
// 					txt += "$.ajax({url : \"/main/pressnice/\","
// 					txt += "type : \"POST\","
// 					txt += "data : {Articlefloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val() , Memberid : $(\"#CustomermessageboardMemberid\").val(),},"
// 					txt += "success : function(data) {checkpressornot();}})"
// 					txt +=  "})<\/script>"
						
						
// 					// 留言button id = floor + i  ex:floor0, floor1
// 					txt += "<span><button class=\"button\"><i class=\"fas fa-comment-dots\" id=\"floor"+ parseInt(i+floor*times) +"\" style=\"font-size: 20px\"><span style=\"font-size: 20px\">&nbsp&nbsp留言</span></i></button></span>";
// 					txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+parseInt(i+floor*times)+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span>"
					
// 					if( (data[i]["customermessageboardMemberid"]) == $("#CustomermessageboardMemberid").val() ){
// 						txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal"+parseInt(i+floor*times)+"\" id=\"update"+parseInt(i+floor*times)+"\" ><i class=\"fas fa-edit\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp修改</span></i></button></span>";
						
// 						txt += "<div class=\"modal fade\" id=\"exampleModal"+parseInt(i+floor*times)+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
// 						txt += "<div class=\"modal-dialog\" role=\"document\">";
// 						txt += "<div class=\"modal-content\">";
// 						txt += "<div class=\"modal-header\">";
// 						txt += "<h2 class=\"modal-title\" style=\"color:black\" id=\"exampleModalLabel\">修改貼文內容</h2>";
// 						txt += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
// 						txt += "<span aria-hidden=\"true\">&times;</span>";
// 						txt += "</button>";
// 						txt += "</div>";
// 						txt += "<div class=\"modal-body\">";
						
// 						txt += "<form name=\"update\" action=\"/main/update\" id=\"update"+parseInt(i+floor*times)+"1\" style=\"color:black\">";
// 						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\" style=\"display: none;\">";
// 						txt += "文章標題  ：<textarea cols=\"30\" rows=\"1\" maxlength=\"10\" name=\"customermessageboardTitle\" >"+data[i]["customermessageboardTitle"]+"</textarea><br>";
// 						txt += "文章內容  ：<textarea cols=\"50\" rows=\"3\" maxlength=\"130\" name=\"customermessageboardMessage\">"+data[i]["customermessageboardMessage"]+"</textarea>";
// 						txt += "</form>";
// 						txt += "<form action=\"/main/delete\" id=\"delete"+parseInt(i+floor*times)+"\" style=\"display:none\">";
// 						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\">";
// 						txt += "</form>";
						
// 						txt += "</div>";
// 						txt += "<div class=\"modal-footer\">";
// 						txt += "<button type=\"button\" class=\"btn btn-primary\" id=\"update"+parseInt(i+floor*times)+"0\">修改</button>";
// 						txt += "<script>$(\"#update"+parseInt(i+floor*times)+"0\").click(function(){document.getElementById(\"update"+parseInt(i+floor*times)+"1\").submit();})<\/script>";
// 						txt += "<button type=\"button\" id=\"delete"+parseInt(i+floor*times)+"0\" class=\"btn btn-primary\">刪除</button>";
// 						txt += "<script>$(\"#delete"+parseInt(i+floor*times)+"0\").click(function(){document.getElementById(\"delete"+parseInt(i+floor*times)+"\").submit();})<\/script>";
// 						txt += "</div></div></div></div>";
					
// 					}
					
// 					txt += "</div></div>";
// 					//留言區域 id = floor + i + 1  ex: floor01 , floor11
// 					txt += "<div class=\"post-footer\" id=\"floor"+parseInt(i+floor*times)+"1\"  style=\"display: none\">";
// 					txt += "<div class=\"input-group\">";
// 					// 輸入留言區域給予id = leavecontentarea +i
// 					txt += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" id=\"leavecontentarea"+parseInt(i+floor*times)+"\">";
// 					txt += "<span class=\"input-group-addon\"><button id=\"articlefloor"+parseInt(i+floor*times)+"\" ><i class=\"fa fa-edit\"></i></button>"
// 					// 放置ajax抓取該articlefloor最大樓數+1的位置  id= customermessageboardResponseFloor + i 
// 					txt += "<input type=\"text\" id=\"customermessageboardResponseFloor"+parseInt(i+floor*times)+"\" style=\"display: none\">"
// 					// 送出留言button  id=articlefloor+i 
// 					txt += "<form id=\"report"+parseInt(i+floor*times)+"2\" name=\"report\" action=\"/main/report\">"
// 					txt += "<input type=\"text\" name=\"customermessageboardNum\" style=\"display: none\" value=\""+data[i]["customermessageboardNum"]+"\">"
// 					txt += "<input type=\"text\" name=\"customermessageboardMemberid\" style=\"display: none\" value=\""+data[i]["customermessageboardMemberid"]+"\">"
// 					// id=articlefloor+i+1    放置該樓層的真實articlefloor
// 					txt += "<input type=\"text\" id=\"articlefloor"+parseInt(i+floor*times)+"1\" style=\"display: none\" value=\""+data[i]["customermessageboardArticleFloor"]+"\"></span></form></div>"
// 					txt += "<div id=\"floor"+parseInt(i+floor*times)+"11\"></div>"
// 					txt += "</div></div></div><br>";
// 					//  隱藏留言  
// 					txt += "<script>"
// 					txt += "$(\"#floor"+parseInt(i+floor*times)+"\").click(function(){$(\"#\"+this.id+\"1\").toggle(300);})"
// 					txt += "<\/script>"
// 					txt += "<script>"																																																																																																																																
// 					//寫入aftercomment傳出留言之後自動搜尋留言寫出																																																																																																																																					
// 					txt += "function aftercomment"+parseInt(i+floor*times)+"(){var txt1 = \"\" ;$(\"#floor"+parseInt(i+floor)+"11\").empty();$.ajax({url : \"/main/searchcomment/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val() },success : function(data) {for (var k = 0; k < data.length; k++) {txt1 += \"<ul class=\\\"comments-list\\\" >\";txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"/main/setting/\"+data[k][\"customermessageboardMemberNum\"]+\"\\\"> <img class=\\\"avatar\\\" src=\\\"/admin/memberBeans/getServerPicture/\"+data[k][\"customermessageboardMemberNum\"]+\"\\\" alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\"><h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[k][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[k][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+parseInt(i+floor*times)+"11\").html(txt1);}})}"
// 				//  取出articlefloor 並放置該article的最大樓數+1
// 					txt += "$(\"#articlefloor"+parseInt(i+floor*times)+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor)+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+parseInt(i+floor)+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
// 					txt += "<\/script>"
// 					//  送出留言 抓取articlefloor&responsefloor +1後送出
// 					txt += "<script>"
// 					txt += "$(\"#articlefloor"+parseInt(i+floor*times)+"\").mouseup(function() {if($(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val() == \"\"){alert(\"不可空白\")}else{$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+parseInt(i+floor*times)+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+parseInt(i+floor*times)+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+parseInt(i+floor*times)+"\").val('');aftercomment"+parseInt(i+floor*times)+"();}})}});"	
// 					txt += "<\/script>"	
// 						// 按下留言按鈕搜尋該articlefloor的留言並寫入
// 					txt += "<script>"																																																																																																																																				
// 					txt += "$(\"#floor"+parseInt(i+floor*times)+"\").mousedown(function(){aftercomment"+parseInt(i+floor*times)+"()})"
// 					txt += "<\/script>"	
					
// 				}
// 					txt += "</div>";
// 					txt += "<script>"
// 					txt += "$(\".button1\").click(function(){document.getElementById(this.id+\"2\").submit();})"
// 					txt += "<\/script>"	
// 					floor = floor + 3 ;
// 					$("#messageboard").append(txt);
// // 					report();
// 					times = times + 1 ;
// 					$("#searchend").val(data[datalength]["customermessageboardArticleFloor"]) ;
// 					}

// 				}
// 				})
				
// 			});
	
	$("#messageorder").click(function(){
		$("#"+this.id+"1").toggle(1000);
// 		alert($("floor11").html());
		aftercomment();
	})
	
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
		var a = $("#CustomermessageboardMessage").val();
		var b = $("#CustomermessageboardTitle").val() ;
		if( a == "" || b == ""){
			alert("不可空白");
		}else{
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
		}
			});

	$(document).ready(function() {
		
		checkpressornot();
		var likelist = sessionStorage.getItem("likelist");
		if (likelist == null){
			window.setTimeout('location.reload()',400);
		}
			$.ajax({
				url : "/main/searchall/",
				type : "POST",
				success : function(data) {
					var txt = "<div class=\"row\">";
					var result = new Array() ;	
					for (var i = 0 ; i < data.length; i++) {
					txt += "<div class=\"col-sm-4\" style=\"margin: 0 auto;\">";
					txt += "<div class=\"panel panel-white post panel-shadow\">";
					txt += "<div class=\"post-heading\">";
					txt += "<div class=\"pull-left image\">";
					txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
					txt += "<div class=\"pull-left meta\">";
					txt += "<div class=\"title h2\">";
					txt += "<a href=\"/main/setting/"+data[i]["customermessageboardMemberNum"]+"\"><b>"
							+ data[i]["customermessageboardMemberid"]
							+ "</b></a>"
							+ "&nbsp&nbsp" + data[i]["customermessageboardTitle"]
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
						txt += "<span><i class=\"far fa-heart\" id=\"like"+i+"\" style=\"font-size: 30px ; color: white;\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
					}
					
					txt += "<script>"
					txt += "$(\"#like"+i+"\").click(function(){"
					txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
					txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
					txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : white \");"
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
					txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+i+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span>";
					
					if( (data[i]["customermessageboardMemberid"]) == $("#CustomermessageboardMemberid").val() ){
						txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal"+i+"\" id=\"update"+i+"\" ><i class=\"fas fa-edit\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp修改</span></i></button></span>";
						
						txt += "<div class=\"modal fade\" id=\"exampleModal"+i+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
						txt += "<div class=\"modal-dialog\" role=\"document\">";
						txt += "<div class=\"modal-content\">";
						txt += "<div class=\"modal-header\">";
						txt += "<h2 class=\"modal-title\" style=\"color:black\" id=\"exampleModalLabel\">修改貼文內容</h2>";
						txt += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
						txt += "<span aria-hidden=\"true\">&times;</span>";
						txt += "</button>";
						txt += "</div>";
						txt += "<div class=\"modal-body\">";
						
						txt += "<form name=\"update\" action=\"/main/update\" id=\"update"+i+"1\" style=\"color:black\">";
						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\" style=\"display: none;\">";
						txt += "文章標題  ：<textarea cols=\"30\" rows=\"1\" maxlength=\"10\" name=\"customermessageboardTitle\" >"+data[i]["customermessageboardTitle"]+"</textarea><br>";
						txt += "文章內容  ：<textarea cols=\"50\" rows=\"3\" maxlength=\"130\" name=\"customermessageboardMessage\">"+data[i]["customermessageboardMessage"]+"</textarea>";
						txt += "</form>";
						txt += "<form action=\"/main/delete\" id=\"delete"+i+"\" style=\"display:none\">";
						txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\">";
						txt += "</form>";
						
						txt += "</div>";
						txt += "<div class=\"modal-footer\">";
						txt += "<button type=\"button\" class=\"btn btn-primary\" id=\"update"+i+"0\">修改</button>";
						txt += "<script>$(\"#update"+i+"0\").click(function(){document.getElementById(\"update"+i+"1\").submit();})<\/script>";
						txt += "<button type=\"button\" id=\"delete"+i+"0\" class=\"btn btn-primary\">刪除</button>";
						txt += "<script>$(\"#delete"+i+"0\").click(function(){document.getElementById(\"delete"+i+"\").submit();})<\/script>";
						txt += "</div></div></div></div>";
					
					}
					
					txt += "</div></div>";
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
					txt += "</div></div></div><br>";
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
					txt += "txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"/main/setting/\"+data[i][\"customermessageboardMemberNum\"]+\"\\\"> "
					txt += "<img class=\\\"avatar\\\" src=\\\""
					txt += "/admin/memberBeans/getServerPicture/\"+data[i][\"customermessageboardMemberNum\"]+\"\\\" "
					txt += "alt=\\\"avatar\\\"></a>\";txt1 += \"<div class=\\\"comment-body\\\">"
					txt += "<h4 class=\\\"user\\\">&nbsp;&nbsp;\"+data[i][\"customermessageboardMemberid\"]+\"</h4></div>\";txt1 += \"<p>&nbsp;&nbsp;\"+data[i][\"customermessageboardMessage\"]+\"</p></div></li></ul>\"}$(\"#floor"+i+"11\").html(txt1)}})}"
				//  取出articlefloor 並放置該article的最大樓數+1
					txt += "$(\"#articlefloor"+i+"\").mousedown(function(){$.ajax({url : \"\/main\/searchthelastofcomment\/\",type : \"POST\",data : { CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val()},success : function(data) {$(\"#customermessageboardResponseFloor"+i+"\").val(data[0][\"customermessageboardResponseFloor\"] + 1);}})})"
					txt += "<\/script>"
					//  送出留言 抓取articlefloor&responsefloor +1後送出
					txt += "<script>"
					txt += "$(\"#articlefloor"+i+"\").mouseup(function() {if($(\"#leavecontentarea"+i+"\").val() == \"\"){alert(\"不可空白\")}else{$.ajax({url : \"\/main\/public\/\",type : \"POST\",data : {CustomermessageboardMessage : $(\"#leavecontentarea"+i+"\").val(),CustomermessageboardResponseFloor : $(\"#customermessageboardResponseFloor"+i+"\").val(),CustomermessageboardArticleFloor : $(\"#articlefloor"+i+"1\").val(),CustomermessageboardMemberid : $(\"#CustomermessageboardMemberid\").val(),CustomermessageboardStatus : 1,CustomermessageboardMemberNum : $(\"#CustomermessageboardMemberNum\").val(),},error : function() {$(\"#leavecontentarea"+i+"\").val('');aftercomment"+i+"();}})}});"	
					txt += "<\/script>"	
						// 按下留言按鈕搜尋該articlefloor的留言並寫入
					txt += "<script>"
					txt += "$(\"#floor"+i+"\").mousedown(function(){aftercomment"+i+"()})"
					txt += "<\/script>"	
				}
					txt += "</div>";
					txt += "<script>"
					txt += "function report(){$(\".button1\").click(function(){document.getElementById(this.id+\"2\").submit();})}"
					txt += "<\/script>"	
					$("#messageboard").html(txt);
					var i = data[2]["customermessageboardArticleFloor"] ;
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
			var a = $("#searchbytitle").val() ;
			var b = $("#searchbycontent").val() ;
			var c = $("#searchbyuserid").val() ;
			if( a =="" && b =="" && c=="" ){
// 				alert("空");
				;
			}else{
				$.ajax({
					url : "/main/query/",
					type : "POST",
					data : {
						CustomermessageboardTitle : $("#searchbytitle").val(),
						CustomermessageboardMessage : $("#searchbycontent").val(),
						CustomermessageboardMemberid : $("#searchbyuserid").val(),	
					},
					success : function(data) {
						var txt = "<div class=\"row\">";
						var result = new Array() ;	
						for (var i = 0 ; i < data.length; i++) {
						txt += "<div class=\"col-sm-4\" style=\"margin: 0 auto;\">";
						txt += "<div class=\"panel panel-white post panel-shadow\">";
						txt += "<div class=\"post-heading\">";
						txt += "<div class=\"pull-left image\">";
						txt += "<img src=\"<c:url value='/admin/memberBeans/getServerPicture/"+data[i]["customermessageboardMemberNum"]+"' />\" class=\"img-circle avatar\" alt=\"user profile image\"></div>";
						txt += "<div class=\"pull-left meta\">";
						txt += "<div class=\"title h2\">";
						txt += "<a href=\"/main/setting/"+data[i]["customermessageboardMemberNum"]+"\"><b>"
								+ data[i]["customermessageboardMemberid"]
								+ "</b></a>"
								+ "&nbsp&nbsp" + data[i]["customermessageboardTitle"]
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
							txt += "<span><i class=\"far fa-heart\" id=\"like"+i+"\" style=\"font-size: 30px ; color: white;\"><span style=\"font-size: 20px\"></span></i>&nbsp&nbsp&nbsp&nbsp</span>";
						}
						
						txt += "<script>"
						txt += "$(\"#like"+i+"\").click(function(){"
						txt +=	"if(this.getAttribute(\"class\") == \"fas fa-heart\"){"
						txt +=	"this.setAttribute(\"class\", \"far fa-heart\");"
						txt +=	"this.setAttribute(\"style\", \"font-size: 30px ; color : white \");"
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
						txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button1\" id=\"report"+i+"\" ><i class=\"fas fa-exclamation-circle\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp檢舉</span></i></button></span>"
						
						if( (data[i]["customermessageboardMemberid"]) == $("#CustomermessageboardMemberid").val() ){
							txt += "<span>&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#exampleModal"+i+"\" id=\"update"+i+"\" ><i class=\"fas fa-edit\" style=\"font-size: 20px ; font-color:red \"><span style=\"font-size: 20px\">&nbsp&nbsp修改</span></i></button></span>";
							
							txt += "<div class=\"modal fade\" id=\"exampleModal"+i+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">";
							txt += "<div class=\"modal-dialog\" role=\"document\">";
							txt += "<div class=\"modal-content\">";
							txt += "<div class=\"modal-header\">";
							txt += "<h2 class=\"modal-title\" style=\"color:black\" id=\"exampleModalLabel\">修改貼文內容</h2>";
							txt += "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">";
							txt += "<span aria-hidden=\"true\">&times;</span>";
							txt += "</button>";
							txt += "</div>";
							txt += "<div class=\"modal-body\">";
							
							txt += "<form name=\"update\" action=\"/main/update\" id=\"update"+i+"1\" style=\"color:black\">";
							txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\" style=\"display: none;\">";
							txt += "文章標題  ：<textarea cols=\"30\" rows=\"1\" maxlength=\"10\" name=\"customermessageboardTitle\" >"+data[i]["customermessageboardTitle"]+"</textarea><br>";
							txt += "文章內容  ：<textarea cols=\"50\" rows=\"3\" maxlength=\"130\" name=\"customermessageboardMessage\">"+data[i]["customermessageboardMessage"]+"</textarea>";
							txt += "</form>";
							txt += "<form action=\"/main/delete\" id=\"delete"+i+"\" style=\"display:none\">";
							txt += "<input type=\"text\" name=\"customermessageboardNum\" value=\""+data[i]["customermessageboardNum"]+"\">";
							txt += "</form>";
							
							txt += "</div>";
							txt += "<div class=\"modal-footer\">";
							txt += "<button type=\"button\" class=\"btn btn-primary\" id=\"update"+i+"0\">修改</button>";
							txt += "<script>$(\"#update"+i+"0\").click(function(){document.getElementById(\"update"+i+"1\").submit();})<\/script>";
							txt += "<button type=\"button\" id=\"delete"+i+"0\" class=\"btn btn-primary\">刪除</button>";
							txt += "<script>$(\"#delete"+i+"0\").click(function(){document.getElementById(\"delete"+i+"\").submit();})<\/script>";
							txt += "</div></div></div></div>";
						
						}
						
						txt += "</div></div>";
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
						txt += "</div></div></div><br>";
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
						txt += "txt1 += \"<li class=\\\"comment\\\"><a class=\\\"pull-left\\\" href=\\\"/main/setting/\"+data[i][\"customermessageboardMemberNum\"]+\"\\\"> "
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
						txt += "</div>";
						$("#messageboard").empty();
						$("#messageboard").html(txt);
						$('[name=gender]').change();
						$("#more").hide();
						report();
					}
			})
			}
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