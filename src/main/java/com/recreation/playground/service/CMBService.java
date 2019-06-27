package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.CMBDao;
import com.recreation.playground.entity.CMBBean;

@Service
public class CMBService {

	@Autowired
	private CMBDao dao;
	
	public void insert(CMBBean beans) {
		dao.save(beans);
	}
	
	public void update(CMBBean beans) {
		dao.save(beans);
	}
	
	public void delete(CMBBean beans) {
		dao.delete(beans);
	}
	
}

 