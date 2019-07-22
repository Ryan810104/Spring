package com.recreation.playground.service;

import java.util.List;

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
	
	public List<GameBlingRoom> showRoom(){
		
		return dao.findByGameRoomStage(1);
	
	}
	
	
    public GameBlingRoom findbyroomnum(Integer roomnum){
		
    	
		return dao.findByRoomNum(roomnum);
	
	}
	
}
