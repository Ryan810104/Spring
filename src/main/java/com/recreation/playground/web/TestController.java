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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
import com.recreation.playground.dao.TestDao;
import com.recreation.playground.entity.Test;
import com.recreation.playground.service.TestService;

@Controller
@RequestMapping("/admin/test")
public class TestController {
	
	@Autowired
	TestService service;
	
	@Autowired
	TestDao dao;
	
//	@RequestMapping("/list")
//	public String listPage(Model model) {
//		List<Member> list = memberservice.getAll();
//		model.addAttribute("memberList", list);
//		return "/admin/member-list";
//	}
	
	@RequestMapping("/chatroom")
	public String chatroom(Model model) {
		return "/admin/chatroom";
	}
	


	@RequestMapping("/findone")
	public String findById(@Valid @ModelAttribute("form1") Test test, BindingResult result, Model model) {
		 Test test1 = service.findById(test.getId());
		System.out.println(test1);
		model.addAttribute("findById", test1);
		return "/test/member-list";
	}

	@RequestMapping("/index")
	public String openindex(Model model,Test test) {
		if(test.getId()==null) {
			return "/admin/index-member";
		}else {
			test=service.findById(test.getId());
			model.addAttribute("memberP",test);
			return "/test/index-member";
		}
	}
	
	@RequestMapping("/list")
	public String openquery1(Model model) {
		return "/test/member-list";
	}
	

	@RequestMapping("/findByIdBetween")
	@ResponseBody
	public List<Test> findByIdBetween(@RequestParam("id1")Integer id1,@RequestParam("id2") Integer id2){
		System.out.println(id1);
		System.out.println(id2);
//		redirectAttrs.addFlashAttribute("id1", id1);
//		redirectAttrs.addFlashAttribute("id2", id2);
	return dao.findByIdBetween(id1, id2);
//		return "redirect:list";
	}
	
	@RequestMapping("queryById")
	public String queryById(@Valid @ModelAttribute Integer id1,Integer id2, BindingResult result,Model model) {
		System.out.println(id1+1);
		System.out.println(id2-1);
		if(result.hasErrors()) {
			return null;
		}
		List<Test> list=service.getByIdRange(id1, id2);
		model.addAttribute("list",list);
		return"/test/member-list";
	}
	
	@RequestMapping("template")
	public String opencleartemplate(Model model) {
		return "/test/clearTemplate";
	}
	
//	@RequestMapping("/query")
//	@ResponseBody//轉JSON
//	public List<Test> query(@RequestParam(value="id1",defaultValue="0")Integer id1,@RequestParam(value="id2",defaultValue="0")Integer id2){
//		if(id1==0||id2==0) {
//			return service.getAll();
//		}
//		return dao.findByIdBetween(id1, id2);
//		
//	}
	
	
	@RequestMapping("/query")
	@ResponseBody//轉JSON
	public List<Test> query(@RequestParam(value="search",defaultValue="")String search){
		if(search==null||search.equals("")) {
			return service.getAll();
		}
		return service.findByPasswordOrPhone(search,search);
		
	}

	@DeleteMapping("/delete")
	public String delete(@ModelAttribute("form1") Test test, Model model){
		System.out.println(service.getById(test.getId()));
		service.delete(test);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/admin/member-list";
	}

	@RequestMapping("/update")
	@ResponseBody
	public AjaxResponse<Test> update(@Valid @RequestBody Test test, BindingResult result, Model model) {
//		Member member1 = memberservice.findById(member.getId());
//		member1.setEmail(member.getEmail());
//		member1.setPassword(member.getPassword());
//		member1.setPhone(member.getPhone());
//		System.out.println(member);
		AjaxResponse<Test> ajax1=new AjaxResponse<>();
		if(result.hasErrors()){
			ajax1.setType(AjaxResponseType.ERROR);
			return ajax1;
		}
//		Member update = memberservice.save(member);
//		// System.out.println(update);
//		model.addAttribute("update", update);
//		return "/admin/member-list";
		System.out.println(test);
		ajax1.setType(AjaxResponseType.SUCCESS);
		ajax1.setData(service.save(test));
		return ajax1;
	}

	@PostMapping("/insert")
	@ResponseBody
	public AjaxResponse<Test> insert(@Valid @RequestBody Test test, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		AjaxResponse<Test> res = new AjaxResponse<>();
		if (result.hasErrors()){
			res.setType(AjaxResponseType.ERROR);
			System.out.println(result.getAllErrors());
			return res;
		}
		System.out.println(test);
		res.setType(AjaxResponseType.SUCCESS);
//		memberservice.save(member);
//		model.addAttribute("insert", member);
		res.setData(service.save(test));
		return res;
	}
	
	
	@RequestMapping("/search")
	public String search(@Valid @RequestBody Test test, BindingResult result, Model model) {
		if(test.getPhone()==null||test.getPassword()==null){
			List<Test> get=service.getAll();
			model.addAttribute("get",get);
			return "/test/member-list";
		}else {
			List<Test>searchresult=service.getByPhoneOrPassword(test.getPhone(), test.getPassword());
			model.addAttribute("searchresult",searchresult);
			return "/test/member-list";
		}
	}
}
