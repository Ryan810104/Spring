<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- public chat room -->
<div class="container">
	<div class="row">
	 <div id="Smallchat">
    <div class="Layout Layout-open Layout-expand Layout-right" id="Layout0" style="background-color: #3F51B5;color: rgb(255, 255, 255);opacity: 5;border-radius: 10px;">
      <div class="Messenger_messenger">
        <div class="Messenger_header" style="background-color: rgb(22, 46, 98); color: rgb(255, 255, 255);">
          <h4 class="Messenger_prompt">公開聊天室</h4> <span class="chat_close_icon"><i class="fas fa-times"></i></span> </div>
        <div class="Messenger_content">
          <div class="Messages">
            <div class="Messages_list"></div>
				<div class=" rounded-top border border-success chatbox__body__message--right" id="public_right">
				</div>
				<div class=" rounded-top border border-light chatbox__body__message--left">
				</div>
          </div>
          <div class="Input Input-blank">
            <input type="text" class="Input_field" placeholder="Send a message..." style="height: 20px;" id="public_Input_field">
            <button class="Input_button Input_button-send" id="public_button">
              <div class="Icon" style="width: 18px; height: 18px;">
                <svg width="57px" height="54px" viewBox="1496 193 57 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="width: 18px; height: 18px;">
                  <g id="Group-9-Copy-3" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(1523.000000, 220.000000) rotate(-270.000000) translate(-1523.000000, -220.000000) translate(1499.000000, 193.000000)">
                    <path d="M5.42994667,44.5306122 L16.5955554,44.5306122 L21.049938,20.423658 C21.6518463,17.1661523 26.3121212,17.1441362 26.9447801,20.3958097 L31.6405465,44.5306122 L42.5313185,44.5306122 L23.9806326,7.0871633 L5.42994667,44.5306122 Z M22.0420732,48.0757124 C21.779222,49.4982538 20.5386331,50.5306122 19.0920112,50.5306122 L1.59009899,50.5306122 C-1.20169244,50.5306122 -2.87079654,47.7697069 -1.64625638,45.2980459 L20.8461928,-0.101616237 C22.1967178,-2.8275701 25.7710778,-2.81438868 27.1150723,-0.101616237 L49.6075215,45.2980459 C50.8414042,47.7885641 49.1422456,50.5306122 46.3613062,50.5306122 L29.1679835,50.5306122 C27.7320366,50.5306122 26.4974445,49.5130766 26.2232033,48.1035608 L24.0760553,37.0678766 L22.0420732,48.0757124 Z" id="sendicon" fill="#96AAB4" fill-rule="nonzero"></path>
                  </g>
                </svg>
              </div>
            </button>
          </div>
        </div>
      </div>
    </div>
<!-- chat_room_1 -->
    <div class="Layout Layout-open Layout-expand Layout-right" id="Layout1" style="background-color: #3F51B5;color: rgb(255, 255, 255);opacity: 5;border-radius: 10px;">
      <div class="Messenger_messenger">
        <div class="Messenger_header" style="background-color: rgb(22, 46, 98); color: rgb(255, 255, 255);">
          <h4 class="Messenger_prompt" id="chat_room_1_id">userid position</h4> <span class="chat_close_icon"><i class="fas fa-times"></i></span> </div>
        <div class="Messenger_content">
        
          <div class="Messages" id="Messages1">
            
<div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
          
