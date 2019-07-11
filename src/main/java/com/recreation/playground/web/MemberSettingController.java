package com.recreation.playground.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.recreation.playground.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberSettingController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping("/userindex")
	public String  usersetting() {	
		return "/main/setting/UserIndex";
	}
	
	@RequestMapping("/setting")
	public String  opensetting() {	
		return "/main/setting/SettingIndex";
	}
	
	
	
	
	
	

}
