package com.recreation.playground.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.ChatRoom;
import com.recreation.playground.service.ChatRoomService;

@Controller
@RequestMapping("/chatroom")
public class ChatRoomController {
	@Autowired
	private ChatRoomService chatroomservice;
	
	@RequestMapping("/sendmessage")
	@ResponseBody
	public ChatRoom insert(Integer memberid,Integer sendto, String message) {
		ChatRoom a = new ChatRoom();
		a.setChatroommemberid(memberid);
		a.setChatroommessageto(sendto);
		a.setChatroommessage(message);
		chatroomservice.insert(a);
		return a;
	}
	@ResponseBody
	@RequestMapping("/querymessage")
	public List<Object> querymessage(Integer sender,Integer receiver){
		return chatroomservice.querymessage(sender, receiver);
	}

}
