package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ComplaintDao;
import com.recreation.playground.entity.Complaint;
import com.recreation.playground.entity.Member;

@Service
@Transactional(readOnly = true)
public class ComplaintService {

	@Autowired
	private ComplaintDao dao;

	
	
//	public void update(Complaint cp) {
//		if (cp.getComplaintNum() != null ) {
//			System.out.println("aa");
//			dao.save(cp);
//			System.out.println("bb");
//		}
//	}

	public List<Complaint> chooseUndealEventGame() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(1, 0);
	}
	public List<Complaint> chooseDealEventGame() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(1, 1);
	}
	public List<Complaint> chooseUndealEventWeb() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(2, 0);
	}
	public List<Complaint> chooseDealEventWeb() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(2, 1);
	}
	public List<Complaint> chooseUndealEventPay() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(3, 0);
	}
	public List<Complaint> chooseDealEventPay() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(3, 1);
	}
	public List<Complaint> chooseUndealEventInteract() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(4, 0);
	}
	public List<Complaint> chooseDealEventInteract() {
		return dao.findTop10ByComplaintTypeAndComplaintStatusOrderByComplaintNumDesc(4, 1);
	}

	public void fileComplaints(Complaint cp) {
		dao.save(cp);
	}
	public Complaint findBycomplaintNum(int num) {
		return dao.findByComplaintNum(num);
	}
	public Complaint findBycmbNum(int num) {
		
		return dao.findByCmbNum(num);
	}
	
	public List<Object> findSummaryByMemberNum(Integer num) {
		return dao.findSummaryByMemberNum(num);
	}

//	public void delete(Complaint cp) {
//		if (cp.getComplaintNum() != null) {
//			dao.delete(cp);
//		}
//	}

}
