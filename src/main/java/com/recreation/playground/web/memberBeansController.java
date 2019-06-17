package com.recreation.playground.web;

import java.util.HashMap;
import java.util.Map;

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
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(result);
//		System.out.println(model);
		Map<String, String> errorMessage=new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("memberParam", member);
			return "/admin/LoginForm";
		}
		
		String loginResult=service.login(member.getMemberId(),member.getMemberPassword());
		if(loginResult.equals("Success")) {
			
			
			
			return "/admin/clearTemplate";
		}else {
			model.addAttribute("memberParam", member);
			errorMessage.put("loginError", "帳號或密碼錯誤");
			return "/admin/LoginForm";
		}
		
	}
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/admin/LoginForm";
	}
	
	
}
