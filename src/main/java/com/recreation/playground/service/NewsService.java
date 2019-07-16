package com.recreation.playground.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recreation.playground.dao.NewsDao;
import com.recreation.playground.entity.News;

@Service
@Transactional
public class NewsService {
	
	@Autowired
	NewsDao newsdao;
	
	@PersistenceContext
	EntityManager em;
	
	public List<News> printall(){
		return newsdao.findAllByOrderByCreatedateDesc();
	}
}
