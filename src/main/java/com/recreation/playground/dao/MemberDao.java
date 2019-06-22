package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Member;

public interface MemberDao extends JpaRepository<Member, Integer> {

<<<<<<< HEAD
	public Member findByIdAndPassword(Integer id,String password);
=======
>>>>>>> branch 'master' of https://github.com/Ryan810104/Spring.git
	List<Member> findByPhoneOrPassword(String phone,String password);

