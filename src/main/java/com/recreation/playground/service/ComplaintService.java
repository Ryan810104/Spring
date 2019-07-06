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
	
	public void update(Complaint cp) {
		if (cp.getComplaintNum() != null) {
			dao.save(cp);
		}
	}

	public List<Complaint> chooseUndealEvent() {
		return dao.findTop10ByComplaintStatusOrderByComplaintNumDesc(0);
	}

	public void fileComplaints(Complaint cp) {
		dao.save(cp);
	}
	
	

	public void delete(Complaint cp) {
		if (cp.getComplaintNum() != null) {
			dao.delete(cp);
		}
	}

}
