<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/resources/chatroomtest/css/default.css">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" type="text/css" href="/resources/chatroomtest/css/styles.css">


         <article class="content moe">
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="demo" style="display:none">
		  <svg class="sidebar" viewBox="0 0 300 500">
			<path class="s-path" fill="#fff" d="M0,0 50,0 a0,250 0 1,1 0,500 L0,500" />
		  </svg>
		  <div class="static">
			<div class="static__text"><i class="fas fa-times"></i></div>
		  </div>
		  <div class="sidebar-content active" id = "myfriendlist">
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Ethan Hawke</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/2.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Natalie Portman</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/3.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Kevin Spacey</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/4.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Rosamund Pike</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/5.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Robert Redford</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/6.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Scarlett Johansson</span> -->
<!-- 			  <span class="contact__status online"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/7.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Tom Cruise</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/8.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Eva Green</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/9.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Paul Newman</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Thomas Break</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Thomas Break</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
<!-- 			<div class="contact"> -->
<!-- 			  <img src="/resources/chatroomtest/img/1.png" alt="" class="contact__photo" /> -->
<!-- 			  <span class="contact__name">Thomas Break</span> -->
<!-- 			  <span class="contact__status"></span> -->
<!-- 			</div> -->
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
			<div class="chat__messages" id="chat__messages">
			
<!-- 			  <div class="chat__msgRow"> -->
<!-- 				<div class="chat__message mine">Such SVG, much Javascript, very CSS!</div> -->
<!-- 			  </div> -->
<!-- 			  <div class="chat__msgRow"> -->
<!-- 				<div class="chat__message notMine">Wow!</div> -->
<!-- 			  </div> -->
<!-- 			  <div class="chat__msgRow"> -->
<!-- 				<div class="chat__message notMine">Very elastic! Such easings!</div> -->
<!-- 			  </div> -->
<!-- 			  <div class="chat__msgRow"> -->
<!-- 				<div class="chat__message mine"> -->
				  
