package com.recreation.playground.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.ArticleNiceDao;

@Service
public class ArticleNiceService {

	@Autowired
	private ArticleNiceDao dao;
	
	public int pressornot(int i , String j) {
		
		if(dao.findByArticlefloorAndMemberid(i, j) != null) {
			return 1 ;
		}else {
			return 0 ;
		}
		
	}
	
	
}
