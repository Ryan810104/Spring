package com.recreation.playground.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.ItemList;

public interface ItemListDao extends JpaRepository<ItemList, Integer>{

	public ItemList findByItemName(String ItemName);
	 @Transactional
	int deleteByItemName(String ItemName);
}
