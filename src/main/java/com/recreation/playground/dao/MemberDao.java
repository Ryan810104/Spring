package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Member;

public interface MemberDao extends JpaRepository<Member, Integer> {

	public Member findByIdAndPassword(Integer id,String password);
	
	List<Member> findByPhoneOrPassword(String phone,String password);
	
}

