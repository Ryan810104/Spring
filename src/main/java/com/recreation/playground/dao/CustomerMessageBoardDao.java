package com.recreation.playground.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.CustomerMessageBoardBean;

public interface CustomerMessageBoardDao extends JpaRepository<CustomerMessageBoardBean, Integer>{
 
	public List<CustomerMessageBoardBean> findTop1ByOrderByCustomermessageboardArticleFloorDesc();
	
	public List<CustomerMessageBoardBean> findTop1ByCustomermessageboardArticleFloorOrderByCustomermessageboardResponseFloorDesc(int floor);
	
	public List<CustomerMessageBoardBean> findByCustomermessageboardArticleFloorBetweenAndCustomermessageboardResponseFloorEqualsAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(int i, int j , int k , int l);
		
	public ArrayList<CustomerMessageBoardBean> findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorGreaterThanOrderByCustomermessageboardResponseFloorDesc(int i , int j);

	public CustomerMessageBoardBean findByCustomermessageboardNum(int num);
	
	public List<CustomerMessageBoardBean> findByCustomermessageboardMemberidEqualsAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i);
	public List<CustomerMessageBoardBean> findByCustomermessageboardTitleContainingAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i);
	public List<CustomerMessageBoardBean> findByCustomermessageboardMessageContainingAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i);
}
