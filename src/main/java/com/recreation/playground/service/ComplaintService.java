package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ComplaintDao;
import com.recreation.playground.entity.Complaint;

@Service
public class ComplaintService {

	@Autowired
	private ComplaintDao dao;

	@Transactional(readOnly = true)

//	public void insert(Complaint beans) {
//		dao.save(beans);
//	}

	public void update(Complaint cp) {
		if (cp.getComplaintNum() != null) {
			dao.save(cp);
		}
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

//	public Complaint findByComplaintTitle(Complaint cp) {
//		return dao.findByComplaintTitle(cp.getComplaintTitle());
//	}

	public Complaint findByComplaintMessageTimeLike(Complaint cp) {
		return dao.findByComplaintMessagetimeLike(cp.getComplaintMessagetime());
	}

	public String findByComplaintType(Complaint cp) {
		return dao.findByComplaintType(cp.getComplaintType());
	}

	public String fileComplaints(Complaint cp) {
		Complaint insertData = new Complaint();
		insertData.setMemberId(cp.getMemberId());
		insertData.setComplaintType(cp.getComplaintType());
		insertData.setComplaintMessage(cp.getComplaintMessage());
		insertData.setComplaintStatus(cp.getComplaintStatus());
		java.util.Date date = new java.util.Date();
		insertData.setComplaintMessagetime(date);
//		insertData.setComplaintResponse(cp.getComplaintResponse());
		
		dao.save(insertData);
		return "complain";
	}

	public void delete(Complaint cp) {
		if (cp.getComplaintNum() != null) {
			dao.delete(cp);
		}
	}

}
