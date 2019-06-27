package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.MemberMailBeans;

public interface MemberMailDao extends JpaRepository<MemberMailBeans, Integer>{
	
	public MemberMailBeans findByMailMemberId(String memberid);
	
	public MemberMailBeans findByMailReceiver(String receiver);	
	
	
}
