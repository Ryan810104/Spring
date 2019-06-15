package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.memberBeansDao;
import com.recreation.playground.entity.memberBeans;

@Service
@Transactional
public class memberBeansService {
	@Autowired
	private memberBeansDao dao;

	
	public String login(String memberId,String memberPwd) {
		String result="false";
		System.out.println();
		
		memberBeans beans=dao.findByMemberId(memberId);
		
		if(beans.getMemberId()!=null&&beans.getMemberPassword().equals(memberPwd)){

			result="Success";
		}
		return result;
	}
	
}
