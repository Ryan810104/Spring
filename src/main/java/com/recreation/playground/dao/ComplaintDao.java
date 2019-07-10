package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Complaint;

public interface ComplaintDao extends JpaRepository<Complaint, Integer>{
	
	public List<Complaint> findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(int type,int status);

	public Complaint findByComplaintNum(int num);

}
