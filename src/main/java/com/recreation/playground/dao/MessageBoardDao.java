package com.recreation.playground.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.MessageBoard;

public interface MessageBoardDao extends JpaRepository<MessageBoard,Integer> {

}
