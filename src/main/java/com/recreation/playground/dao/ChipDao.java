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
	
	
	@Query(value="select chip_nick_name,totalwin from wintotal order by chip_nick_name asc", nativeQuery = true)
	List<Object> findTotalWin();
	
	@Query(value="select chip_member_num,summary from summary1 order by summary desc",nativeQuery = true)
	List<Object> findTheRichest();
	
	@Query(value="select chip_member_num,chip_type,total_round from totalround where chip_type like '%a%' order by total_round desc",nativeQuery = true)
	List<Object>findTheGameAMostWin();
	
	@Query(value="select chip_member_num,chip_type,total_round from totalround where chip_type like '%b%' order by total_round desc",nativeQuery = true)
	List<Object>findTheGameBMostWin();
	
	@Query(value="select chip_member_num,chip_type,total_round from totalround where chip_type like '%c%' order by total_round desc",nativeQuery = true)
	List<Object>findTheGameCMostWin();
	
	@Query(value="select chip_nick_name,total_balanced,win from bonusrank where win = 1 order by total_balanced desc",nativeQuery = true)
	List<Object>findTheMostBonus();
	
	@Query(value="select chip_type,rate from wincalculate order by rate desc",nativeQuery = true)
	List<Object>findTheGameWinRate();
	
	@Query(value="select chip_member_num,summary from summary1 where chip_member_num = ?1",nativeQuery = true)
	public Object findPlayerSummary(Integer chipMemberNum);
	
}