<!--              <div class="msg_cotainer_send"> -->
<!-- 					Hi Maryam i am good tnx how about you? -->
<!-- 					<span class="msg_time_send">8:55 AM, Today</span> -->
<!-- 			</div> -->
<!-- 			<div class="msg_cotainer"> -->
<!-- 					Hi, how are you samim? -->
<!-- 					<span class="msg_time">8:40 AM, Today</span> -->
<!-- 			</div>	 -->
<!-- 			<div class="msg_cotainer"> -->
<!-- 					Hi, how are you samim?asdasdasdasdasdsadsad -->
<!-- 					<span class="msg_time">8:40 AM, Today</span> -->
<!-- 			</div> -->
<!-- 				<div class=" rounded-top border border-success chatbox__body__message--right" id="chat_room_content">5656	 -->
<!-- 				</div> -->
<!-- 				<div class=" rounded-top border border-light chatbox__body__message--left"> -->
<!-- 				</div> -->
          </div>
          <div class="Input Input-blank">

            <input type="text" class="Input_field" id="chat_room1_messageinput" placeholder="Send a message..." style="height: 20px;" onkeypress="return preventreload(event)">
            <button class="Input_button Input_button-send" id="input_send_button">
              <div class="Icon" style="width: 18px; height: 18px;">
                <svg width="57px" height="54px" viewBox="1496 193 57 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="width: 18px; height: 18px;">
                  <g id="Group-9-Copy-3" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(1523.000000, 220.000000) rotate(-270.000000) translate(-1523.000000, -220.000000) translate(1499.000000, 193.000000)">
                    <path d="M5.42994667,44.5306122 L16.5955554,44.5306122 L21.049938,20.423658 C21.6518463,17.1661523 26.3121212,17.1441362 26.9447801,20.3958097 L31.6405465,44.5306122 L42.5313185,44.5306122 L23.9806326,7.0871633 L5.42994667,44.5306122 Z M22.0420732,48.0757124 C21.779222,49.4982538 20.5386331,50.5306122 19.0920112,50.5306122 L1.59009899,50.5306122 C-1.20169244,50.5306122 -2.87079654,47.7697069 -1.64625638,45.2980459 L20.8461928,-0.101616237 C22.1967178,-2.8275701 25.7710778,-2.81438868 27.1150723,-0.101616237 L49.6075215,45.2980459 C50.8414042,47.7885641 49.1422456,50.5306122 46.3613062,50.5306122 L29.1679835,50.5306122 C27.7320366,50.5306122 26.4974445,49.5130766 26.2232033,48.1035608 L24.0760553,37.0678766 L22.0420732,48.0757124 Z" id="sendicon" fill="#96AAB4" fill-rule="nonzero"></path>
                  </g>
                </svg>
              </div>
            </button>

          </div>
        </div>
      </div>
    </div>
    <!--===============CHAT ON BUTTON STRART===============-->
    <div class="chat_on_box">
<!-- chat_room_4 -->
    <div class="chat_on" id="chat_room_4"  style="visibility:hidden"> 
    <span class="chat_on_icon" style="line-height:0.8rem;">
    <i class="fa fa-comments fa-xs" aria-hidden="true"></i></span> </div><br>
<!-- chat_room_3 -->
    <div class="chat_on"  id="chat_room_3" style="visibility:hidden"> 
    <span class="chat_on_icon"  style="line-height:0.8rem;">
    <i class="fa fa-comments fa-xs" aria-hidden="true"></i></span> </div><br>
<!-- chat_room_2 -->
    <div class="chat_on"  id="chat_room_2" style="visibility:hidden"> 
    <span class="chat_on_icon" style="line-height:0.8rem;">
    <i class="fa fa-comments fa-xs" aria-hidden="true"></i></span> </div><br>
<!-- chat_room_1 -->
    <div class="chat_on" id="chat_room_1" style="visibility:hidden"> 
    <span class="chat_on_icon"  style="line-height:0.8rem;">
    <i class="fa fa-comments fa-xs" aria-hidden="true"></i></span> </div><br>
