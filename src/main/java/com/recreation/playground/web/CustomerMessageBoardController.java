package com.recreation.playground.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.CustomerMessageBoardBean;
import com.recreation.playground.entity.Member;
import com.recreation.playground.service.CustomerMessageBoardService;

@Controller
@RequestMapping("/main")
public class CustomerMessageBoardController {

	@Autowired
	private CustomerMessageBoardService service;

	@RequestMapping("/CMBIndex")
	public String openindex() {
		return "/admin/CustomerMessageBoard";
	}

	@RequestMapping("/public")
	public String topublic(@Valid @ModelAttribute("CMBtextarea") CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		System.out.println(bean);
		service.insert(bean);
		return "/admin/CustomerMessageBoard";
	}

//	@RequestMapping("/update")
//	public String toupdate(CMBBean bean) {
//		service.insert(bean);
//		return "/admin/CMB";
//	}

	@RequestMapping("/delete")
	public String todelete(CustomerMessageBoardBean bean) {
		
		return "/admin/CustomerMessageBoard";
	}

}
