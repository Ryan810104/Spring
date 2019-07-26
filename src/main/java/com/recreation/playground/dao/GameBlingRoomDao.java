package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.GameBlingRoom;

public interface GameBlingRoomDao extends JpaRepository<GameBlingRoom, Integer> {

	List<GameBlingRoom> findByGameRoomStage(Integer stage);	

	GameBlingRoom findByRoomNum(Integer roomnum);
	
	
	
	
}
