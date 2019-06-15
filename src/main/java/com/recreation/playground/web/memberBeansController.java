package com.recreation.playground.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.memberBeans;
import com.recreation.playground.service.memberBeansService;

@Controller
@RequestMapping("/admin/memberBeans")
public class memberBeansController {
	@Autowired
	private memberBeansService service;
	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("memberBeansForm") memberBeans member, BindingResult result, Model model) {
		System.out.println(member.getMemberId());
		System.out.println(member.getMemberPassword());
		
		
		String loginResult=service.login(member.getMemberId(),member.getMemberPassword());
		if(loginResult.equals("Success")) {
			
			
			
			return "/admin/clearTemplate";
		}else {
			
			
			return "/admin/memberForm";
		}
		
	}
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/admin/memberForm";
	}
	
	
}
