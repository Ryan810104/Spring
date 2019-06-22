package com.recreation.playground.web;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.memberBeans;
import com.recreation.playground.service.memberBeansService;

@Controller
@RequestMapping("/admin/memberBeans")
public class memberBeansController {
	@Autowired
	private memberBeansService service;
	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("memberBeansForm") memberBeans member, BindingResult result, Model model) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(result);
//		System.out.println(model);
		Map<String, String> errorMessage=new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		model.addAttribute("LoginResult", "1");
		System.out.println("1");
		if (result.hasErrors()) {
			model.addAttribute("memberParam", member);
			return "/main/Index";
		}

		String loginResult = service.login(member.getMemberId(), member.getMemberPassword());
		if (loginResult.equals("Success")) {

			model.addAttribute("LoginResult", "0");
//			System.out.println("2");
			model.addAttribute("userId", member.getMemberId());
		
		String loginResult=service.login(member.getMemberId(),member.getMemberPassword());
		if(loginResult.equals("Success")) {
			
			model.addAttribute("LoginResult","0");
//			System.out.println("2");
			model.addAttribute("userId", member.getMemberId());
			return "/main/Index";
		}else {
			model.addAttribute("memberParam", member);
			errorMessage.put("loginError", "帳號或密碼錯誤");
			return "/main/Index";
		}
		
	}
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/main/Index";
	}

	@RequestMapping("/register")
	public String openregister(Model model) {
		return "/main/registerForm";
	}
	
	@RequestMapping("/update")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String update(@Valid @ModelAttribute("userupdate") memberBeans member, BindingResult result,
			Model model) {
		
		return "/admin/userupdate";
	}
	@RequestMapping("/registerForm")
	public String register(@Valid @ModelAttribute("registerForm") memberBeans member, BindingResult result,
			Model model) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(member.getMemberPasswordComfirm());
//		System.out.println(member.getMemberEmail());
//		System.out.println(member.getMemberPhonenum());
//		System.out.println(member);
//		System.out.println(result);
//		System.out.println(model);
		String memberId=member.getMemberId();
		String memberPwd=member.getMemberPassword();
		String memberPwdCon=member.getMemberPasswordComfirm();
		String memberEmail=member.getMemberEmail();
		
		Map<String, String> errorMessage = new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		model.addAttribute("registerResult", "1");
		
//		System.out.println("1");
//		if (result.hasErrors()) {
//			model.addAttribute("memberParam", member);
//			return "/main/registerForm";
//		}
		String registerResult = service.register(member);
//		
//		
//		
//		
//		
		if (registerResult.equals("Success")) {

//			System.out.println("2");
			model.addAttribute("userId", member.getMemberId());
			return "/main/Index";
		} else {
			model.addAttribute("memberParam", member);
			errorMessage.put("registerError", "所需資訊錯誤");
			return "/main/registerForm";
		}

	}
	@RequestMapping("/register")
	public String openregister(Model model) {
		return "/main/registerForm";
	}
	@RequestMapping("/register")
	public String openregister(Model model) {
		return "/main/registerForm";
	}
	
	@RequestMapping("/registerForm")
	public String register(@Valid @ModelAttribute("registerForm") memberBeans member, BindingResult result,
			Model model) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(member.getMemberPasswordComfirm());
//		System.out.println(member.getMemberEmail());
//		System.out.println(member.getMemberPhonenum());
//		System.out.println(member);
//		System.out.println(result);
//		System.out.println(model);
		String memberId=member.getMemberId();
		String memberPwd=member.getMemberPassword();
		String memberPwdCon=member.getMemberPasswordComfirm();
		String memberEmail=member.getMemberEmail();
		
		Map<String, String> errorMessage = new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		model.addAttribute("registerResult", "1");
		
//		System.out.println("1");
//		if (result.hasErrors()) {
//			model.addAttribute("memberParam", member);
//			return "/main/registerForm";
//		}
		String registerResult = service.register(member);
//		
//		
//		
//		
//		
		if (registerResult.equals("Success")) {

//			System.out.println("2");
			model.addAttribute("userId", member.getMemberId());
			return "/main/Index";
		} else {
			model.addAttribute("memberParam", member);
			errorMessage.put("registerError", "所需資訊錯誤");
			return "/main/registerForm";
		}

	}
	
	@RequestMapping("/beforeupdate")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String beforeupdate(@Valid @ModelAttribute("beforeupdate") memberBeans member, BindingResult result,
			Model model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/userupdate";
		}else {
			System.out.println(member.getMemberId());
			System.out.println(member.getMemberPassword());
			boolean result1 = service.checkpassword(member.getMemberId(), member.getMemberPassword());
			if(result1) {
				System.out.println("correct");
				model.addAttribute("Result", "OK");
			}else {
				System.out.println("incorrect");
				model.addAttribute("Result", "NOTOK");
				return "/admin/userupdate";
			}
		}
		
		return "/admin/userupdate";
		
		
	}
}