<!-- 				</div> -->
<!-- 			  </div> -->
			</div>
			<input type="text" class="chat__input" id="sendinput"   onkeypress="preventreload(event)" placeholder="Your message" />
		  </div>
		</div>
		
		<!-- WRITE YOUR CONTEXT HERE -->
		<div class="search_friend" id="search_friend_icon" style="min-height: 44.4px;">
			<span class="chat_on_icon" style="line-height: 1.8rem;"> <!--     <i class="fa fa-comments fa-xs" aria-hidden="true"></i>	 -->
			<img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBoZWlnaHQ9IjUxMnB4IiB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgd2lkdGg9IjUxMnB4Ij48cGF0aCBkPSJtNTEyIDI1Ni4wMzEyNWMwIDUuOTE0MDYyLS4xNzU3ODEgMTEuODI4MTI1LS43MDcwMzEgMTcuNjU2MjUtNy4wOTM3NSAxMDIuMjkyOTY5LTc0LjUzOTA2MyAxOTAuNDgwNDY5LTE3MS4zOTg0MzggMjI0LjEyMTA5NC05Ni44NjMyODEgMzMuNjQwNjI1LTIwNC40NTMxMjUgNi4yMzgyODEtMjczLjQyMTg3NS02OS42MzY3MTlsLS4yNjU2MjUtLjI2NTYyNWMtMTguNjE3MTg3LTIwLjU1ODU5NC0zMy43ODkwNjItNDMuOTg4MjgxLTQ0LjkzMzU5My02OS4zODY3MTktMS40MTAxNTctMy4yNjU2MjUtMi44MjQyMTktNi42MjEwOTMtNC4wNTg1OTQtOS45NzI2NTYtLjg4MjgxMy0yLjIwNzAzMS0xLjc2NTYyNS00LjUwMzkwNi0yLjQ3MjY1Ni02LjgwMDc4MS0uNzA3MDMyLTEuNzY1NjI1LTEuMzI0MjE5LTMuNDQxNDA2LTEuODU1NDY5LTUuMjA3MDMyLS41MjczNDQtMS43NjU2MjQtMS4yMzQzNzUtMy42MTcxODctMS42NzU3ODEtNS40NzI2NTYtLjU5Mzc1LTEuNjc5Njg3LTEuMDkzNzUtMy4zODY3MTgtMS41LTUuMTIxMDk0LS43OTY4NzYtMi42NDg0MzctMS41LTUuMjk2ODc0LTIuMTIxMDk0LTcuOTQ1MzEyLS4xODc1LS42MDU0NjktLjMzNTkzOC0xLjIyNjU2Mi0uNDQxNDA2LTEuODUxNTYyLS43OTI5NjktMy4wODk4NDQtMS41LTYuMTc5Njg4LTIuMTE3MTg4LTkuMzU5Mzc2LS43MDcwMzEtMy41MzEyNS0xLjMyNDIxOS03LjA1ODU5My0xLjk0MTQwNi0xMC41ODk4NDMtLjYxNzE4OC00LjMyODEyNS0xLjIzNDM3NS04Ljc0MjE4OC0xLjY3NTc4Mi0xMy4xNTYyNS0uMzU1NDY4LTMuMDg5ODQ0LS42MjEwOTMtNi4xNzk2ODgtLjc5Njg3NC05LjI2NTYyNXYtLjI2NTYyNWMtLjI2NTYyNi0yLjgyNDIxOS0uMzUxNTYzLTUuNzM4MjgxLS40NDE0MDctOC42NTIzNDQtLjA4NTkzNzItMi45MTQwNjMtLjE3NTc4MS01LjgyNDIxOS0uMTc1NzgxLTguODI4MTI1em0wIDAiIGZpbGw9IiNjOWNlZDEiLz48cGF0aCBkPSJtNDgyLjg2NzE4OCAyNTYuMDMxMjVjLS43OTI5NjkgNS45MTQwNjItMS44NTE1NjMgMTEuODI4MTI1LTMuMDg1OTM4IDE3LjY1NjI1LTE5LjA4MjAzMSA4OS41MzUxNTYtODQuNTIzNDM4IDE2Mi4wNzAzMTItMTcxLjYyODkwNiAxOTAuMjMwNDY5LTg3LjEwOTM3NSAyOC4xNjAxNTYtMTgyLjYyNSA3LjY2NDA2Mi0yNTAuNTA3ODEzLTUzLjc1NzgxM2wtLjI2NTYyNS0uMjYxNzE4Yy0xNC4xMjUtMTUuNTU4NTk0LTI2LjI1MzkwNi0zMi44MTY0MDctMzYuMTA1NDY4LTUxLjM3ODkwNy0xLjQxMDE1Ny0zLjI2NTYyNS0yLjgyNDIxOS02LjYyMTA5My00LjA1ODU5NC05Ljk3MjY1Ni0uODgyODEzLTIuMjA3MDMxLTEuNzY1NjI1LTQuNTAzOTA2LTIuNDcyNjU2LTYuODAwNzgxLS43MDcwMzItMS43NjU2MjUtMS4zMjQyMTktMy40NDE0MDYtMS44NTU0NjktNS4yMDcwMzItLjUyNzM0NC0xLjc2NTYyNC0xLjIzNDM3NS0zLjYxNzE4Ny0xLjY3NTc4MS01LjQ3MjY1Ni0uNTkzNzUtMS42Nzk2ODctMS4wOTM3NS0zLjM4NjcxOC0xLjUtNS4xMjEwOTQtLjc5Njg3Ni0yLjY0ODQzNy0xLjUtNS4yOTY4NzQtMi4xMjEwOTQtNy45NDUzMTItLjE4NzUtLjYwNTQ2OS0uMzM1OTM4LTEuMjI2NTYyLS40NDE0MDYtMS44NTE1NjItLjc5Mjk2OS0zLjA4OTg0NC0xLjUtNi4xNzk2ODgtMi4xMTcxODgtOS4zNTkzNzYtLjcwNzAzMS0zLjUzMTI1LTEuMzI0MjE5LTcuMDU4NTkzLTEuOTQxNDA2LTEwLjU4OTg0My0uNjE3MTg4LTQuMzI4MTI1LTEuMjM0Mzc1LTguNzQyMTg4LTEuNjc1NzgyLTEzLjE1NjI1LS4zNTU0NjgtMy4wODk4NDQtLjYyMTA5My02LjE3OTY4OC0uNzk2ODc0LTkuMjY1NjI1di0uMjY1NjI1Yy0uMjY1NjI2LTIuODI0MjE5LS4zNTE1NjMtNS43MzgyODEtLjQ0MTQwNy04LjY1MjM0NC0uMDg1OTM3Mi0yLjkxNDA2My0uMTc1NzgxLTUuODI0MjE5LS4xNzU3ODEtOC44MjgxMjV6bTAgMCIgZmlsbD0iI2YwZjNmNCIvPjxwYXRoIGQ9Im01MTIgMjU2LjAzMTI1aC01MTJjMC01LjkxNDA2Mi4xNzU3ODEtMTEuODI4MTI1LjcwNzAzMS0xNy42NTYyNSA5LjIwNzAzMS0xMzQuMjEwOTM4IDEyMC43NjU2MjUtMjM4LjM3NSAyNTUuMjkyOTY5LTIzOC4zNzVzMjQ2LjA4NTkzOCAxMDQuMTY0MDYyIDI1NS4yOTI5NjkgMjM4LjM3NWMuNTMxMjUgNS44MjgxMjUuNzA3MDMxIDExLjc0MjE4OC43MDcwMzEgMTcuNjU2MjV6bTAgMCIgZmlsbD0iI2Q4NjI1ZSIvPjxwYXRoIGQ9Im0zNjEuOTI5Njg4IDI1Ni4wMzEyNWMwIDU4LjUwMzkwNi00Ny40MjU3ODIgMTA1LjkzMzU5NC0xMDUuOTI5Njg4IDEwNS45MzM1OTRzLTEwNS45Mjk2ODgtNDcuNDI5Njg4LTEwNS45Mjk2ODgtMTA1LjkzMzU5NCA0Ny40MjU3ODItMTA1LjkyOTY4OCAxMDUuOTI5Njg4LTEwNS45Mjk2ODggMTA1LjkyOTY4OCA0Ny40MjU3ODIgMTA1LjkyOTY4OCAxMDUuOTI5Njg4em0wIDAiIGZpbGw9IiM1ODYyNzAiLz48cGF0aCBkPSJtMzI2LjYyMTA5NCAyNTYuMDMxMjVjMCAzOS4wMDM5MDYtMzEuNjE3MTg4IDcwLjYyMTA5NC03MC42MjEwOTQgNzAuNjIxMDk0cy03MC42MjEwOTQtMzEuNjE3MTg4LTcwLjYyMTA5NC03MC42MjEwOTQgMzEuNjE3MTg4LTcwLjYyMTA5NCA3MC42MjEwOTQtNzAuNjIxMDk0IDcwLjYyMTA5NCAzMS42MTcxODggNzAuNjIxMDk0IDcwLjYyMTA5NHptMCAwIiBmaWxsPSIjZjBmM2Y0Ii8+PHBhdGggZD0ibTI3My42NTYyNSAyNTYuMDMxMjVjMCA5Ljc1LTcuOTA2MjUgMTcuNjU2MjUtMTcuNjU2MjUgMTcuNjU2MjVzLTE3LjY1NjI1LTcuOTA2MjUtMTcuNjU2MjUtMTcuNjU2MjUgNy45MDYyNS0xNy42NTYyNSAxNy42NTYyNS0xNy42NTYyNSAxNy42NTYyNSA3LjkwNjI1IDE3LjY1NjI1IDE3LjY1NjI1em0wIDAiIGZpbGw9IiM1ODYyNzAiLz48cGF0aCBkPSJtMTg2LjA4NTkzOCA1Mi45OTYwOTRjLTQwLjI4MTI1IDMzLjc4NTE1Ni02Ny40MDIzNDQgODAuNjU2MjUtNzYuNjI1IDEzMi40MTQwNjJoLTY2LjczNDM3NmMxNC40MzM1OTQtNTQuNzQyMTg3IDQ4Ljk4MDQ2OS0xMDIuMDI3MzQ0IDk2Ljc1LTEzMi40MTQwNjJ6bTAgMCIgZmlsbD0iI2ZlOTE4OSIvPjxnIGZpbGw9IiM1ODYyNzAiPjxwYXRoIGQ9Im0xNjcuNzIyNjU2IDIzOC4zNzV2MzUuMzEyNWgtMTY3LjEwNTQ2OHYtLjE3NTc4MWMtLjI2NTYyNi0yLjgyNDIxOS0uMzUxNTYzLTUuNzM4MjgxLS40NDE0MDctOC42NTIzNDQtLjA4NTkzNzItMi45MTQwNjMtLjE3NTc4MS01LjgyNDIxOS0uMTc1NzgxLTguODI4MTI1IDAtNS45MTQwNjIuMTc1NzgxLTExLjgyODEyNS43MDcwMzEtMTcuNjU2MjV6bTAgMCIvPjxwYXRoIGQ9Im01MTIgMjU2LjAzMTI1YzAgNS45MTQwNjItLjE3NTc4MSAxMS44MjgxMjUtLjcwNzAzMSAxNy42NTYyNWgtMTY3LjAxNTYyNXYtMzUuMzEyNWgxNjcuMDE1NjI1Yy41MzEyNSA1LjgyODEyNS43MDcwMzEgMTEuNzQyMTg4LjcwNzAzMSAxNy42NTYyNXptMCAwIi8+PC9nPjwvc3ZnPgo=" style="
    width: 4rem;">
			<i class="" aria-hidden="true"></i>
			</span>
		</div>
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
		<!-- WRITE YOUR CONTEXT HERE -->
         </article>

