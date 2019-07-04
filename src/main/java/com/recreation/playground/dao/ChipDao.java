package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.Chip;

public interface ChipDao extends JpaRepository<Chip, Integer>,JpaSpecificationExecutor<Chip> {

	public Chip findByChipMemberNum(Integer chipMemberNum);
	
	@Query(value="select chip_member_num,chip_type,total_win from wintimerank order by total_win desc", nativeQuery = true)
	List<Object> findTheBestWinner();
	
	
}
