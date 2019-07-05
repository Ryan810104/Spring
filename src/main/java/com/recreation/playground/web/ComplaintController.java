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
	@RequestMapping("/query")
	public List<Complaint> complainList() {
		return service.chooseUndealEvent();	
	}
		

	@RequestMapping("/responseComplaint")
	public String update( @ModelAttribute("formCR") Complaint cp) {
		service.update(cp);
		return "/main/complain/complainIndex";
	}
	
	


	
	

}
