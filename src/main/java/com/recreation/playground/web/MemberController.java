package com.recreation.playground.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
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
	public String openindex(Model model,Member member) {
		if(member.getId()==null) {
			return "/admin/index-member";
		}else {
			member=memberservice.findById(member.getId());
			model.addAttribute("memberP",member);
			return "/admin/index-member";
		}
	}
	
	@RequestMapping("query1")
	public String openquery1(Model model) {
		return "/admin/member-list";
	}
	
	@RequestMapping("template")
	public String opencleartemplate(Model model) {
		return "/admin/clearTemplate";
	}
	
	@PostMapping("/query")
	@ResponseBody//轉JSON
	public List<Member> query(Integer id){
		System.out.println(id);
		return memberservice.getAll();
	}

	@DeleteMapping("/delete")
	public String delete(@ModelAttribute("form1") Member member, Model model){
		System.out.println(memberservice.getById(member.getId()));
		memberservice.delete(member);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/member-list";
	}

	@RequestMapping("/update")
	@ResponseBody
	public AjaxResponse<Member> update(@Valid @RequestBody Member member, BindingResult result, Model model) {
//		Member member1 = memberservice.findById(member.getId());
//		member1.setEmail(member.getEmail());
//		member1.setPassword(member.getPassword());
//		member1.setPhone(member.getPhone());
//		System.out.println(member);
		AjaxResponse<Member> ajax1=new AjaxResponse<>();
		if(result.hasErrors()) {
			ajax1.setType(AjaxResponseType.ERROR);
			return ajax1;
		}
//		Member update = memberservice.save(member);
//		// System.out.println(update);
//		model.addAttribute("update", update);
//		return "/admin/member-list";
		System.out.println(member);
		ajax1.setType(AjaxResponseType.SUCCESS);
		ajax1.setData(memberservice.save(member));
		return ajax1;
	}

	@PostMapping("/insert")
	@ResponseBody
	public AjaxResponse<Member> insert(@Valid @RequestBody Member member, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		AjaxResponse<Member> res = new AjaxResponse<>();
		if (result.hasErrors()){
			res.setType(AjaxResponseType.ERROR);
			System.out.println(result.getAllErrors());
			return res;
		}
		System.out.println(member);
		res.setType(AjaxResponseType.SUCCESS);
//		memberservice.save(member);
//		model.addAttribute("insert", member);
		res.setData(memberservice.save(member));
		return res;
	}
	
	
	@RequestMapping("/search")
	public String search(@Valid @RequestBody Member member, BindingResult result, Model model) {
		if(member.getPhone()==null||member.getPassword()==null){
			List<Member> get=memberservice.getAll();
			model.addAttribute("get",get);
			return "/admin/member-list";
		}else {
			List<Member>searchresult=memberservice.getByPhoneOrPassword(member.getPhone(), member.getPassword());
			model.addAttribute("searchresult",searchresult);
			return "/admin/member-list";
		}
	}
}