<!-- chat_room_public -->
    <div class="chat_on" id="chat_room_0" > 
    <span class="chat_on_icon" style="line-height:0.8rem;">
    <i class="fa fa-comments fa-xs" aria-hidden="true"></i></span> </div>
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
//2. use long polling to fetch the message 
//3. keep Local variable into Global variable
function opencontact(sender,receiver){
	$("#chat_room_1").css("visibility","visible");
	$.get("/friend/list/getreceiversid?memberid="+receiver,function(Jdata){
		$("#chat_room_1_id").html((Jdata[0][1]));
	});
  $("#Layout1").toggle();
  $("#chat_room_1").hide(300);

setInterval(function(){
  $.ajax({ url: "/chatroom/querymessage?sender="+sender+"&receiver="+receiver, success: function(data){
      //Update your dashboard gauge
      var dataL = data.length;
      $("#Messages1").empty();
      for(var i = 0 ; i < dataL ; i++ ){
          var text = "";
		  var time = data[i][5].substr(11,8).replace("T","").replace("-","/");
      	if (data[i][0] == sender){
      	text = "<div class=\"msg_cotainer\">"+data[i][4]+"<span class=\"msg_time\">"+time+"</span></div>";
//           text = $("<div class=\"msg_cotainer\"></div>").text(data[i][4]);
//           time = $("<span class=\"msg_time\"></span>").text(data[i][5]);
      	} else{
      	text = "<div class=\"msg_cotainer_send\">"+data[i][4]+"<span class=\"msg_time_send\">"+time+"</span></div>";
//       	text = $("<div class=\"msg_cotainer_send\"></div>").text(data[i][4]);
//       	time = $("<span class=\"msg_time_send\"></span>").text(data[i][5]);
      	}
      	$("#Messages1").append(text);
//       	$(".Messages").append(time);
      }
  }, dataType: "json"});
}, 3000);
	sender0 = sender;
	receiver0 = receiver;
}
//prevent from pressing enter to reload the page. 
function preventreload(e){
    if (e.keyCode == 13) {	
    	enter();
        return false;
    }
}
</script>
<script>
function enter(){
	$.get("/chatroom/sendmessage?memberid="+sender0+"&sendto="+receiver0+"&message="+$("#chat_room1_messageinput").val(),function(Jdata){
	});
	var text = $("<div class=\"msg_cotainer\"></div>").text($("#chat_room1_messageinput").val());
	$("#Messages1").append(text);
	$("#chat_room1_messageinput").val("");
	var objDiv = document.getElementById("Messages1");
	objDiv.scrollTop = objDiv.scrollHeight;
}
$("#input_send_button").click(function(){
//		alert(sender0+","+receiver0);
	$.get("/chatroom/sendmessage?memberid="+sender0+"&sendto="+receiver0+"&message="+$("#chat_room1_messageinput").val(),function(Jdata){
	});
	var text = $("<div class=\"msg_cotainer\"></div>").text($("#chat_room1_messageinput").val());
	$("#Messages1").append(text);
	$("#chat_room1_messageinput").val("");
	var objDiv = document.getElementById("Messages1");
	objDiv.scrollTop = objDiv.scrollHeight;
});
//room1 chat:
	$("#input_send_button").click(function(){
// 		alert(sender0+","+receiver0);
		$.get("/chatroom/sendmessage?memberid="+sender0+"&sendto="+receiver0+"&message="+$("#chat_room1_messageinput").val(),function(Jdata){
		});
		var text = $("<div class=\"msg_cotainer\"></div>").text($("#chat_room1_messageinput").val());
		$("#Messages1").append(text);
		$("#chat_room1_messageinput").val("");
		var objDiv = document.getElementById("est1");
		objDiv.scrollTop = objDiv.scrollHeight;
	});
//listening message

</script>
<script>

//CHAT BOOT MESSENGER////////////////////////


$(document).ready(function(){
	 $("#chat_room_1").click(function(){
	     $("#Layout1").toggle();
	     $("#chat_room_1").hide(300);
	 });
 $("#chat_room_0").click(function(){
     $("#Layout0").toggle();
     $("#chat_room_0").hide(300);
 });
 $(".chat_close_icon").click(function(){
     $("#Layout0").hide();
     $("#chat_room_0").show(300);
	 $("#Layout1").hide();
	 $("#chat_room_1").show(300);
 });
});

</script>
<script type="text/javascript">
    $(document).ready(function(){
        var urlPrefix ='ws://localhost:80/chat-room/';
        var ws = null;
//         $('.chat_on').click(function(){
//             var username = $('#in_user_name').val();
            var username = '${sessionScope.member.memberId}';
            
            var url = urlPrefix + username;
            ws = new WebSocket(url);
            ws.onopen = function () {
                console.log("建立 websocket 连接...");
            };
            ws.onmessage = function(event){
                //服务端发送的消息
                $('#public_right').append('<p>'+event.data+'\n');
            };
            ws.onclose = function(){
                 $('#message_content').append('用户['+username+'] 已经离开聊天室!');
                 console.log("关闭 websocket 连接...");
            }
//         });
        //客户端发送消息到服务器
        $('#public_button').click(function(){
            var msg = $('#public_Input_field').val();
            console.log('${userId}');
            if(ws){
                ws.send(msg);
            }
            $("#public_Input_field").val(" ");
        });
        // 退出聊天室
        $('#btn_exit').click(function(){
            if(ws){
                ws.close();
            }
        });

//         $("#input_send_button").click(function() {
//            var sender = $("#in_sender").val();
//            var receive = $("#in_receive").val();
//             var message = $("#in_point_message").val();
//            $.get("/chat-room/"+sender+"/to/"+receive+"?message="+message,function() {
//               alert("发送成功...")
//            })
//         })

    })
</script>
</html>