package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.ChipRecord;
public interface ChipRecordDao extends JpaRepository<ChipRecord, Integer> {

	public ChipRecord findByChipRecordMemberNum(Integer chipRecordMemberNum);
	
//	public ChipRecord save(String chipRecordMemberid, Long chipRecordChip);
}
