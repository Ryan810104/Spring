package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.SaveGameDataDao;
import com.recreation.playground.entity.Member;
import com.recreation.playground.entity.SaveGameData;

@Service
@Transactional
public class SaveGameDataService {
	@Autowired
	private SaveGameDataDao dao;
	
	public void SaveGameData(SaveGameData SGD) {		
		dao.save(SGD);	
		
	}
	
	
	
	
}
