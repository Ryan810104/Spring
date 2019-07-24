package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.MoneyRecord;

public interface MoneyRecordDao extends JpaRepository<MoneyRecord, Integer> {

	public MoneyRecord findByMoneyRecordMemberNum(Integer moneyRecordMemberNum);
	
//	"SELECT ,SUM(money_record_point) AS total_point FROM moneyrecord m GROUP BY money_record_memberid ORDER "
//	+ "BY total_cash DESC"
////	
    @Query(value="select money_record_nick_name,total_cash from summary order by total_cash desc", nativeQuery = true)   
	List<Object> findBestMoneyRecordid();
    
    @Query(value="select money_record_nick_name,total_cash from summary order by total_cash desc", nativeQuery = true)   
	List<Object[]> findBestMoneyRecordid1();
	
	@Query(value="select total_cash from companyearn" ,nativeQuery = true)
	public Object findCompanyEarn(); 
	
	@Query(value="select money_record_type,countforpack from companyperformance" ,nativeQuery = true)
	List<Object> findCompanyPerformance1();
	
	@Query(value="select money_record_type,totalcash from companyperformance" ,nativeQuery = true)
	List<Object> findCompanyPerformance2();
}


