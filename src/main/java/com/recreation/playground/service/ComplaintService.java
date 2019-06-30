package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.ComplaintDao;
import com.recreation.playground.entity.Complaint;

@Service
public class ComplaintService {

	@Autowired
	private ComplaintDao dao;
	
	public void insert(Complaint beans) {
		dao.save(beans);
	}
	
	public void update(Complaint beans) {
		dao.save(beans);
	}
}
