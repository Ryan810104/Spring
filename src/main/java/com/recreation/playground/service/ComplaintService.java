package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.ComplaintDao;
import com.recreation.playground.entity.Complaint;

@Service
public class ComplaintService {

	@Autowired
	private ComplaintDao dao;

	public void insert(Complaint beans) {
		dao.save(beans);
	}

	public void update(Complaint beans) {
		dao.save(beans);
	}

	public List<Complaint> getAll() {
		return dao.findAll();
	}
	
	public Complaint findById(Integer ComplaintNum) {
		return dao.findById(ComplaintNum).orElse(null);
	}
	
	public Complaint findBymemberId(Complaint cp) {
		return dao.findByMemberId(cp.getMemberId());
	}
	
	public Complaint findByComplaintStatus(Complaint cp) {
		return dao.findByComplaintStatus(cp.getComplaintStatus());
	}
	
	public Complaint findByComplaintTitle(Complaint cp) {
		return dao.findByComplaintTitle(cp.getComplaintTitle());
	}
	
	public Complaint findByComplaintMessageTimeLike(Complaint cp) {
		return dao.findByComplaintMessagetimeLike(cp.getComplaintMessagetime());
	}
	
	public String fileComplaints(Complaint cp) {
		Complaint insertData = new Complaint();
		insertData.setMemberId(cp.getMemberId());
		insertData.setComplaintTitle(cp.getComplaintTitle());
		insertData.setComplaintMessage(cp.getComplaintMessage());
		insertData.setComplaintStatus(cp.getComplaintStatus());
//		insertData.setComplaintResponse(cp.getComplaintResponse());
		insertData.setViolator(cp.getViolator());
		dao.save(insertData);
		return "complain";
	}
	
	
}
