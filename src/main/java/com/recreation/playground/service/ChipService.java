package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.ChipDao;
import com.recreation.playground.entity.Chip;

@Service
@Transactional
public class ChipService {

	@Autowired
	ChipDao dao;

	public Page<Chip> getAll(Specification<Chip> specification, Pageable pageable) {
		return dao.findAll(specification,pageable);
	}

	public void delete(Chip chip) {
		if (chip.getChipMemberNum() != null)
			dao.delete(chip);
	}

	public Chip getByChipMemberNum(Chip chip) {
		return dao.findByChipMemberNum(chip.getChipMemberNum());
	}

	public Chip save(Chip chip) {
		return dao.save(chip);
	}

	public Chip getByChipMemberNum(Integer chipMemberNum) {
		return dao.findByChipMemberNum(chipMemberNum);

	}

	public Chip findByChipNum(Integer chipNum) {
		return dao.findById(chipNum).orElse(null);
	}
	
//	public List<Object> findTheBestWinner(Specification<Object> specification, Pageable pageable){
//		return dao.findTheBestWinner(specification,pageable);
//	}

}
