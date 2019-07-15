package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.GameBlingRoom;

public interface GameBlingRoomDao extends JpaRepository<GameBlingRoom, Integer> {

	GameBlingRoom findByGameRoomStage(int stage);

	
	
}
