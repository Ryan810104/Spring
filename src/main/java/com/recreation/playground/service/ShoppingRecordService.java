package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ShoppingRecordDao;
import com.recreation.playground.entity.ItemList;
import com.recreation.playground.entity.ShoppingRecord;

@Service
@Transactional
public class ShoppingRecordService {
	@Autowired
	private ShoppingRecordDao dao;
	public ShoppingRecord findByOrderNum(int OrderNum) {
		return dao.findByOrderNum(OrderNum);
	}
	public String insert(ShoppingRecord record) {

		dao.save(record);
		return "Success";

	}

	public boolean delete(int  OrderNum) {
		if (dao.deleteByOrderNum(OrderNum) != 0) {
			return true;
		} else {
			return false;
		}

	}

	public int update(ShoppingRecord record) {
		System.out.println(dao.save(record));
		return 1;
	}

	public ShoppingRecord select(String  memberId) {
		ShoppingRecord record=new ShoppingRecord();
		return record;
	}
}
