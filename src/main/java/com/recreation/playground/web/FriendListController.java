package com.recreation.playground.web;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.FriendList;
import com.recreation.playground.entity.Member;
import com.recreation.playground.service.FriendListService;
import com.recreation.playground.service.MemberService;


@Controller
@RequestMapping("/friend/list")
public class FriendListController {

	@Autowired
	private FriendListService friendlistservice;
	
	@Autowired
	private MemberService service;
	
	@PersistenceContext
	EntityManager em;
	
	@RequestMapping("/index")
	public String toIndex(Model model){
		return "/main/friend/FriendIndex";
	}
	
	@RequestMapping("/add")
	public String insert(FriendList friendlist, BindingResult result, Model model) {
		System.out.println(friendlist);
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "main/Index";
		}
		friendlistservice.save(friendlist);
		return "/main/friend/FriendIndex";
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findmyfriend")
	public List<Object[]> findmyfriend(Integer membernum , Model model) { 
		String sql = "SELECT f.friend_list_friendid , m.member_id , m.member_email , m.member_viplevel FROM friend_list f ,member m  WHERE f.friend_list_memberid = "+membernum+" AND  f.friend_list_friendid = m.member_num";
		return em.createNativeQuery(sql)
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/getreceiversid")
	@ResponseBody
	public List<Object[]> chatroomuserid(Integer memberid,Model model){
		String sql = " SELECT member_num,member_id  FROM member where member_num = "+memberid;
		return em.createNativeQuery(sql).getResultList();
	}
	
	@ResponseBody
	@RequestMapping("/test")
	public Member test1 (Integer memberid,Model model) {
		Member a = em.find(Member.class, memberid);
		System.out.println(a.getMemberEmail());
		return a;
	}

}
