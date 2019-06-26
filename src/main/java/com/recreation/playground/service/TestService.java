package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.TestDao;
import com.recreation.playground.entity.test;

@Service
@Transactional
public class TestService {

	@Autowired
	private TestDao memberdao;

	@Transactional(readOnly = true)
	public List<test> getAll() {
		return memberdao.findAll();
	}

	public void delete(test member) {
		if (member.getId() != null)
			memberdao.delete(member);
	}
	
	public List <test> getByPhoneOrPassword(String phone,String password) {
		return memberdao.findByPhoneOrPassword(phone, password);
	}

	public test getById(Integer Id) {
		return memberdao.findById(Id).orElse(null);

	}

	public test findById(Integer Id) {
		return memberdao.findById(Id).orElse(null);
	}

	public test save(test member) {
		return memberdao.save(member);
	}
	
	public test getidpsd(Integer id , String password) {
		return memberdao.findByIdAndPassword(id, password);
	}

}
