package com.recreation.playground.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.ShoppingRecord;

public interface ShoppingRecordDao extends JpaRepository<ShoppingRecord, Integer>{

	
	public ShoppingRecord findByOrderNum(Integer OrderNum);
	@Transactional
	int deleteByOrderNum(int OrderNum);
	
}
