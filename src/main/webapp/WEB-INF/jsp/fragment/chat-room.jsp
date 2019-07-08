<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- public chat room -->
<div class="container">
	<div class="row">
		<div id="Smallchat">
			<div class="FLLayout FLLayout-open FLLayout-expand FLLayout-right"
				id="Friendlist" style="background-color: #3F51B5; color: rgb(255, 255, 255); opacity: 5; border-radius: 10px;">
				<div class="Messenger_messenger">
					<div class="Messenger_header" style="background-color: rgb(22, 46, 98); color: rgb(255, 255, 255);">
						<h4 class="Messenger_prompt">好友列表</h4>
						<span class="friendlist_close_icon"><i class="fas fa-times"></i></span>
					</div>
					<div class="Messenger_content">
						<div class="Messages" style="background-image:url(/resources/img/friendsearchbg.png);">
							<div class="Messages_list" id="myfriends">
								<div class="row">
<!-- 									<div class="col-sm-12"> -->
<!-- 										<div class="well well-sm"> -->
<!-- 											<div class="media"> -->
<!-- 												<a class="thumbnail pull-left" href="#"> <img -->
<!-- 													class="media-object" src="http://placehold.it/80"> -->
<!-- 												</a> -->
<!-- 												<div class="media-body"> -->
<!-- 													<h4 class="media-heading">user</h4> -->
<!-- 													<a class="btn btn-lg btn-default btn-success btn-round"><span -->
<!-- 														class="glyphicon glyphicon-comment"></span><i -->
<!-- 														class="fas fa-comment-dots"></i> </a> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<br>
								</div>
							</div>
						</div>
						<div class="Input Input-blank">
							<input type="text" class="Input_field" placeholder="搜尋好友"
								style="height: 20px;" id="public_Input_field">
							<button class="Input_button Input_button-send" id="search_friend">
								<div class="Icon" style="color: red; width: 18px; height: 18px;">
									<i class="fab fa-google"></i>
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- chat_room_1_icon -->
			<div class="Layout Layout-open Layout-expand Layout-right"
				id="chat_room1_layout"
				style="background-color: #3F51B5; color: rgb(255, 255, 255); opacity: 5; border-radius: 10px;">
				<div class="Messenger_messenger">
					<div class="Messenger_header" id="Messenger_chat_room_header"
						style="background-color: rgb(22, 46, 98); color: rgb(255, 255, 255);">
						<h4 class="Messenger_prompt" id="chat_room_1_icon_id">userid
							position</h4>
							<span  class="chat_min_icon" id="chat_min_icon_room1"><i class="fas fa-minus"></i></span>
						<span class="chat_close_icon" id="chat_close_icon_room1"><i class="fas fa-times"></i></span>
					</div>
					<div class="Messenger_content">

						<div class="Messages" id="Messages1">

							<div class="lds-roller">
								<div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div>
							</div>
						</div>
						<div class="Input Input-blank">

							<input type="text" class="Input_field"
								id="chat_room1_messageinput" placeholder="Send a message..."
								style="height: 20px;" onkeypress="return preventreload(event)">
							<button class="Input_button Input_button-send"
								id="input_send_button">
								<div class="Icon" style="width: 18px; height: 18px;">
								<i class="fas fa-share" style="color: cornflowerblue;"></i>
