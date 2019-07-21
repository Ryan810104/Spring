package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.Complaint;

public interface ComplaintDao extends JpaRepository<Complaint, Integer>{
	
	public List<Complaint> findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(int type,int status);

	public Complaint findByComplaintNum(int num);
	
	public Complaint findByCmbNum(int num);
	
	@Query(value="select summary from summary1 where chip_member_num=?1",nativeQuery = true)
	public List<Object> findSummaryByMemberNum(Integer num);
}
