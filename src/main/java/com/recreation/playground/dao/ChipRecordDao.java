package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.ChipRecord;
public interface ChipRecordDao extends JpaRepository<ChipRecord, Integer> {

	public ChipRecord findByChipRecordMemberNum(Integer chipRecordMemberNum);
	
//	public ChipRecord save(String chipRecordMemberid, Long chipRecordChip);
	
	@Query(value="select num,chip_record_chip from gameatrend order by num",nativeQuery = true)
	List<Object> findgameatrend();
	
	@Query(value="select num,chip_record_chip from gamebtrend order by num",nativeQuery = true)
	List<Object> findgamebtrend();
	
	@Query(value="select num,chip_record_chip from gamectrend order by num",nativeQuery = true)
	List<Object> findgamectrend();
	
	@Query(value="select num,chip_record_chip from gamedtrend order by num",nativeQuery = true)
	List<Object> findgamedtrend();
	
	@Query(value="select num,chip_record_chip from gameetrend order by num",nativeQuery = true)
	List<Object> findgameetrend();	
	
	@Query(value="select num,chip_record_chip from gameftrend order by num",nativeQuery = true)
	List<Object> findgameftrend();
	
	
}
