﻿package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.MemberMailDao;
import com.recreation.playground.entity.MemberMailBeans;

@Service
@Transactional
public class MemberMailService {
	
	@Autowired
	private MemberMailDao dao;
//	private MemberMailBeans MB;
	
	@Transactional(readOnly = true)
	
	public void delete(MemberMailBeans MB){
		if(MB.getMailNum()!=null) {
			dao.delete(MB);
		}
	}	
//	public void deleteAll() {
//		dao.deleteAll();
//	} 
	
	public List<MemberMailBeans> getAll(){
		return dao.findAll();
	}
	public MemberMailBeans findById(Integer mailNum) {
		return dao.findById(mailNum).orElse(null);
	}	
	public MemberMailBeans findBymemberId(MemberMailBeans MB) {
		return dao.findBymemberId(MB.getMailmemberId());
	}	
	public MemberMailBeans findByReceiver(MemberMailBeans MB) {
		return dao.findByReceiver(MB.getMailReceiver());
	}
		
//	public MemberMailBeans save(MemberMailBeans MB) {
//	return dao.save(MB);
//}
	public String sendMail(MemberMailBeans MB) {
		MemberMailBeans insertData = new MemberMailBeans();
		insertData.setMailmemberId(MB.getMailmemberId());
		insertData.setMailTitle(MB.getMailTitle());
		insertData.setMailMessage(MB.getMailMessage());
		insertData.setMailReceiver(MB.getMailReceiver());
		return "sendMail";
	}
	
}
