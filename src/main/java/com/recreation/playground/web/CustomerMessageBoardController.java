package com.recreation.playground.web;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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

	@PersistenceContext
	EntityManager em;
	
	@RequestMapping("/report")
	public String openindex(@Valid @ModelAttribute("report")CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		model.addAttribute("AtricleNum", "文章編號:"+bean.getCustomermessageboardNum()+"	(勿更改以利查證)");
		model.addAttribute("AtricleNumNum",bean.getCustomermessageboardNum());
		model.addAttribute("Violater",bean.getCustomermessageboardMemberid());
//		System.out.println(bean.getCustomermessageboardNum());
//		System.out.println(bean.getCustomermessageboardMemberid());
		return "/main/complain/complainIndex";
	}
	
	@RequestMapping("/query")
	@ResponseBody
	public List<CustomerMessageBoardBean> query(@Valid @ModelAttribute("search")CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		System.out.println(bean);
		String id = bean.getCustomermessageboardMemberid();
		System.out.println(id);
		String msg = bean.getCustomermessageboardMessage();
		System.out.println(msg);
		String title = bean.getCustomermessageboardTitle();
		System.out.println(title);
		List<CustomerMessageBoardBean> list = null ;
		if(id != "") {
			list = service.searchbyid(id);
		}else if(msg != ""){
			list = service.searchbycontent(msg);
		}else if(title != "") {
			list = service.searchbytitle(title);
		}
		System.out.println(list);
		return list;
	}

	@RequestMapping("/public")
	public String topublic(@Valid @ModelAttribute("CMBtextarea") CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
//		System.out.println(bean);
		bean.setCustomerresponseanno(0);
		service.insert(bean);
		return "redirect:/main/CMBIndex";
	}
	
	@ResponseBody
	@RequestMapping("/searchall")
	public List<CustomerMessageBoardBean> searchall() {
		List<CustomerMessageBoardBean> bean = service.searchthelastofmessage();
		int i = bean.get(0).getCustomermessageboardArticleFloor();
		List<CustomerMessageBoardBean> beans = new ArrayList<CustomerMessageBoardBean>() ;
		int count = 0 ;
		for(int j = i ; j>= 0 ; j--) {
			CustomerMessageBoardBean bean1 = service.searchall(j);
		if(bean1 != null ) {
			beans.add(bean1);
			count ++ ;
		}
//		System.out.println(beans);
		if(count==3) {
			break ;
		}
		}
		return beans;
	}
	
	@ResponseBody
	@RequestMapping("/searchcontinue")
	public List<CustomerMessageBoardBean> searchcontinue(CustomerMessageBoardBean bean) {
		int i = bean.getCustomermessageboardArticleFloor();
		List<CustomerMessageBoardBean> beans = new ArrayList<CustomerMessageBoardBean>() ;
		int count = 0 ;
		for(int j = i ; j > 0 ; j--) {
			CustomerMessageBoardBean bean1 = service.searchall(j);
		if(bean1 != null ) {
			beans.add(bean1);
			count ++ ;
		}
//		System.out.println(beans);
		if(count==3) {
			break ;
		}
		}
		return beans;
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
//		System.out.println(bean.getCustomermessageboardArticleFloor());
//		System.out.println(service.searchthecomment(bean.getCustomermessageboardArticleFloor()));
		return service.searchthecomment(bean.getCustomermessageboardArticleFloor());
	}

	@RequestMapping("/update")
	public String toupdate(@Valid @ModelAttribute("report")CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		CustomerMessageBoardBean bean1 = new CustomerMessageBoardBean();
		bean1 = service.searchMessageByNum(bean.getCustomermessageboardNum());
		bean1.setCustomermessageboardTitle(bean.getCustomermessageboardTitle());
		bean1.setCustomermessageboardMessage(bean.getCustomermessageboardMessage());
		
		service.update(bean1);
		return "/main/Index";
	}

	@RequestMapping("/delete")
	public String todelete(@Valid @ModelAttribute("report")CustomerMessageBoardBean bean, BindingResult result,
			Model model) {
		CustomerMessageBoardBean bean1 = new CustomerMessageBoardBean();
		bean1 = service.searchMessageByNum(bean.getCustomermessageboardNum());
		bean1.setCustomermessageboardStatus(0);
		service.update(bean1);
		return "/main/Index";
	}
	@ResponseBody
	@Transactional
	@RequestMapping("/reply_notice_check")
	public void reply_notice_check(int num) {
		CustomerMessageBoardBean row = em.find(CustomerMessageBoardBean.class, num);
		row.setCustomerresponseanno(1);
		em.persist(row);
	}

}


