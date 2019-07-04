package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.recreation.playground.entity.MoneyRecord;

public interface MoneyRecordDao extends JpaRepository<MoneyRecord, Integer> {

	public MoneyRecord findByMoneyRecordMemberNum(Integer moneyRecordMemberNum);
	
//	"SELECT ,SUM(money_record_point) AS total_point FROM moneyrecord m GROUP BY money_record_memberid ORDER "
//	+ "BY total_cash DESC"
//	
    @Query(value="select money_record_member_num,total_point from summary order by total_point desc", nativeQuery = true)   
	List<Object> findBestMoneyRecordid();
}
