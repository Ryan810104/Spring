package com.recreation.playground.web;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.Vip;
import com.recreation.playground.service.VipService;




@Controller
@RequestMapping("/admin/vip")
public class VipController {

	@Autowired
	private VipService vipservice;

//	@RequestMapping("/list")
//	public String listPage(Model model) {
//		List<Vip> list = vipservice.getAll();
//		model.addAttribute("vipList", list);
//		return "main/Index";
//	}

//	@RequestMapping("/findone")
//	public String findById(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {
//		Vip vip1 = vipservice.findById(vip.getViplevel());
//		System.out.println(vip1);
//		model.addAttribute("findById", vip1);
//		return "/admin/index-vip";
//	}


	
	@RequestMapping("/query1")
	public String openquery1(Model model) {
		return "/main/Index";
	}
	@RequestMapping("/test2")
	public String testtoggle(Model model) {
		System.out.println(model);
		return "/admin/toggletest";
	}
	
	@RequestMapping("/test1")
	public String test1(Model model) {
		System.out.println(model);
		return "/admin/viptest";
	}

	@RequestMapping("/test")
	@ResponseBody
	public String test(@RequestBody List<Vip> vip) {
		System.out.println(vip);
		return "vip";
	}
	
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/admin/index-vip";
	}
	
	@RequestMapping("/query2")
	@ResponseBody
	public int findNextId() {
//		System.out.println(vipservice.findCurrentId());
		return vipservice.findCurrentId();
	}
	
	@RequestMapping("/query")
	@ResponseBody
	public List<Vip> query(Integer id){
		return vipservice.getAll();
	}
	

	@RequestMapping("/delete")
	public String delete(@ModelAttribute("form1") Vip vip, Model model){
//		System.out.println(vipservice.getById(vip.getVipnum()));
		vipservice.delete(vip);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/index-vip";
	}

	@RequestMapping("/update")
	public String update(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {

		Vip vip1 = vipservice.findById(vip.getVipnum());

		vip1.setViptitle(vip.getViptitle());
		vip1.setViplevel(vip.getViplevel());
//		System.out.println(vip1);
		Vip update = vipservice.save(vip);
		// System.out.println(update);
		model.addAttribute("update", update);
		return "/admin/index-vip";
	}

	@RequestMapping("/insert")
	public String insert(@Valid @ModelAttribute("form1") Vip vip, BindingResult result, Model model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/index-vip";
		}
//		System.out.println(vip);
		vipservice.save(vip);
		model.addAttribute("insert", vip);
		return "/admin/index-vip";
	}

}