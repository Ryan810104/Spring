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
//		System.out.println("1");
		memberBeans beans=dao.findByMemberId(memberId);//查詢資料庫有無此帳戶
		
		
//		System.out.println("2");
//		System.out.println(beans);
		if(beans==null) {
			return result;//查無帳號回傳'false'
		}
		
		
		
		if(beans.getMemberId()!=null&&beans.getMemberPassword().equals(memberPwd)){

			result="Success";//有此帳號且資料庫密碼與前端輸入相同時，result改為'Success'
			
		}
		
//		System.out.println("3");
		
		return result;//回傳result
		
	}
	
	
	public boolean checkpassword(String id,String password) {
		if(dao.findByMemberIdAndMemberPassword(id,password) != null) {
			return true;
		}else {
			return false;
		}
		
	}
	
}
