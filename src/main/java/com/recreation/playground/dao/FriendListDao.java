package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.FriendList;

public interface FriendListDao extends JpaRepository<FriendList, Integer> {
	@Query(value="SELECT friend_list_memberid , friend_list_friendid FROM friend_list WHERE friend_list_friendid = ?1", nativeQuery = true)
	List<Object> findCurrentId(int membernumber);
}
