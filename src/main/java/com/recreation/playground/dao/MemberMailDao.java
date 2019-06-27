package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.MemberMailBeans;

public interface MemberMailDao extends JpaRepository<MemberMailBeans, Integer>{
	
	public MemberMailBeans findBymemberId(String memberid);
	
	public MemberMailBeans findByReceiver(String receiver);	
	
	
}
