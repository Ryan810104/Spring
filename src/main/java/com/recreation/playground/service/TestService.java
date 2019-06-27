package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.TestDao;
import com.recreation.playground.entity.Member;
import com.recreation.playground.entity.Test;

@Service
@Transactional
public class TestService {

	@Autowired
	TestDao dao;
	
	@Transactional(readOnly = true)
	public List<Test> getAll() {
		return dao.findAll();
	}

	public void delete(Test test){
		if (test.getId() != null)
			dao.delete(test);
	}
	
	public List <Test> getByPhoneOrPassword(String phone,String password) {
		return dao.findByPhoneOrPassword(phone, password);
	}

	public Test getById(Integer Id) {
		return dao.findById(Id).orElse(null);

	}
	
	public List<Test> getByIdRange(Integer id1,Integer id2){
		return dao.findByIdRange(id1, id2);
	}
	

	public Test findById(Integer Id) {
		return dao.findById(Id).orElse(null);
	}

	public Test save(Test test) {
		return dao.save(test);
	}
	
	public List<Test> findByPasswordOrPhone(String password,String phone) {
		return dao.findByPhoneOrPassword(password, phone);
	}
	
}
