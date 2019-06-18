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

import com.recreation.playground.entity.Member;
import com.recreation.playground.service.MemberService;

@Controller
@RequestMapping("/admin/member")
public class MemberController {

	@Autowired
	private MemberService memberservice;

	@RequestMapping("/list")
	public String listPage(Model model) {
		List<Member> list = memberservice.getAll();
		model.addAttribute("memberList", list);
		return "/admin/member-list";
	}

	@RequestMapping("/findone")
	public String findById(@Valid @ModelAttribute("form1") Member member, BindingResult result, Model model) {
		Member member1 = memberservice.findById(member.getId());
		System.out.println(member1);
		model.addAttribute("findById", member1);
		return "/admin/member-list";
	}

	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/admin/index-member";
	}
	
	@RequestMapping("query1")
	public String openquery1(Model model) {
		return "/main/index";
	}
	
	@RequestMapping("/query")
	@ResponseBody//轉JSON
	public List<Member> query(Integer id){
		return memberservice.getAll();
	}
	

	@RequestMapping("/delete")
	public String delete(@ModelAttribute("form1") Member member, Model model){
		System.out.println(memberservice.getById(member.getId()));
		memberservice.delete(member);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/member-list";
	}

	@RequestMapping("/update")
	public String update(@Valid @ModelAttribute("form1") Member member, BindingResult result, Model model) {
		Member member1 = memberservice.findById(member.getId());
		member1.setEmail(member.getEmail());
		member1.setPassword(member.getPassword());
		member1.setPhone(member.getPhone());
		System.out.println(member);
		Member update = memberservice.save(member);
		// System.out.println(update);
		model.addAttribute("update", update);
		return "/admin/member-list";
	}

	@RequestMapping("/insert")
	@ResponseBody
	public String insert(@Valid @ModelAttribute("form1") Member member, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/index-member";
		}
		
		System.out.println(member);
		memberservice.save(member);
		model.addAttribute("insert", member);
		return "/admin/member-list";
	}

}