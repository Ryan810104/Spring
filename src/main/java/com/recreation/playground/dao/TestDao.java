package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.Test;

public interface TestDao extends JpaRepository<Test, Integer> {
List<Test> findByPhoneOrPassword(String phone,String password);
	
	@Query(value = "select id,password,email,phone,datetime from Test t where t.id>?1 and t.id<?2")
    List<Test> findByIdRange(Integer id1, Integer id2);
 
	public List<Test> findByIdBetween(Integer id1,Integer id2);
	
	
	public List<Test> findByPasswordContainingOrPhoneContaining(String password,String email);
}
