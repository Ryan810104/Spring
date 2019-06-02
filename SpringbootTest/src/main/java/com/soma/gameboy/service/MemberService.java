package com.soma.gameboy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.soma.gameboy.dao.MemberDao;
import com.soma.gameboy.entities.Member;

@Service
@Transactional
public class MemberService {
	
	@Autowired
	private MemberDao memberdao;
	
	@Transactional(readOnly = true)
	public List<Member> getAll() {
		return memberdao.findAll();
	}
}