<script type="text/javascript" src='/resources/chatroomtest/js/stopExecutionOnTimeout.js?t=1'></script>
<!-- <script type="text/javascript" src='/resources/chatroomtest/js/jquery.min.js'></script> -->
<script type="text/javascript" src="/resources/chatroomtest/js/main.js"></script>
<script>
var sender0 = 0;
var receiver0 = 0;
function readmessage() {
	$.ajax({
		url : "/chatroom/querymessage?sender=" + sender0 + "&receiver="
				+ receiver0,
		success : function(data) {
			var dataL = data.length;
			$(".chat__messages").empty();
			for (var i = 0; i < dataL; i++) {
				var text = "";
				var time = data[i][5].substr(11, 8).replace("T", "")
						.replace("-", "/");
				if (data[i][0] == sender0) { 
					text = "<div class=\"chat__msgRow\">"+
							"<div class=\"chat__message notMine\">" + data[i][4]
							+"</div></div>"; 
// 							"<span class=\"msg_time\">" + time + "</span></div>";
				} else {
					text = "<div class=\"chat__msgRow\">"+
							"<div class=\"chat__message  mine \">" + data[i][4]
							+"</div></div>"; 
				}
				$(".chat__messages").append(text);

			}
		},
		dataType : "json"
	});
};

