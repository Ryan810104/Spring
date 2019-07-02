package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.MoneyRecordBeans;

public interface MoneyRecordDao extends JpaRepository<MoneyRecordBeans, Integer>{
	
	public MoneyRecordBeans findByMoneyRecordUserId(String type);
	
	public MoneyRecordBeans findByMoneyRecordChipType(String type);
	
	public MoneyRecordBeans findByMoneyRecordTimeLike(java.util.Date date);


}
