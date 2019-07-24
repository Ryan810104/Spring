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
	
	public CustomerMessageBoardBean findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorEqualsAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(int i,  int k , int l);
		
	public ArrayList<CustomerMessageBoardBean> findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorGreaterThanOrderByCustomermessageboardResponseFloorDesc(int i , int j);

	public CustomerMessageBoardBean findByCustomermessageboardNum(int num);
	
	public List<CustomerMessageBoardBean> findByCustomermessageboardMemberidEqualsAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i , int j);
	public List<CustomerMessageBoardBean> findByCustomermessageboardTitleContainingAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i , int j);
	public List<CustomerMessageBoardBean> findByCustomermessageboardMessageContainingAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(String name , int i , int j);
}