<!-- 									<svg width="57px" height="54px" viewBox="1496 193 57 54" -->
<!-- 										version="1.1" xmlns="http://www.w3.org/2000/svg" -->
<!-- 										xmlns:xlink="http://www.w3.org/1999/xlink" -->
<!-- 										style="width: 18px; height: 18px;"> -->
<!--                   <g id="Group-9-Copy-3" stroke="none" stroke-width="1" -->
<!-- 											fill="none" fill-rule="evenodd" -->
<!-- 											transform="translate(1523.000000, 220.000000) rotate(-270.000000) translate(-1523.000000, -220.000000) translate(1499.000000, 193.000000)"> -->
<!--                     <path -->
<!-- 											d="M5.42994667,44.5306122 L16.5955554,44.5306122 L21.049938,20.423658 C21.6518463,17.1661523 26.3121212,17.1441362 26.9447801,20.3958097 L31.6405465,44.5306122 L42.5313185,44.5306122 L23.9806326,7.0871633 L5.42994667,44.5306122 Z M22.0420732,48.0757124 C21.779222,49.4982538 20.5386331,50.5306122 19.0920112,50.5306122 L1.59009899,50.5306122 C-1.20169244,50.5306122 -2.87079654,47.7697069 -1.64625638,45.2980459 L20.8461928,-0.101616237 C22.1967178,-2.8275701 25.7710778,-2.81438868 27.1150723,-0.101616237 L49.6075215,45.2980459 C50.8414042,47.7885641 49.1422456,50.5306122 46.3613062,50.5306122 L29.1679835,50.5306122 C27.7320366,50.5306122 26.4974445,49.5130766 26.2232033,48.1035608 L24.0760553,37.0678766 L22.0420732,48.0757124 Z" -->
<!-- 											id="sendicon" fill="#96AAB4" fill-rule="nonzero"></path> -->
<!--                   </g> -->
<!--                 </svg> -->
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<!--===============CHAT ON BUTTON STRART===============-->
			<div class="chat_on_box">
				<!-- chat_room_4 -->
				<div class="chat_on" id="chat_room_4" style="visibility: hidden">
					<span class="chat_on_icon" style="line-height: 0.8rem;"> <i
						class="fa fa-comments fa-xs" aria-hidden="true"></i></span>
				</div>
				<br>
				<!-- chat_room_3 -->
				<div class="chat_on" id="chat_room_3" style="visibility: hidden">
					<span class="chat_on_icon" style="line-height: 0.8rem;"> <i
						class="fa fa-comments fa-xs" aria-hidden="true"></i></span>
				</div>
				<br>
				<!-- chat_room_2 -->
				<div class="chat_on" id="chat_room_2" style="visibility: hidden">
					<span class="chat_on_icon" style="line-height: 0.8rem;"> <i
						class="fa fa-comments fa-xs" aria-hidden="true"></i></span>
				</div>
				<br>
				<!-- chat_room_1_icon -->
				
				<div class="" id="chat_room_1_icon" style="visibility: hidden">
<!-- 					<span class="chat_on_icon" style="line-height: 0.8rem;"> <i -->
<!-- 						class="fa fa-comments fa-xs" aria-hidden="true"></i></span> -->
				<img class="media-object-chat-icon" src="">
				<!-- <c:url value='/admin/memberBeans/getPicture/2' /> -->
				</div>
				<br>
				<!-- chat_room_public -->
				
				<div class="search_friend" id="search_friend_icon"
					style="min-height: 44.4px;">
					<span class="chat_on_icon" style="line-height: 1.8rem;"> <!--     <i class="fa fa-comments fa-xs" aria-hidden="true"></i>	 -->
						<i class="fas fa-user-friends fa-xs" aria-hidden="true"></i>

					</span>
				</div>
			</div>
			<!--===============CHAT ON BUTTON END===============-->
		</div>
	</div>
</div>
<link rel="stylesheet" href="/resources/css/chat-room.css">

