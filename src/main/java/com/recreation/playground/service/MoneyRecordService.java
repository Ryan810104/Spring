package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ChipRecordDao;
import com.recreation.playground.dao.MoneyRecordDao;
import com.recreation.playground.entity.MoneyRecord;

@Service
@Transactional
public class MoneyRecordService {

	@Autowired
	MoneyRecordDao moneyRecordDao;
	
	@Autowired
	ChipRecordDao chipRecordDao;
	
	
	public List<MoneyRecord> getAll() {
		return moneyRecordDao.findAll();
	}
	

	public MoneyRecord insertMoney(MoneyRecord moneyRecord) {
		return moneyRecordDao.save(moneyRecord);
	}
		
	public void delete(MoneyRecord moneyRecord) {
		if(moneyRecord.getMoneyRecordMemberNum()!=null) {
			moneyRecordDao.delete(moneyRecord);
		}
	}
		 
	public MoneyRecord findByMoneyRecordMemberNum(Integer moneyRecordMemberNum) {
		return moneyRecordDao.findByMoneyRecordMemberNum(moneyRecordMemberNum);
	}
	
	public MoneyRecord findByMoneyRecordNum(Integer moneyRecordNum) {
		 return moneyRecordDao.findById(moneyRecordNum).orElse(null);
	}
	
//	
	public List<Object> findBestSeller() {
		return moneyRecordDao.findBestMoneyRecordid();
	}
	
	public List<Object[]> findBestSeller1() {
		return moneyRecordDao.findBestMoneyRecordid1();
	}
	
	
	
}