function readmessageInterval() {
	setInterval(function() {
		readmessage();
	}, 3000);
}


function enter() {
	var text = "";
	if ($(".chat__input").val() == "") {
		var objDiv = document.getElementById("chat__messages");
		objDiv.scrollTop = objDiv.scrollHeight;
		return;
	}
	$.get("/chatroom/sendmessage?memberid=" + sender0 + "&sendto="
					+ receiver0 + "&message="
					+ $(".chat__input").val(), function(Jdata) {
			});
	    text += "<div class=\"chat__msgRow\">";
		text += "<div class=\"chat__message notMine\">"+$(".chat__input").val()+"   </div> ";
		text += "</div>";
	$(".chat__messages").append(text);
	$(".chat__input").val("");
	var objDiv = document.getElementById("chat__messages");
	objDiv.scrollTop = objDiv.scrollHeight;
}
function preventreload(e) {
	if (e.keyCode == 13) {
		enter();
	}
}
function opencontact(sender, receiver) {
	sender0 = sender;
	receiver0 = receiver;

	readmessage();

setTimeout(function(){
	var objDiv = document.getElementById("chat__messages");
	objDiv.scrollTop = objDiv.scrollHeight;
	console.log(objDiv.scrollTop);
	console.log(objDiv.scrollHeight);
},1500);

	readmessageInterval();
};

function idoftalktomember(id){
	var sender = '${sessionScope.member.memberNum}';
	var receiver = id;
	opencontact(sender, receiver);
};