<script>
	//declare global variable to presist the value from function opencontact(sender,receiver)
	var sender0 = 0;
	var receiver0 = 0;

	//1. link sender and receiver 
	function opencontact(sender, receiver) {
	//1-1. 儲存使用者資料和聊天視窗狀態
		localStorage.setItem("Connection",true);
		localStorage.setItem("layout_chatroom_status", true);
		localStorage.setItem("sendersession", sender);
		localStorage.setItem("receiversession", receiver);
		$(".media-object-chat-icon").attr("src","/admin/memberBeans/getServerPicture/"+ localStorage.getItem("receiversession") );
		$("#chat_room_1_icon").css("visibility", "visible");
		$.get("/friend/list/getreceiversid?memberid=" + receiver, function(
				Jdata) {
			$("#chat_room_1_icon_id").html((Jdata[0][1]));
		});
		$("#chat_room1_layout").toggle();

		//2. keep Local variable into Global variable
		sender0 = sender;
		receiver0 = receiver;
		//3. use long polling to fetch the message 
		readmessageInterval();
		setTimeout(function() {
			clicksendbutton();
		}, 3050);
	};
	
	function readmessage() {
		$.ajax({
			url : "/chatroom/querymessage?sender=" + sender0 + "&receiver="
					+ receiver0,
			success : function(data) {
				var dataL = data.length;
				$("#Messages1").empty();
				for (var i = 0; i < dataL; i++) {
					var text = "";
					var time = data[i][5].substr(11, 8).replace("T", "")
							.replace("-", "/");
					if (data[i][0] == sender0) {
						text = "<div class=\"msg_cotainer\">" + data[i][4]
								+ "<span class=\"msg_time\">" + time
								+ "</span></div>";
					} else {
						text = "<div class=\"msg_cotainer_send\">" + data[i][4]
								+ "<span class=\"msg_time_send\">" + time
								+ "</span></div>";
					}
					$("#Messages1").append(text);
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
	//prevent from pressing enter to reload the page. 
	function preventreload(e) {
		if (e.keyCode == 13) {
			enter();
			return false;
		}
	}
</script>
<script>
	function enter() {
		if ($("#chat_room1_messageinput").val() == "") {
			return;
		}
		$.get(
				"/chatroom/sendmessage?memberid=" + sender0 + "&sendto="
						+ receiver0 + "&message="
						+ $("#chat_room1_messageinput").val(), function(Jdata) {
				});
		var text = $("<div class=\"msg_cotainer\"></div>").text(
				$("#chat_room1_messageinput").val());
		$("#Messages1").append(text);
		$("#chat_room1_messageinput").val("");
		var objDiv = document.getElementById("Messages1");
		objDiv.scrollTop = objDiv.scrollHeight;
	}
	$("#input_send_button").click(function() {
		clicksendbutton();
	});
	function clicksendbutton() {
		if ($("#chat_room1_messageinput").val() == "") {
			var objDiv = document.getElementById("Messages1");
			objDiv.scrollTop = objDiv.scrollHeight;
			return;
		}
		$.get(
				"/chatroom/sendmessage?memberid=" + sender0 + "&sendto="
						+ receiver0 + "&message="
						+ $("#chat_room1_messageinput").val(), function(Jdata) {
				});
		var text = $("<div class=\"msg_cotainer\"></div>").text(
				$("#chat_room1_messageinput").val());
		$("#Messages1").append(text);
		$("#chat_room1_messageinput").val("");
		var objDiv = document.getElementById("Messages1");
		objDiv.scrollTop = objDiv.scrollHeight;
	};
</script>
<script>
//////////////////////////
//	用localstorage判斷
//   跳轉頁面且視窗打開時
//       呈現的畫面
//////////////////////////

if (localStorage.getItem("layout_chatroom_status")) {
		opencontact(localStorage.getItem("sendersession"), localStorage
				.getItem("receiversession"));
		readmessage();
		setTimeout(function() {
			clicksendbutton();
		}, 50);
	} else if (localStorage.getItem("Connection")){
		$("#chat_room_1_icon").css("visibility", "visible");
	}

	$(document).ready(function() {
		$("#chat_room_1_icon").click(function() {
			localStorage.setItem("chatroomopen", "true");
			$("#chat_room_1_icon").css("visibility", "visible");
			opencontact(localStorage.getItem("sendersession"), localStorage
					.getItem("receiversession"));
		});
		$("#search_friend_icon").click(function() {
			
			$("#Friendlist").toggle();
			$("#search_friend_icon").hide(300);
			$("#search_friend_icon").show(300);
			$("#search_friend").click();
		});
		$("#chat_min_icon_room1").click(function() {
// 			$("#Friendlist").hide();
			$("#search_friend_icon").show(300);
			$("#chat_room1_layout").hide();
			$("#chat_room_1_icon").show(300);
			localStorage.removeItem("layout_chatroom_status");
			
		});
		$("#chat_close_icon_room1").click(function() {
			$("#search_friend_icon").show(300);
			$("#chat_room1_layout").hide();
			$("#chat_room_1_icon").css("visibility", "hidden");
			localStorage.removeItem("layout_chatroom_status");
			localStorage.removeItem("Connection");
			localStorage.removeItem("sendersession");
			localStorage.removeItem("receiversession");
		});
		$(".friendlist_close_icon").click(function(){
			$("#Friendlist").hide();
// 			$("#chat_room1_layout").hide();
		});
		$(".media-object-chat-icon").attr("src","/admin/memberBeans/getServerPicture/"+ localStorage.getItem("receiversession") );
	});
</script>
<script type="text/javascript">
/////////////////////////////////
//
//  開啟websocket得取使用者有沒有在線
//
////////////////////////////////
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
			$("#search_friend").click();
			console.log(event.data);
		} else if (event.data.startsWith("加好友訊息")){
 			var whoaddme = event.data.replace("加好友訊息","");
			whoaddmedata = whoaddme.split("/");
			showwhoaddme(whoaddmedata[1]);

	};
	
};
});
	//websocket
	//     $(document).ready(function(){
	//         var urlPrefix ='ws://localhost:80/chat-room/';
	//         var ws = null;
	// //         $('.chat_on').click(function(){
	// //             var username = $('#in_user_name').val();
	//             var username = '${sessionScope.member.memberId}';

	//             var url = urlPrefix + username;
	//             ws = new WebSocket(url);
	//             ws.onopen = function () {
	//                 console.log("建立 websocket 连接...");
	//             };
	//             ws.onmessage = function(event){
	//                 //服务端发送的消息
	//                 $('#public_right').append('<p>'+event.data+'\n');
	//             };
	//             ws.onclose = function(){
	//                  $('#message_content').append('用户['+username+'] 已经离开聊天室!');
	//                  console.log("关闭 websocket 连接...");
	//             }
	// //         });
	//         //客户端发送消息到服务器
	//         $('#public_button').click(function(){
	//             var msg = $('#public_Input_field').val();
	//             console.log('${userId}');
	//             if(ws){
	//                 ws.send(msg);
	//             }
	//             $("#public_Input_field").val(" ");
	//         });
	//         // 退出聊天室
	//         $('#btn_exit').click(function(){
	//             if(ws){
	//                 ws.close();
	//             }
	//         });

	//         $("#input_send_button").click(function() {
	//            var sender = $("#in_sender").val();
	//            var receive = $("#in_receive").val();
	//             var message = $("#in_point_message").val();
	//            $.get("/chat-room/"+sender+"/to/"+receive+"?message="+message,function() {
	//               alert("发送成功...")
	//            })
	//         })

	//     })
	function showwhoaddme(data){

// data = {1=abcdefgh, 3=admin, 4=admin2}
	var text = "";
	var list = data.replace("{","").replace("}","").split(",");
	for (var i = 0 ; i < list.length ; i++){
		var finaldata = list[i].split("=");
		text += "<li>"
		text +="<a href=\"#\">"
		text +=	"<div class=\"col-sm-12 size-adjust\">"
		text +=	"<a  style=\"color:red ; font-size:14px;\">"+finaldata[1]+"</a>"
		text +=	"<a  style=\" font-size:14px;\">向你發出好友邀請</a>"
		text +=	"</div>"
		text +="</a>"
		text +="</li>"
	}
	$("#whoaddme").html(text);
	if (list.length !=0){
		$("#friendcount").css("display","block");
		$("#friendcount").html(list.length);
	} else {
		$("#friendcount").css("display","none");
	}
	
	}
	$("#search_friend").click(function() {
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
// 					alert(list[j]);
					if (Jdata[i][1] == list[j].trim()){
						online = "online_border";
						break;
					} else {
						online = "offline_border";
					}
				}
				
// 				list.forEach(function(element){
// 					if(Jdata[i][1] == element.trim()){
// 						online = "online_border";
// 						break;
// 					} else{
// 						online = "offline_border";
// 						alert("not ok");
// 					}
// 				});
				
			myfriends += "<div class=\"row\">"
			myfriends += "<div class=\"col-sm-12 "+online+"\" >"
			myfriends += "<div class=\"well well-sm\">"
			myfriends += "<div class=\"media\">"
			myfriends += "<a class=\"thumbnail pull-left\" href=\"#\"> <img"
			myfriends += "	class=\"media-object1\" src=\"<c:url value='/admin/memberBeans/getServerPicture/"+Jdata[i][0]+"' />\">";
			myfriends += "</a>"
			myfriends += "<div class=\"media-body\">"
			myfriends += "<h4 class=\"media-heading\">"
							+ Jdata[i][1] + "</h4>"
			myfriends += "<a onclick=\"talktofromclickbutton("
						+ Jdata[i][0]
						+ ")\" class=\"btn btn-md btn-default btn-success btn-round\"><span"
			myfriends += " ></span>"
			myfriends +=	" <i class=\"fas fa-home\"></i> </a>";
							
			myfriends += "<a onclick=\"talktofromclickbutton("
							+ Jdata[i][0]
							+ ")\" class=\"btn btn-md btn-default btn-primary btn-round\"><span"
			myfriends += " ></span><i"
			myfriends +=	" class=\"fas fa-comment-dots\"></i> </a>"
			myfriends += "</div></div></div></div></div><hr>"
					}
			$("#myfriends").html(myfriends);
				}
			});
	});
	function talktofromclickbutton(id) {
		var sender = '${sessionScope.member.memberNum}';
		var receiver = id;
		opencontact(sender, receiver);
	}
////////////////////////
//
//		移動聊天室一
//
////////////////////////
	vbool = null;
	$("#Messenger_chat_room_header").mousedown(function (e) {
		vbool = true;
		vHeight = e.pageY;
		vWidth = e.pageX;
		cWdith = vWidth - $("#chat_room1_layout").offset().left;
		//alert("divshow"   $("#show").offset().top   " divvHeight"   vHeight);
// 		alert("高" +  cHeight  + " 寬"  + cWdith);
		});
	$(document).mouseup(function () {
		vbool = false;
		})
		var showWidth = $("#chat_room1_layout").width();
		var documentWidth = $(document).width();
		$(document).mousemove(function (e) {
		if (vbool) {
		var divwidth = e.pageX - cWdith;//視窗要移動到的位置
		if (divwidth < 0) {
		divwidth = 0;
		}
		if (divwidth > documentWidth - showWidth) {
		divwidth = documentWidth - showWidth - 5;
		}
		$("#chat_room1_layout").css({"left": divwidth,});
		}
		})
</script>
</html>