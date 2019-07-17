package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.recreation.playground.entity.ArticleNice;

public interface ArticleNiceDao extends JpaRepository<ArticleNice, Integer> {
	
	@Query(value="select articlefloor from article_nice where pressid=?1",nativeQuery=true)
	public List<Integer> findByMemberid(String memberId);
	
	public ArticleNice findByArticlefloorAndMemberid(int floor , String id);
	
	
}
