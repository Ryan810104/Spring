package com.recreation.playground.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.MemberMailBeans;

public interface MemberMailDao extends JpaRepository<MemberMailBeans, Integer>{
	
	@Select("SELECT mail_title FROM member_mail WHERE mail_member_id=#{name} ")
	public MemberMailBeans findByMailMemberId(@Param("name") String memberid);
	
	@Select("SELECT mail_title FROM member_mail WHERE mail_receiver=#{name} ")
	public MemberMailBeans findByMailReceiver(@Param("name") String receiver);	
	
	public MemberMailBeans findByMailTitle(String title);
	
	
}
