package com.recreation.playground.web;

import java.util.ArrayList;
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
import com.recreation.playground.service.CustomerMessageBoardService;

@Controller
@RequestMapping("/main")
public class CustomerMessageBoardController {

	@Autowired
	private CustomerMessageBoardService service;

	
	@RequestMapping("/report")
	public String openindex(@Valid @ModelAttribute("report")CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		model.addAttribute("AtricleNum", "文章編號:"+bean.getCustomermessageboardNum()+"	(勿更改以利查證)");
		model.addAttribute("Violater", bean.getCustomermessageboardMemberid());
//		System.out.println(bean.getCustomermessageboardNum());
//		System.out.println(bean.getCustomermessageboardMemberid());
		return "/main/complain/complainIndex";
	}

	@RequestMapping("/public")
	public String topublic(@Valid @ModelAttribute("CMBtextarea") CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		System.out.println(bean);
		bean.setCustomerresponseanno(0);
		service.insert(bean);
		return "redirect:/main/CMBIndex";
	}
	
	@ResponseBody
	@RequestMapping("/searchall")
	public List<CustomerMessageBoardBean> searchall() {
		List<CustomerMessageBoardBean> bean = service.searchthelastofmessage();
		int i = bean.get(0).getCustomermessageboardArticleFloor();
		List<CustomerMessageBoardBean> beans = service.searchall(i-2,i);
		System.out.println(beans);
		return beans;
	}
	
	@ResponseBody
	@RequestMapping("/searchcontinue")
	public List<CustomerMessageBoardBean> searchcontinue(CustomerMessageBoardBean bean) {
		return service.searchcontinue(bean.getCustomermessageboardArticleFloor(), bean.getCustomermessageboardResponseFloor());
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
	public ArrayList<CustomerMessageBoardBean> searchcomment(CustomerMessageBoardBean bean) {
		System.out.println(bean.getCustomermessageboardArticleFloor());
		System.out.println(service.searchthecomment(bean.getCustomermessageboardArticleFloor()));
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
