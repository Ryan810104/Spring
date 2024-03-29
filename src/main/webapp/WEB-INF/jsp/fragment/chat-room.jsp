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
			<img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMjEuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTI7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iNTEycHgiIGhlaWdodD0iNTEycHgiPgo8Zz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNDQ0NDQ0M7IiBkPSJNNDEyLjk4OSw0Ni4wOTR2MTkuOTcxTDI2NS43MDIsODguNjY4TDk5LjAxMSw2Ni4wNjVWNDYuMDk0Qzk5LjAxMSwyMC42MzEsMTE5LjY1NCwwLDE0NS4xMywwICAgaDIyMS43NEMzOTIuMzMzLDAsNDEyLjk4OSwyMC42MzEsNDEyLjk4OSw0Ni4wOTR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojQ0NDQ0NDOyIgZD0iTTQxMi45ODksNDQzLjE4M3YyMi43MjNjMCwyNS40NjItMjAuNjU2LDQ2LjA5NC00Ni4xMTksNDYuMDk0aC0xMi44MzRIMTQ1LjEzICAgYy0yNS40NzYsMC00Ni4xMTktMjAuNjMxLTQ2LjExOS00Ni4wOTR2LTIyLjcyM0wyNTYsNDIxLjUwNUw0MTIuOTg5LDQ0My4xODN6Ii8+CjwvZz4KPHJlY3QgeD0iOTkuMDEiIHk9IjY2LjA2IiBzdHlsZT0iZmlsbDojNEQ0RDREOyIgd2lkdGg9IjMxMy45OCIgaGVpZ2h0PSIzNzcuMTIiLz4KPHBvbHlnb24gc3R5bGU9ImZpbGw6IzNCM0IzQjsiIHBvaW50cz0iNDEyLjk4OSw0NDMuMTgzIDE0Ni43OTYsNDQzLjE4MyAzNzQuMDU4LDY3Ljc0NCAzNzQuMDU4LDY2LjA2NSA0MTIuOTg5LDY2LjA2NSAiLz4KPGc+Cgk8cG9seWdvbiBzdHlsZT0iZmlsbDojRkZBNjM4OyIgcG9pbnRzPSIzNTQuNzYyLDE4NC4xMzQgMTU3LjA5OCwxODQuMTM0IDI1NS45MywyODIuOTY2ICAiLz4KCTxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGRkE2Mzg7IiBwb2ludHM9IjIxMi45NTUsMjYxLjIwNSAxNDYuNDkxLDE5NC43NDEgMTQ2LjQ5MSwzMjcuNjU4ICAiLz4KCTxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGRkE2Mzg7IiBwb2ludHM9IjM2NS42NDcsMTg0LjM1NCAzNjUuNjQ3LDE4NC4xMzQgMzY1LjQyNiwxODQuMTM0ICAiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNGRkE2Mzg7IiBkPSJNMzU0Ljg1MiwzMzguMzU0bC02Ni41NDgtNjYuNTQ4bC0yNy4wNzEsMjcuMDcxYy0xLjQ2NSwxLjQ2NC0zLjM4NSwyLjE5Ny01LjMwNCwyLjE5NyAgIGMtMS45MTksMC0zLjgzOS0wLjczMi01LjMwNC0yLjE5N2wtMjcuMDY0LTI3LjA2NGwtNjYuNTUzLDY2LjU0MmgxOTcuODQ0VjMzOC4zNTR6Ii8+Cgk8cG9seWdvbiBzdHlsZT0iZmlsbDojRkZBNjM4OyIgcG9pbnRzPSIzNjUuMzM2LDMzOC4zNTQgMzY1LjY0NywzMzguMzU0IDM2NS42NDcsMzM4LjA0MyAgIi8+Cgk8cG9seWdvbiBzdHlsZT0iZmlsbDojRkZBNjM4OyIgcG9pbnRzPSIzNjUuNjQ3LDE5NC40NjMgMjk4LjkxMSwyNjEuMTk4IDM2NS42NDcsMzI3LjkzNSAgIi8+Cgk8cG9seWdvbiBzdHlsZT0iZmlsbDojRkZBNjM4OyIgcG9pbnRzPSIxNDYuNDkxLDMzOC4zMjIgMTQ2LjQ5MSwzMzguMzU0IDE0Ni41MjMsMzM4LjM1NCAgIi8+CjwvZz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojODA4MDgwOyIgY3g9IjI1NiIgY3k9IjQ3OS4yMyIgcj0iMjAuNTAzIi8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo="  style="width:4rem;"/>
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
   

