package com.soma.gameboy.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soma.gameboy.entities.Member;
import com.soma.gameboy.service.MemberService;

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
	public String insert(@Valid @ModelAttribute("form1") Member member, BindingResult result, Model model) {

		member.setId(member.getId());
		member.setPassword(member.getPassword());
		member.setEmail(member.getEmail());
		member.setPhone(member.getPhone());
		System.out.println(member);
		memberservice.save(member);
		model.addAttribute("insert", member);
		if (result.hasErrors()) {
			return "fail";
		}
		return "/admin/member-list";
	}

}
