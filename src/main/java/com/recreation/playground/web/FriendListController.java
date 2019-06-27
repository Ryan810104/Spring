package com.recreation.playground.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.FriendList;
import com.recreation.playground.service.FriendListService;
import com.recreation.playground.service.MemberService;


@Controller
@RequestMapping("/friend/list")
public class FriendListController {

	@Autowired
	private FriendListService friendlistservice;
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("/index")
	public String toIndex(Model model){
		return "/main/testfriendlist";
	}
	
	@RequestMapping("/add")
	public String insert(FriendList friendlist, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "main/Index";
		}
		friendlistservice.save(friendlist);
		return "main/Index";
	}
	
	@ResponseBody
	@RequestMapping("/allmem")
	public String findallmem(Model model) {
		return  "";
	}
}
