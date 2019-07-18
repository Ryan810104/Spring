package com.recreation.playground.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.ArticleNiceDao;
import com.recreation.playground.entity.ArticleNice;

@Service
public class ArticleNiceService {

	@Autowired
	private ArticleNiceDao dao;
	
	public List<Integer> pressornot(String memberId) {
		List<Integer> list = dao.findByMemberid(memberId);
		if(list != null) {
			return list;
		}
			return null;
	}
	
	public ArticleNice insert(int floor , String id) {
		return dao.findByArticlefloorAndMemberid(floor, id);
	}
	
	public void save(ArticleNice bean) {
		dao.save(bean);
	}

	public void delete(ArticleNice bean) {
		dao.delete(bean);
	}
	
	
}
