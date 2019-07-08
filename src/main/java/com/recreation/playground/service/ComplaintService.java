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
		if (cp.getComplaintNum() != null ) {
			dao.save(cp);
		}
	}

	public List<Complaint> chooseUndealEventGame() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(1, 0);
	}
	public List<Complaint> chooseUndealEventWeb() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(2, 0);
	}
	public List<Complaint> chooseUndealEventPay() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(3, 0);
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
