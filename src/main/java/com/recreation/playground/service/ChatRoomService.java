package com.recreation.playground.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ChatRoomDao;
import com.recreation.playground.entity.ChatRoom;

@Service
@Transactional
public class ChatRoomService {
	@Autowired
	private ChatRoomDao chatroomdao;
	private ChatRoom chatroom;

	@PersistenceContext
	EntityManager em;
	
	public ChatRoom insert(ChatRoom chatroom) {
		chatroomdao.save(chatroom);
		return chatroom;
	}
	
	@SuppressWarnings("unchecked")
	public List<Object> querymessage(Integer sender,Integer receiver){
		String sql = ("SELECT " + 
                "c.chat_room_memberid AS sender_id, " + 
				"u1.member_id AS sender, " + 
				"c.chat_room_message_to AS receiver_id, " + 
				"u2.member_id AS receiver, " + 
				"c.chat_room_message, " + 
				"c.chat_room_time " + 
				"FROM chat_room c " + 
				"JOIN member u1 ON c.chat_room_memberid =u1.member_num " + 
				"JOIN member u2 ON c.chat_room_message_to = u2.member_num " + 
				"WHERE " + 
				"(u1.member_num = c.chat_room_memberid   and u1.member_num = "+sender+" and " + 
				"u2.member_num = c.chat_room_message_to and u2.member_num = "+receiver +" ) " +
				" or (u1.member_num = c.chat_room_memberid   and u1.member_num = "+receiver+" and "+
				" u2.member_num = c.chat_room_message_to and u2.member_num = "+sender+") "+
				"ORDER BY c.chat_room_time "
				);
		return em.createNativeQuery(sql).getResultList();
	}
}
