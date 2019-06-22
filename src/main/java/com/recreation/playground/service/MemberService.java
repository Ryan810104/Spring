package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.MemberDao;
import com.recreation.playground.entity.Member;

@Service
@Transactional
public class MemberService {

	@Autowired
	private MemberDao memberdao;

	@Transactional(readOnly = true)
	public List<Member> getAll() {
		return memberdao.findAll();
	}

	public void delete(Member member) {
		if (member.getId() != null)
			memberdao.delete(member);
	}
	
	public List <Member> getByPhoneOrPassword(String phone,String password) {
		return memberdao.findByPhoneOrPassword(phone, password);
	}

	public Member getById(Integer Id) {
		return memberdao.findById(Id).orElse(null);

	}

	public Member findById(Integer Id) {
		return memberdao.findById(Id).orElse(null);
	}

	public Member save(Member member) {
		return memberdao.save(member);
	}
	
	public Member getidpsd(Integer id , String password) {
		return memberdao.findByIdAndPassword(id, password);
	}

}