function whoismyfriend(){
	var myfriends = "";
	var list = userlist.replace("[","").replace("]","").split(",");
	var online = "";
	$.ajax({
		url : "/friend/list/findmyfriend?memberid=" + '${sessionScope.member.memberNum}',
		type : "GET",
		success : function(Jdata) {
		var NumOfJData = Jdata.length;
		console.log(NumOfJData);
		if (NumOfJData == 0 ){
			myfriends +=	"<div style=\"text-align:center\">"
			myfriends +=	"<span>目前沒有朋友喔！</span>"
			myfriends +=	"<span class= \" "+online+" \" ></span>"
			myfriends +=	"</div>"
		}
		for (var i = 0; i < NumOfJData; i++) {
			
			for (var j = 0 ; j < list.length ; j++){

				if (Jdata[i][1] == list[j].trim()){
					online = "contact__status "+" "+"online";
					break;
				} else {
					online = "contact__status";
				}
			}
			myfriends +=	"<div class=\"contact\" onclick=\"idoftalktomember("+Jdata[i][0]+")\">"
			myfriends +=	"<img src=\"/admin/memberBeans/getServerPicture/"+Jdata[i][0]+ "\"  alt=\"\" class=\"contact__photo\" />"
			myfriends +=	"<span class=\"contact__name\">"+Jdata[i][1]+"</span>"
			myfriends +=	"<span class= \" "+online+" \" ></span>"
			myfriends +=	"</div>"
			
				}
		myfriends += "<div class=\"search\">"
		myfriends += "<img src=\"/resources/chatroomtest/img/t8TeL1S.png\" alt=\"\" class=\"search__img\" />"
		myfriends += "<input type=\"text\" class=\"search__input\" placeholder=\"Search\" />"
		myfriends += "</div>"
		$("#myfriendlist").html(myfriends);
			}
		});
};
function showwhoaddme(data){
	var text = "";
	var list = data.replace("{",",").replace("}","").replace("[","").replace("[","").split("]");
	for (var i = 0 ; i < list.length -1 ; i++){
		var number = list[i].replace("[","").replace("=",",").split(",");
// 		console.log (number);
		// number[1] = 好友表格流水號
		// number[2] = 誰加你好友 (id)
		// number[3] = 誰加你好友 (username)
		text += "<li>"
		text +="<a href=\"#\">"
		text +=	"<div class=\"col-sm-12 size-adjust\">"
		text +=	"<a  style=\"color:red ; font-size:14px;\">"+number[3]+"</a>"
		text +=	"<a  style=\" font-size:14px;\">向你發出好友邀請</a>"
		text += "<input type=\"button\" class=\"btn btn-danger\" value=\"Decline\" onclick=\"readndecline("+number[1]+","+number[2]+")\" style=\"float: right;\">"
		text += "<input type=\"button\" class=\"btn btn-success\" value=\"Accept\" onclick=\"readnaccept("+number[1]+","+number[2]+")\" style=\"float: right;\">"
		text +=	"</div>"
		text +="</a>"
		text +="</li>"
	}
	$("#whoaddme").html(text);
	if (list.length !=0){
		$("#friendcount").css("display","block");
		$("#friendcount").html(list.length -1 );
	} ;
	}
