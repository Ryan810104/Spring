package com.recreation.playground.web;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.MemberAnnotation;
import com.recreation.playground.service.MemberAnnotationService;

@Controller
@RequestMapping("/")
public class MemberAnnotationController {
	
	@Autowired
	private MemberAnnotationService service;
	
	@PersistenceContext
	EntityManager em;
	
	@RequestMapping("/indexAnnot")
	public String toIndex(Model model) {
		return "/";
	}
	@RequestMapping("/insertAnnot")
	public String insertAnnot (MemberAnnotation annot, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "/";
		}
		service.sendAnnot(annot);	
		return "/";
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findmyAnnot")
	public List<Object[]> annotListOfUser(String forwho, Model model){
		String sql = "SELECT annot_title FROM MemberAnnotation WHERE annotfor_id = " + forwho ;
		return em.createNamedQuery(sql).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findsenderAnnot")
	public List<Object[]> annotListOfSender(String fromwho, Model model){
		String sql = "SELECT annot_title FROM MemberAnnotation WHERE annotfrom_id = " + fromwho ;
		return em.createNamedQuery(sql).getResultList();
	}
	
	@RequestMapping("/myAnnotContent")
	public String annotContentOfUser(MemberAnnotation annot) {
		MemberAnnotation annot2 = service.findByAnnotforId(annot);
		return service.findByAnnotTitle(annot2);
	}
	
	@RequestMapping("/senderAnnotContent")
	public String annotContentOfSender(MemberAnnotation annot) {
		MemberAnnotation annot2 = service.findByAnnotfromId(annot);
		return service.findByAnnotTitle(annot2);
	}
	
	
}
