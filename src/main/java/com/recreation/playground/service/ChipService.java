package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ChipDao;
import com.recreation.playground.entity.Chip;
import com.recreation.playground.entity.Member;

@Service
@Transactional
public class ChipService {
	
	@Autowired
	ChipDao dao;
	
	public List<Chip> getAll() {
		return dao.findAll();
	}
	
	
	public void delete(Chip chip){
		if (chip.getChipMemberid() != null)
			dao.delete(chip);
	}
	
	public Chip getByMemberid(Chip chip) {
	return dao.findByChipMemberid(chip.getChipMemberid());
	}
	
	public Chip save(Chip chip) {
		return dao.save(chip);
	}
	public Chip getByChipMemberid(String chipMemberid) {
		return dao.findByChipMemberid(chipMemberid);

	}
	
	public Chip findByChipNum(Integer chipNum) {
		return dao.findById(chipNum).orElse(null);
	}
	
	
	

}
