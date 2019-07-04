package com.recreation.playground.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		return "/main/AfterIndex";
	}

	@RequestMapping("/public")
	public String topublic(@Valid @ModelAttribute("CMBtextarea") CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		System.out.println(bean);
		service.insert(bean);
		return "redirect:/main/CMBIndex";
	}
	
	@ResponseBody
	@RequestMapping("/searchall")
	public List<CustomerMessageBoardBean> searchall() {
		List<CustomerMessageBoardBean> beans = service.searchall();
		System.out.println(beans);
		return service.searchall();
	}
	
	@ResponseBody
	@RequestMapping("/searchthelastofmessage")
	public List<CustomerMessageBoardBean> searchthelastofmessage() {
		return service.searchthelastofmessage();
	}
	
	@ResponseBody
	@RequestMapping("/searchthelastofcomment")
	public List<CustomerMessageBoardBean> searchthelastofcomment(CustomerMessageBoardBean bean) {
		return service.searchthelastofcomment(bean.getCustomermessageboardArticleFloor());
	}
	
	@ResponseBody
	@RequestMapping("/searchcomment")
	public List<CustomerMessageBoardBean> searchcomment(CustomerMessageBoardBean bean) {
		return service.searchthecomment(bean.getCustomermessageboardArticleFloor());
	}

//	@RequestMapping("/update")
//	public String toupdate(CMBBean bean) {
//		service.insert(bean);
//		return "/admin/CMB";
//	}

	@RequestMapping("/delete")
	public String todelete(CustomerMessageBoardBean bean) {
		
		return "admin/memberBeans/login";
	}

}
