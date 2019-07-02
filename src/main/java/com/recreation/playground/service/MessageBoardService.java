package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.MessageBoardDao;
import com.recreation.playground.entity.MessageBoard;

@Service
@Transactional
public class MessageBoardService {

	@Autowired
	private MessageBoardDao dao;
	
	public void delete(MessageBoard msg) {
		if(msg.getMboardMessageNum()!=null) {
			dao.delete(msg);
		}
		
	}
	
	public List<MessageBoard> getAll(){
		return dao.findAll();
	}
	
	public String insert(MessageBoard message) {
		MessageBoard insertData=new MessageBoard();
		insertData.setMboardMemberId(message.getMboardMemberId());
		insertData.setMboardTitle(message.getMboardTitle());
		insertData.setMboardMessage(message.getMboardMessage());
		dao.save(insertData);
		
		return "insertok";
	}
	
	
	
	
}
