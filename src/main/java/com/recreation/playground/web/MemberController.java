package com.recreation.playground.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
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
@RequestMapping("/admin/memberBeans")
public class MemberController {
	@Autowired
	private MemberService service;
	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("memberBeansForm") Member member, BindingResult result, Model model,HttpSession session) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(result);
//		System.out.println(model);
		Map<String, String> errorMessage=new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("memberParam", member);
			return "redirect:/main/index";
		}

		String loginResult =service.login(member.getMemberId(),member.getMemberPassword());
		if(loginResult.equals("Success")) {
			session.setAttribute("UID", member.getMemberId());
			session.setAttribute("member", service.finById(member.getMemberId()));
			return "redirect:/main/index";
		}else {
			model.addAttribute("memberParam", member);
			errorMessage.put("loginError", "帳號或密碼錯誤");
			return "redirect:/main/index";
		}
		
	}
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/main/Index";
	}

	@RequestMapping("/register")
	public String openregister(Model model) {
		return "/main/BeforeIndex";
	}
	
	@RequestMapping("/chatroom")
	public String openchatroom(Model model) {
		return"/testChat/chatroom";
	}
	

	

	@RequestMapping("/update")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String update(@Valid @ModelAttribute("userupdate") Member member, BindingResult result,
			Model model) {
		
		return "/admin/userupdate";
	}
	@RequestMapping("/registerForm")
	public String register(@Valid @ModelAttribute("registerForm") Member member, BindingResult result,
			Model model) {

		Map<String, String> errorMessage = new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		model.addAttribute("registerResult", "1");
		String memberId = member.getMemberId();
		System.out.println(memberId);
		String memberPwd = member.getMemberPassword();
		String memberPwdCon = member.getMemberPasswordComfirm();
		String memberNickName = member.getNickName();
		String memberEmail = member.getMemberEmail();
		String memberPhonenum = member.getMemberPhonenum();
		String registerResult1 = "success";
		

//     Id檢查部分
		if (memberId == null || memberId.trim().length() == 0) {
			errorMessage.put("memberId", "帳號必須輸入");
			System.out.println("帳號必須輸入");
			registerResult1 = "false";
		} else if (memberId.length() < 16) {
			if (memberId.length() >= 8) {
				String pattern = "^[a-zA-Z][a-zA-Z0-9]{7,15}$";
				if (memberId.matches(pattern)) {					
					errorMessage.put("memberId", "");
				} else {
					errorMessage.put("memberId", "必須含英文或數字,首字為英文");
					System.out.println("必須含英文或數字,首字為英文");
					registerResult1 = "false";
				}
			} else {
				errorMessage.put("memberId", "必須大於8個字");
				registerResult1 = "false";
			}
		} else {
			errorMessage.put("memberId", "必須小於16個字");
			registerResult1 = "false";
		}

		// 密碼檢查部分
		if (memberPwd == null || memberPwd.trim().length() == 0) {
			errorMessage.put("memberPwd", "密碼必須輸入");
			registerResult1 = "false";
		} else if (memberPwd.length() < 16) {
			if (memberPwd.length() >= 8) {
				String pattern = "^[a-zA-Z0-9]{7,15}$";
				if (memberPwd.matches(pattern)) {
					errorMessage.put("memberPwd", "");
				} else {
					errorMessage.put("memberPwd", "必須含英文或數字,首字為英文");
					System.out.println("必須含英文或數字,首字為英文");
					registerResult1 = "false";
				}
			} else {
				errorMessage.put("memberPwd", "必須大於8個字");
				System.out.println("必須大於8個字");
				registerResult1 = "false";
			}
		} else {
			errorMessage.put("memberPwd", "必須小於16個字");
			System.out.println("必須小於16個字");
			registerResult1 = "false";
		}

		// 驗證密碼部分
		if (memberPwdCon == null || memberPwdCon.trim().length() == 0) {
			errorMessage.put("memberPwdCon", "密碼必須輸入");
			registerResult1 = "false";
		} else if (memberPwd.equals(memberPwdCon)) {
			errorMessage.put("memberPwdCon", "");
		} else {
			errorMessage.put("memberPwdCon", "驗證密碼跟密碼不符");

		}

		// 暱稱驗證
		String chknickname = "^[\\u4E00-\\u9FFF]{2,8}$";

		if (memberNickName != "") {
			if (memberNickName.length() >= 2 && memberNickName.length() <= 8) {
				if (memberNickName.matches(chknickname)) {
					errorMessage.put("memberNickName", "");
					
				} else {
					errorMessage.put("memberNickName", "一定要中文");
					registerResult1 = "false";					
				}

			} else {
				errorMessage.put("memberNickName", "至少需要2~8個字");
				registerResult1 = "false";
				
			}
		} else {
			registerResult1 = "success";
		}

		// 信箱驗證
		String checkmail = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		if (memberEmail != "") {
			if (memberEmail.matches(checkmail)) {
				errorMessage.put("checkmail", "");
			} else {
				errorMessage.put("checkmail", "不符合信箱格式");
				registerResult1 = "false";
				
			}
		} else {
			registerResult1 = "success";
			
		}

		// 電話驗證
		String chkphone = "^[09]{2}[0-9]{8}$";
		if (memberPhonenum == null || memberPhonenum.trim().length() == 0) {
			errorMessage.put("memberPhonenum", "不可空白");			
			registerResult1 = "false";
		} else if (memberPhonenum.matches(chkphone)) {
			errorMessage.put("memberPhonenum", "");			
		} else {
			errorMessage.put("memberPhonenum", "錯誤");
			
			registerResult1 = "false";
		}
		// 判斷是否註冊過
		if (service.findById(memberId)) {
			errorMessage.put("memberId", "此ID有人註冊過了");
			registerResult1 = "false";
		}
		System.out.println(registerResult1);
		

		if (registerResult1.equals("success")) {			
			String registerResult = service.register(member);			
			if (registerResult.equals("okSignup")) {
				model.addAttribute("registerResult1", "0");
				return "/main/BeforeIndex";
			} else
				model.addAttribute("registerResult1", "1");
			return "/main/BeforeIndex";
		} else
			model.addAttribute("registerResult1", "1");
		return "/main/BeforeIndex";
	}


	@RequestMapping("/beforeupdate")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String beforeupdate(@Valid @ModelAttribute("beforeupdate") Member member, BindingResult result,
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
			}else {
				System.out.println("incorrect");
			}
		}
		
		return "/admin/userupdate";
		
		
	}
	@ResponseBody
	@RequestMapping("/findfriend")
	public List<Member> friendsfind (String findmemberid) {
		service.findFriendsByMemberId(findmemberid);
		System.out.println("ss0"+service.findFriendsByMemberId(findmemberid));
		return service.findFriendsByMemberId(findmemberid);
	}
}
