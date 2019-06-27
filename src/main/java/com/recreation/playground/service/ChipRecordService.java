package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ChipRecordDao;
import com.recreation.playground.entity.Chip;
import com.recreation.playground.entity.ChipRecord;

@Service
@Transactional
public class ChipRecordService {
	
	@Autowired
	ChipRecordDao dao;
	
	public List<ChipRecord> getAll() {
		return dao.findAll();
	}
	
	public void delete(ChipRecord chipRecord){
		if(chipRecord.getChipRecordMemberid()!=null){
			dao.delete(chipRecord);
		}
	}
	
	public ChipRecord getByMemberid(ChipRecord chipRecord) {
		return dao.findByChipRecordMemberid(chipRecord.getChipRecordMemberid());
	}
	
	public ChipRecord save(ChipRecord chipRecord) {
		return dao.save(chipRecord);
	}
	
	public ChipRecord getByChipMemberid(String chipRecordMemberid) {
		return dao.findByChipRecordMemberid(chipRecordMemberid);

	}
	
	public ChipRecord findByChipRecordNum(Integer chipRecordNum) {
		return dao.findById(chipRecordNum).orElse(null);
	}

}
