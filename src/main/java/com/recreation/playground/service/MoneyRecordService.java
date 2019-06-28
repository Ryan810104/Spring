package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.MoneyRecordDao;
import com.recreation.playground.entity.MoneyRecordBeans;

@Service
@Transactional
public class MoneyRecordService {

	@Autowired
	private MoneyRecordDao dao;

	public void delete(MoneyRecordBeans RB) {
		if (RB.getMoneyRecordNum() != null) {
			dao.delete(RB);
		}
	}
//	public void deleteAll() {
//		dao.deleteAll();
//	}

	public void update(MoneyRecordBeans RB) {
		if (RB.getMoneyRecordNum() != null) {
			dao.save(RB);
		}
	}

	public List<MoneyRecordBeans> getAll() {
		return dao.findAll();
	}

	public MoneyRecordBeans findById(Integer moneyRecordNum) {
		return dao.findById(moneyRecordNum).orElse(null);
	}

	public MoneyRecordBeans findByUserId(MoneyRecordBeans RB) {
		return dao.findByMoneyRecordUserId(RB.getMoneyRecordUserId());
	}

	public MoneyRecordBeans findByChipType(MoneyRecordBeans RB) {
		return dao.findByMoneyRecordChipType(RB.getMoneyRecordChipType());
	}

	public MoneyRecordBeans findByMoneyRecordTimeLike(MoneyRecordBeans RB) {
		return dao.findByMoneyRecordTimeLike(RB.getMoneyRecordTime());
	}

	public String tradeOccur(MoneyRecordBeans RB) {
		MoneyRecordBeans insertData = new MoneyRecordBeans();
		insertData.setMoneyRecordUserId(RB.getMoneyRecordUserId());
		insertData.setMoneyRecordChipType(RB.getMoneyRecordChipType());
		insertData.setMoneyRecordAmount(RB.getMoneyRecordAmount());
		dao.save(insertData);
		return "tradeOccur";
	}

}