function fri_notice_check(data){
	$.ajax({
		url : "/friend/list/friendRead?listnum="+data,
		type: "GET",
		success : function(data){
//				alert("ss");
		},
		error : function(data){
			alert("errrrrrooooorrrrrrrrrrr");
		},
	});
}
function showinformation(data){
	//測試/[[3, admin, 2]]回復檢舉[]討論通知[] <<data
// 	console.log(data);
	var dataindex = data.indexOf("response");
	var dataindex2 = data.indexOf("ban");
	var dataindex3 = data.indexOf("reply");
	var datafriend = data.substring(0,dataindex);
	var dataresponse = data.substring(dataindex,dataindex2);
	var databan = data.substring(dataindex2,dataindex3);
	var datareply = data.substring(dataindex3,data.length);
// 	console.log(datafriend.replace("test/","").length);
// 	console.log(dataresponse.replace("response","").length);
// 	console.log(datadiscuss.replace("discuss","").length);

	var showinfor = "";
	var inforlength = 0;

	
	
if (datafriend.replace("test/","").length > 2 ){
	
	var tempdata = datafriend.replace("[","").replace("[","").replace("test/","")
	var tempdata1 = tempdata.substring(0, tempdata.length-1).split("]");
//		console.log(tempdata1[0]);
	tempdata1[0] = ","+tempdata1[0];
	for (var i = 0 ; i < tempdata1.length -1 ; i++){
		var onerowdata =  tempdata1[i].replace(", [",",").split(",");
//			console.log(onerowdata);
		//onerowdata[1] == 加你的人的NUM
		//onerowdata[2] == 加你的人的ID
		//onerowdata[3] == 好友表格流水號
//			console.log(onerowdata);
		showinfor += "<li>"
		showinfor +="<a href=\"#\">"
		showinfor +=	"<div class=\"col-sm-12 size-adjust\">"
		showinfor +=	"<a  style=\"color:red ; font-size:14px;\">"+onerowdata[2]+"</a>"
		showinfor +=	"<a  style=\" font-size:14px;\">與你成為好友</a>"
		showinfor += "<input type=\"button\" class=\"btn btn-primary\" value=\"Check\" onclick=\"fri_notice_check("+onerowdata[3].trim()+")\" style=\"float: right;\">"
		showinfor +=	"</div>"
		showinfor +="</a>"
		showinfor +="</li>"
		inforlength ++;
	};
};

if (dataresponse.replace("response","").length > 2 ){
	var tempdata = dataresponse.replace("[","").replace("[","").replace("response","")
	var tempdata1 = tempdata.substring(0, tempdata.length-1).split("]");
	tempdata1[0] = ","+tempdata1[0];
	console.log(tempdata);
	for (var i = 0 ; i < tempdata1.length -1 ; i++){
		var onerowdata =  tempdata1[i].replace(", [",",").split(",");
			console.log(onerowdata);
		//onerowdata[1] == 你的NUM
		//onerowdata[2] == 你的檢舉內容
		//onerowdata[3] == 管理員的回覆
		//onerowdata[4] == 投訴表格流水號
			console.log(onerowdata);
		showinfor += "<li>"
		showinfor +="<a href=\"#\">"
		showinfor +=	"<div class=\"col-sm-12 size-adjust\">"
		showinfor += 	"<a  style=\" font-size:14px;\">管理員已回復您的檢舉</a><br>"
		showinfor +=	"<a  style=\"font-size:14px;\">申訴內容<br>"+onerowdata[2]+"</a><br>"
		showinfor +="<a  style=\" font-size:14px;\">回覆內容</a><br>"
		showinfor += "<a  style=\" font-size:14px; color:red  \">"+onerowdata[3]+"</a>"
		showinfor += "<input type=\"button\" class=\"btn btn-primary\" value=\"Check\" onclick=\"response_notice_check("+onerowdata[4].trim()+")\" style=\"float: right;\">"
		showinfor +=	"</div>"
		showinfor +="</a>"
		showinfor +="</li>"
		inforlength ++ ;
	};
	
}

if (databan.replace("ban","").length > 2 ){
	var tempdata = databan.replace("[","").replace("[","").replace("ban","")
	var tempdata1 = tempdata.substring(0, tempdata.length-1).split("]");
	tempdata1[0] = ","+tempdata1[0];
	console.log(tempdata);
	for (var i = 0 ; i < tempdata1.length -1 ; i++){
		var onerowdata =  tempdata1[i].replace(", [",",").split(",");
			console.log(onerowdata);
		//onerowdata[1] == 你的NUM
		//onerowdata[2] == 你的檢舉內容
		//onerowdata[3] == 管理員的回覆
		//onerowdata[4] == 投訴表格流水號
			console.log(onerowdata);
		showinfor += "<li>"
		showinfor +="<a href=\"#\">"
		showinfor +=	"<div class=\"col-sm-12 size-adjust\">"
		showinfor += 	"<a  style=\" font-size:14px;\">停權通知</a><br>"
		showinfor += "<a  style=\" font-size:14px; color:red  \">違規達三次，已被停權</a>"
		showinfor += "<input type=\"button\" class=\"btn btn-primary\" value=\"Check\" onclick=\"ban_notice_check("+onerowdata[3].trim()+")\" style=\"float: right;\">"
		showinfor +=	"</div>"
		showinfor +="</a>"
		showinfor +="</li>"
		inforlength ++ ;
	};
	
}

if (datareply.replace("reply","").length > 2 ){
	var tempdata = datareply.replace("[","").replace("[","").replace("reply","")
	var tempdata1 = tempdata.substring(0, tempdata.length-1).split("]");
	tempdata1[0] = ","+tempdata1[0];
	console.log(tempdata);
	for (var i = 0 ; i < tempdata1.length -1 ; i++){
		var onerowdata =  tempdata1[i].replace(", [",",").split(",");
		//onerowdata[1] == 對方id
		//onerowdata[2] == 樓層
		//onerowdata[3] == 標題
		//onerowdata[4] == 流水號
		showinfor += "<li>"
		showinfor +="<a href=\"#\">"
		showinfor +=	"<div class=\"col-sm-12 size-adjust\">"
		showinfor += 	"<a  style=\" font-size:14px;\">回覆通知</a><br>"
		showinfor += "<a  style=\" font-size:14px; color:red  \">"+onerowdata[1]+"</a><br> <a style=\" font-size:14px;\" >已在您的發文</a><a style=\" font-size:14px; color: blue\">"+onerowdata[3]+"</a><a style=\" font-size:14px;\"> 底下留言";
		showinfor += "<input type=\"button\" class=\"btn btn-primary\" value=\"Check\" onclick=\"reply_notice_check("+onerowdata[4]+")\" style=\"float: right;\">"
		showinfor +=	"</div>"
		showinfor +="</a>"
		showinfor +="</li>"
		inforlength ++ ;
	};
	
}
	
	$("#notifystatus").html(showinfor);
	if (inforlength != 0){
		$("#notifycount").css("display","block");
		$("#notifycount").html(inforlength);
	};
};

