package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Complaint;

public interface ComplaintDao extends JpaRepository<Complaint, Integer>{

}
