package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.VipDao;
import com.recreation.playground.entity.Vip;


@Service
@Transactional
public class VipService {

	@Autowired
	private VipDao vipdao;
	private Vip vip;

	@Transactional(readOnly = true)
	public List<Vip> getAll() {
		return vipdao.findAll();
	}

	public void delete(Vip vip) {
		if (vip.getVipnumber() != null)
			vipdao.delete(vip);
	}

	public Vip getById(Integer vipnumber) {
		return vipdao.findById(vipnumber).orElse(null);

	}

	public Vip findById(Integer vipnumber) {
		return vipdao.findById(vipnumber).orElse(null);
	}

	public Vip save(Vip vip) {
		return vipdao.save(vip);
	}
	
	public int findCurrentId() {
		return vipdao.findCurrentId();
	}
	

}