function reply_notice_check(num){
	$.ajax({
		url : "/main/reply_notice_check?num=" + num,
		type: "GET",
		success : function(data){
			
		},
		error : function(data){
			alert("aasdasdasd");
		},
	})
}
function ban_notice_check(num){
	$.ajax({
		url : "/main/complain/ban_notice_check?num="+num,
		type: "GET",
		success : function(data){
//				alert("ss");
		},
		error : function(data){
			alert("errrrrrooooorrrrrrrrrrr");
		},
	})
}

function response_notice_check(num){
	$.ajax({
		url : "/main/complain/checknotice?num="+num,
		type: "GET",
		success : function(data){
//				alert("ss");
		},
		error : function(data){
			alert("errrrrrooooorrrrrrrrrrr");
		},
	})
}
//listnum = 好友列表的流水號
// friendnum = 加你的好友number
// 
function readnaccept(listnum,friendnum){
//		alert(listnum);
//		alert('${sessionScope.member.memberNum}');
	$.ajax({
		url : "/friend/list/addnRead?memberid="+'${sessionScope.member.memberNum}'+"&friendid="+friendnum+"&listnum="+listnum,
		type: "GET",
		success : function(data){
//				alert("ss");
		},
		error : function(data){
			alert("errrrrrooooorrrrrrrrrrr");
		},
	})
}
function readndecline(listnum,friendnum){
	$.ajax({
		url : "/friend/list/naddnRead?memberid="+'${sessionScope.member.memberNum}'+"&friendid="+friendnum+"&listnum="+listnum,
		type: "GET",
		success : function(data){
//				alert("ss");
		},
		error : function(data){
			alert("errrrrrooooorrrrrrrrrrr");
		},
	})
};
</script>
<script>
var userlist = null;
var whoaddmedata = null;
$(document).ready(function(){
	var ws = null ;
	var urlPrefix = "ws://localhost:80/websocket/";
	var username = '${sessionScope.member.memberId}'
	var usernum = '${sessionScope.member.memberNum}'
	var url = urlPrefix + username +"/"+ usernum ; 
	ws = new WebSocket(url);
	ws.onopen = function (){
		console.log("建立webSocket連線");
		sessionStorage.setItem("websocketexist",ws);
	}

ws.onmessage = function(event){
	if (event.data.startsWith("用戶上線列表")){
		var users = event.data.replace("用戶上線列表"	,"");
		userlist = users;
		whoismyfriend();
//			console.log(event.data);
	} else if (event.data.startsWith("加好友訊息")){
//			console.log(event.data);
		var whoaddme = event.data.replace("加好友訊息/","");
		showwhoaddme(whoaddme);

	}else if (event.data.startsWith("你沒朋友")){
		$("#friendcount").css("display","none");
		$("#whoaddme").html("你沒有好友邀請唷");
	} else if (event.data.startsWith("test")){
//			console.log(event.data);
		showinformation(event.data);
	} else if (event.data.startsWith("沒有通知")){
		$("#notifycount").css("display","none");
	};

};
});
$(".static__text").click(function(){
	$("#search_friend_icon").click();
});
$("#search_friend_icon").click(function(){
	$(".demo").slideToggle();
	whoismyfriend();
});

$("#search_friend_icon").click(function() {
	
});
</script>
   

