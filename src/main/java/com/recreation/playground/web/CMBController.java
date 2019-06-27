package com.recreation.playground.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.CMBBean;
import com.recreation.playground.service.CMBService;

@Controller
@RequestMapping("/main")
public class CMBController {
	
	@Autowired
	private CMBService service;
	
	@RequestMapping("/CMBIndex")
	public String openindex() {
		return "/admin/CMB";
	}
	
	@RequestMapping("/public")
	public String topublic(CMBBean bean) {
		service.insert(bean);
		return "/admin/CMB";
	}
	
//	@RequestMapping("/update")
//	public String toupdate(CMBBean bean) {
//		service.insert(bean);
//		return "/admin/CMB";
//	}
	
	@RequestMapping("/delete")
	public String todelete(CMBBean bean) {
		service.delete(bean);
		return "/admin/CMB";
	}

}
