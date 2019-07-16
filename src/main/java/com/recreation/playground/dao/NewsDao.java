package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.News;

public interface NewsDao extends JpaRepository<News, Integer> {
	public List<News> findAllByOrderByNewsnumDesc();
}
