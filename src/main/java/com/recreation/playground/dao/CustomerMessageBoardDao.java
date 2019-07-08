package com.recreation.playground.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.CustomerMessageBoardBean;

public interface CustomerMessageBoardDao extends JpaRepository<CustomerMessageBoardBean, Integer>{
 
	public List<CustomerMessageBoardBean> findTop1ByOrderByCustomermessageboardArticleFloorDesc();
	
	public List<CustomerMessageBoardBean> findTop1ByCustomermessageboardArticleFloorOrderByCustomermessageboardResponseFloorDesc(int floor);
	
	public List<CustomerMessageBoardBean> findByCustomermessageboardArticleFloorBetweenAndCustomermessageboardResponseFloorEquals(int i, int j , int k);
		
	public List<CustomerMessageBoardBean> findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorGreaterThanOrderByCustomermessageboardResponseFloorDesc(int i , int j);
}
