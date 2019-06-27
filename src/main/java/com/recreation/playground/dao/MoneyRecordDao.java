package com.recreation.playground.dao;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.MoneyRecordBeans;

public interface MoneyRecordDao extends JpaRepository<MoneyRecordBeans, Integer>{
	
	public MoneyRecordBeans findByUserId(String type);
	
	public MoneyRecordBeans findByChipType(String type);
	
	public MoneyRecordBeans findByMoneyRecordTimeLike(Date date);

}
