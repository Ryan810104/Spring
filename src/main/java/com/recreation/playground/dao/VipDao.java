package com.recreation.playground.dao;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.Vip;



public interface VipDao extends JpaRepository<Vip, Integer> {
//	@Query("SELECT IDENT_CURRENT('vipnumber')+1 from Vip1")
//	@Query(value = "SELECT IDENT_CURRENT('vipnumber')+1", nativeQuery = true)  
	//找INDENTITY目前的數再加上INCRESEMENT作為下一筆資料的vipnumber identity(0,1)
//	@Query(value="SELECT IDENT_CURRENT('vip_level')+IDENT_INCR('vip_level')", nativeQuery = true)
	@Query(value="SELECT IDENT_CURRENT('vip_level')+IDENT_INCR('vip_level')", nativeQuery = true)
	int findCurrentId();
}
