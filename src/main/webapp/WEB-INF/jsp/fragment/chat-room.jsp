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
			<div class="static__text">Pull white sidebar to the right</div>
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
			<i class="fas fa-user-friends fa-xs" aria-hidden="true"></i>
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
	var showinfor = "";
	var tempdata = data.replace("[","").replace("[","").replace("測試/","")
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
	};
	$("#notifystatus").html(showinfor);
	if (tempdata1.length != 0){
		$("#notifycount").css("display","block");
		$("#notifycount").html(tempdata1.length -1 );
	};
};
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
	} else if (event.data.startsWith("測試")){
//			console.log(event.data);
		showinformation(event.data);
	} else if (event.data.startsWith("沒有通知")){
		$("#notifycount").css("display","none");
	};

};
});

$("#search_friend_icon").click(function(){
	$(".demo").slideToggle();
});

$("#search_friend_icon").click(function() {
	whoismyfriend();
});
</script>
   

