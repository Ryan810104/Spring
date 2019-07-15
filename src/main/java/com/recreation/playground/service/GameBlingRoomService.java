package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.GameBlingRoomDao;
import com.recreation.playground.entity.GameBlingRoom;

@Service
@Transactional
public class GameBlingRoomService {
	@Autowired
	private GameBlingRoomDao dao;
	
	
	public void SaveGameData(GameBlingRoom GBR) {		
		dao.save(GBR);		
	}
	
	public GameBlingRoom showRoom(int stage){
		
		return dao.findByGameRoomStage(stage);
				
		
	}
	
}
