package com.recreation.playground.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recreation.playground.dao.CustomerMessageBoardDao;
import com.recreation.playground.entity.CustomerMessageBoardBean;

@Service
public class CustomerMessageBoardService {

	@Autowired
	private CustomerMessageBoardDao dao;
	
	public void insert(CustomerMessageBoardBean beans) {
		dao.save(beans);
	}
	
	public void update(CustomerMessageBoardBean beans) {
		dao.save(beans);
	}
	
	public List<CustomerMessageBoardBean> searchall(int i , int j) {
//		System.out.println(dao.findAll());
		return dao.findByCustomermessageboardArticleFloorBetweenAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(i,j,0);
	}
	
	public List<CustomerMessageBoardBean> searchthelastofmessage(){
//		System.out.println(dao.findTop1ByOrderByCustomermessageboardArticleFloorDesc());
		return dao.findTop1ByOrderByCustomermessageboardArticleFloorDesc();
	}
	
	public List<CustomerMessageBoardBean> searchthelastofcomment(int floor){
		return dao.findTop1ByCustomermessageboardArticleFloorOrderByCustomermessageboardResponseFloorDesc(floor);
	}
	
	public ArrayList<CustomerMessageBoardBean> searchthecomment(int articlefloor){
		return dao.findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorGreaterThanOrderByCustomermessageboardResponseFloorDesc(articlefloor, 0);
	}

	public List<CustomerMessageBoardBean> searchcontinue(int i , int j ){
		System.out.println("i = "+ i + "j = "+j);
		return dao.findByCustomermessageboardArticleFloorBetweenAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(i, j, 0) ;
	}
	
	public CustomerMessageBoardBean searchMessageByNum(int num) {
		return dao.findByCustomermessageboardNum(num);
	}
	
}

 