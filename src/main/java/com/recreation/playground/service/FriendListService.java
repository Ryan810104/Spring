package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.FriendListDao;
import com.recreation.playground.entity.FriendList;

@Service
@Transactional
public class FriendListService {
	@Autowired
	private FriendListDao friendlistdao;
	private FriendList friendlist;
	
	@Transactional(readOnly = true)
	public List<FriendList> getAll(){
		return friendlistdao.findAll();
	}
	
	public void delete(FriendList friendlist) {
		if (friendlist.getFriendlistnum() != null) {
			friendlistdao.delete(friendlist);
		}
	}
	public FriendList getById(Integer friendlistmemberid) {
		return friendlistdao.findById(friendlistmemberid).orElse(null);
	}
	public FriendList save(FriendList friendlist) {
		return friendlistdao.save(friendlist);
	}
}
