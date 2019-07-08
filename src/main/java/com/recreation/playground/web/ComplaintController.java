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
	@RequestMapping("/query2")
	public List<Complaint> complainListWeb() {
		return service.chooseUndealEventWeb();
	}

	@ResponseBody
	@RequestMapping("/query3")
	public List<Complaint> complainListPay() {
		return service.chooseUndealEventPay();
	}

	@Transactional
	@ResponseBody
	@RequestMapping("/responseComplaint")
	public String update(Integer complaintNum, String complaintResponse, Model model) {
//		if (result.hasErrors()) {
//			return "/main/complain/complainDeal";
//		}
		Complaint cpp = em.find(Complaint.class, complaintNum);
//		System.out.println(cpp.toString());
		if (cpp.getComplaintStatus() != 1) {
			cpp.setComplaintResponse(complaintResponse);
			cpp.setComplaintStatus(1);
//		System.out.println(cpp.toString());
			em.persist(cpp);
//		service.update(cpp);	
		}
		return "/main/complain/complainDeal";	
	}

}
