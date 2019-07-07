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
		if(chipRecord.getChipRecordMemberNum()!=null){
			dao.delete(chipRecord);
		}
	}
	
	public ChipRecord getByChipRecordMemberNum(ChipRecord chipRecord) {
		return dao.findByChipRecordMemberNum(chipRecord.getChipRecordMemberNum());
	}
	
	public ChipRecord save(ChipRecord chipRecord) {
		return dao.save(chipRecord);
	}
	
	public ChipRecord getByChipRecordMemberNum(Integer chipRecordMemberNum) {
		return dao.findByChipRecordMemberNum(chipRecordMemberNum);

	}
	
	public ChipRecord findByChipRecordNum(Integer chipRecordNum) {
		return dao.findById(chipRecordNum).orElse(null);
	}
	

}
