package com.recreation.playground.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.MemberMailBeans;
import com.recreation.playground.service.MemberMailService;

@Controller
@RequestMapping("/admin/mail")
public class MemberMailController {

	@Autowired
	private MemberMailService service;

	@RequestMapping("/mailFromWhom")
	@ResponseBody
	public MemberMailBeans mailFromWhom(MemberMailBeans bean) {
		return service.findBymemberId(bean);
	}

	@RequestMapping("/mailToWhom")
	@ResponseBody
	public MemberMailBeans mailToWhom(MemberMailBeans bean) {
		return service.findByReceiver(bean);
	}

	@RequestMapping("/getAllMail")
	@ResponseBody
	public List<MemberMailBeans> getAllMail() {
		return service.getAll();
	}

	@RequestMapping("/getMailBySerialNum")
	@ResponseBody
	public MemberMailBeans getMailBySerialNum(Integer num) {
		return service.findById(num);
	}

	@RequestMapping("/deleteMail")
	public String deleteMail(@ModelAttribute("form01") MemberMailBeans bean, Model model) {
		Map<String, String> message=new HashMap<>();
		model.addAttribute("MessageD",message);
		service.delete(bean);
		message.put("deleteMailSucceed", "信件刪除成功");
		return "/";
	}

	@RequestMapping("/deleteMailByReceiver")
	public String deleteMailByReceiver(@ModelAttribute("form01") MemberMailBeans bean, Model model) {
		Map<String, String> message=new HashMap<>();
		model.addAttribute("MessageDbR",message);
		MemberMailBeans bean2 = service.findByReceiver(bean);
		service.delete(bean2);
		message.put("deleteReceiverSucceed", "收件匣已清空");
		return "/";
	}

	@RequestMapping("/deleteMailBySender")
	public String deleteMailBySender(@ModelAttribute("form02") MemberMailBeans bean, Model model) {
		Map<String, String> message=new HashMap<>();
		model.addAttribute("MessageDbS",message);	
		MemberMailBeans bean2 = service.findBymemberId(bean);
		service.delete(bean2);
		message.put("deleteSenderSucceed", "寄件備份已清空");
		return "/";
	}

	@RequestMapping("/send_insertMail")
	public String insertMail(@Valid @ModelAttribute("form03") MemberMailBeans bean, BindingResult result, Model model) {
		Map<String, String> message=new HashMap<>();
		model.addAttribute("MessageI",message);	
		if (result.hasErrors()) {
			message.put("sendMailFail", "信件寄送失敗");
			return "/";
		} else {
			service.sendMail(bean);
			message.put("sendMailSucceed", "信件寄送成功");
			return "/";
		}

	}

}
