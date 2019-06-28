package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ItemListDao;
import com.recreation.playground.entity.ItemList;

@Service
@Transactional
public class ItemListService {
	@Autowired
	private ItemListDao dao;

	public ItemList findByItemName(String ItemName) {
		return dao.findByItemName(ItemName);
	}
	
	
	public String insert(ItemList Item) {
		if(Item.getItemName()!=null&&Item.getItemCost()!=null) {
			if(dao.findByItemName(Item.getItemName())==null) {
				dao.save(Item);
				return "Success";
			}else {
				return "PK_repeat";
			}
			
			
		}else {
			return "False";
		}
		
	}

	public boolean delete(String ItemName) {
		if(dao.deleteByItemName(ItemName)!=0) {
			return true;
		}else {
			return false;
		}
		
	}

	public int update(ItemList Item) {
		System.out.println(dao.save(Item));
		return 1;
	}

	public ItemList select(String ItemName) {
		ItemList Item = new ItemList();

		return Item;
	}
}
