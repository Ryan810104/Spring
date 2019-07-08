package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.ArticleNice;

public interface ArticleNiceDao extends JpaRepository<ArticleNice, Integer> {
	
	public List<ArticleNice> findByArticlefloorAndMemberid(int i , String j);
	
}
