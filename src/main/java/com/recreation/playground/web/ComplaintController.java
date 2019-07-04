package com.recreation.playground.web;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
	
//	@RequestMapping("/indexComplaint")
//	public String toIndex(Model model) {
//		return "/";
//	}
	
	@RequestMapping("/insertComplaint")
	public String insertComplaint(@Valid @ModelAttribute("formCI") Complaint cp, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "/main/complain/complainIndex";
		}
		service.fileComplaints(cp);
		return "/main/complain/complainIndex";
	}
	
	@RequestMapping("/responseComplaint")
	public String update(@ModelAttribute("form01") Complaint cp) {
		service.update(cp);
		return "/";
	}
	
	@RequestMapping("/deleteComplaint")
	public String delete(@ModelAttribute("form01") Complaint cp) {
		
		service.delete(cp);
		return "/";
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findSomeonesComplaint")
	public List<Object[]> complaintListOfUser(String fromwho, Model model){
		String sql = "SELECT complaint_type FROM Complaint WHERE member_id = " + fromwho ;
		return em.createNamedQuery(sql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findStatusComplaint")
	public List<Object[]> complaintListOfStatus(String status, Model model){
		String sql = "SELECT complaint_type FROM Complaint WHERE complaint_status = " + status ;
		return em.createNamedQuery(sql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findTimeLikeComplaint")
	public List<Object[]> complaintListOfTimeLike(String timelike, Model model){
		String sql = "SELECT complaint_type FROM Complaint WHERE complaint_messagetime = %" + timelike + "%"  ;
		return em.createNamedQuery(sql).getResultList();
	}
	
	@RequestMapping("/ComplaintContentOfUser")
	public String ComplaintContentOfUser(Complaint cp) {
		Complaint cp2 = service.findBymemberId(cp);
		return service.findByComplaintType(cp2);
	}
	
	@RequestMapping("/ComplaintContentOfStatus")
	public String ComplaintContentOfStatus(Complaint cp) {
		Complaint cp2 = service.findByComplaintStatus(cp);
		return service.findByComplaintType(cp2);
	}
	
	@RequestMapping("/ComplaintContentOfTimeLike")
	public String ComplaintContentOfTimeLike(Complaint cp) {
		Complaint cp2 = service.findByComplaintMessageTimeLike(cp);
		return service.findByComplaintType(cp2);
	}

	
	
	
}
