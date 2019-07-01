package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.ChatRoom;

public interface ChatRoomDao  extends JpaRepository<ChatRoom, Integer>  {

}
