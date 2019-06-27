package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.Chip;

public interface ChipDao extends JpaRepository<Chip, Integer> {

	public Chip findByChipMemberid(String chipMemberid);
}
