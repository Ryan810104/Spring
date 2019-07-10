package com.recreation.playground.web;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
	public String insert(Integer yourid,Integer friendid, Model model) {
//		System.out.println(friendlist);
		FriendList friend = new FriendList();
		friend.setFriendlistmemberid(yourid);
		friend.setFriendlistfriendid(friendid);
		friendlistservice.save(friend);
		return "/main/friend/FriendIndex";
	}
	@ResponseBody
	@RequestMapping("/addnRead")
	@Transactional
	public void addnRead (Integer memberid, Integer friendid, Integer listnum){
		FriendList add = new FriendList();
		add.setFriendlistmemberid(memberid);
		add.setFriendlistfriendid(friendid);
		add.setFriendidisread(true);
		add.setFriendnotify(0);
		friendlistservice.save(add);
		FriendList list = em.find(FriendList.class, listnum);
		list.setFriendidisread(true);
		list.setFriendnotify(0);
		em.persist(list);
	}
	
	
	@ResponseBody
	@RequestMapping("/friendRead")
	@Transactional
	public void friendRead ( Integer listnum){
		FriendList list = em.find(FriendList.class, listnum);
		list.setFriendnotify(1);
		em.persist(list);
	}
	
	@ResponseBody
	@RequestMapping("/naddnRead")
	@Transactional
	public void naddnRead (Integer memberid, Integer friendid, Integer listnum){
		FriendList list = em.find(FriendList.class, listnum);
		list.setFriendidisread(true);
		em.remove(list);
	}
	
	
// 找friendlist 彼此的isread欄位都是1的為好友	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/findmyfriend")
	public List<Object[]> findmyfriend(Integer memberid , Model model) { 
		String sql = "SELECT DISTINCT  f1.friend_list_friendid , m1.member_id FROM friend_list f1   JOIN friend_list f2 ON f2.friend_list_memberid = f1.friend_list_friendid JOIN  member m1 ON m1.member_num = f1.friend_list_friendid  WHERE f1.friend_list_memberid = "+memberid+" and f1.friend_id_is_read = f2.friend_id_is_read and f1.friend_id_is_read = 1";
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
