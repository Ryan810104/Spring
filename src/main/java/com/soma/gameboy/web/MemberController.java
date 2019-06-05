package com.soma.gameboy.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/index")
	public String openindex(Model model) {
		return"/admin/delete-member";
	}
	
	@RequestMapping("/delete")
	public String delete(@ModelAttribute("form1") Member member, Model model) {
		System.out.println(memberservice.getById(member.getId()));
		memberservice.delete(member);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/member-list";
	}
}
