package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.FriendList;

public interface FriendListDao extends JpaRepository<FriendList, Integer> {

}
