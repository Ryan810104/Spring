package com.recreation.playground.web;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.Complaint;
import com.recreation.playground.service.ComplaintService;

@Controller
@RequestMapping("/main/complain")
public class ComplaintController {

	@Autowired
	private ComplaintService service;

	@PersistenceContext
	EntityManager em;

	@RequestMapping("/insertComplaint")
	public String insertComplaint(@Valid @ModelAttribute("formCI") Complaint cp, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "/main/complain/complainIndex";
		}
		service.fileComplaints(cp);
		model.addAttribute("insertComplaint", "1");
		return "/main/Index";

	}

	@ResponseBody
	@RequestMapping("/query1")
	public List<Complaint> complainListGame() {
		return service.chooseUndealEventGame();
	}
	@ResponseBody
	@RequestMapping("/query4")
	public List<Complaint> complainListGameR() {
		return service.chooseDealEventGame();
	}

	@ResponseBody
	@RequestMapping("/query2")
	public List<Complaint> complainListWeb() {
		return service.chooseUndealEventWeb();
	}
	@ResponseBody
	@RequestMapping("/query5")
	public List<Complaint> complainListWebR() {
		return service.chooseDealEventWeb();
	}

	@ResponseBody
	@RequestMapping("/query3")
	public List<Complaint> complainListPay() {
		return service.chooseUndealEventPay();
	}
	@ResponseBody
	@RequestMapping("/query6")
	public List<Complaint> complainListPayR() {
		return service.chooseDealEventPay();
	}

	@Transactional
	@ResponseBody
	@RequestMapping("/responseComplaint")
	public int update(Integer complaintNum, String complaintResponse, Model model) {
//		if (result.hasErrors()) {
//			return "/main/complain/complainDeal";
//		}
		Complaint cpp = em.find(Complaint.class, complaintNum);
//		System.out.println(cpp.toString());
//		if (cpp.getComplaintStatus() != 1 ) {
			cpp.setComplaintResponse(complaintResponse);
			cpp.setComplaintStatus(1);
			java.util.Date date = new java.util.Date();
			cpp.setComplaintResponsetime(date);
//		System.out.println(cpp.toString());
			em.persist(cpp);
//		service.update(cpp);
			return 1;
//		}else {
//			return 0;
//		}	
			
	}

}
