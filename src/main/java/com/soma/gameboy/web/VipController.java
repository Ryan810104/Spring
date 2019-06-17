package com.soma.gameboy.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.soma.gameboy.entities.Vip;
import com.soma.gameboy.service.VipService;

@Controller
@RequestMapping("/admin/vip")
public class VipController {

	@Autowired
	private VipService vipservice;

	@RequestMapping("/list")
	public String listPage(Model model) {
		List<Vip> list = vipservice.getAll();
		model.addAttribute("vipList", list);
		return "main/Index";
	}

	@RequestMapping("/findone")
	public String findById(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {
		Vip vip1 = vipservice.findById(vip.getVipnumber());
		System.out.println(vip1);
		model.addAttribute("findById", vip1);
		return "/admin/index-vip";
	}

	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/admin/index-vip";
	}
	
	@RequestMapping("/query1")
	public String openquery1(Model model) {
		return "/main/Index";
	}
	
	@RequestMapping("/query2")
	@ResponseBody
	public int findNextId() {
		System.out.println(vipservice.findCurrentId());
		return vipservice.findCurrentId();
	}
	
	@RequestMapping("/query")
	@ResponseBody//轉JSON
	public List<Vip> query(Integer id){
		return vipservice.getAll();
	}
	

	@RequestMapping("/delete")
	public String delete(@ModelAttribute("form1") Vip vip, Model model){
		System.out.println(vipservice.getById(vip.getVipnumber()));
		vipservice.delete(vip);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/index-vip";
	}

	@RequestMapping("/update")
	public String update(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {
		Vip vip1 = vipservice.findById(vip.getVipnumber());
		vip1.setViptitle(vip.getViptitle());
		System.out.println(vip1);
		Vip update = vipservice.save(vip);
		// System.out.println(update);
		model.addAttribute("update", update);
		return "/admin/index-vip";
	}

	@RequestMapping("/insert")
	public String insert(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/index-vip";
		}
		System.out.println(vip);
		vipservice.save(vip);
		model.addAttribute("insert", vip);
		return "/admin/index-vip";
	}

}