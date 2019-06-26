package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.test;

public interface TestDao extends JpaRepository<test, Integer> {

	public test findByIdAndPassword(Integer id,String password);
	
	List<test> findByPhoneOrPassword(String phone,String password);
	
}

