package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Member;

public interface MemberDao extends JpaRepository<Member, Integer> {

	

}
