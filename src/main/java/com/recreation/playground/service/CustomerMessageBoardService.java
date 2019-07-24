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
	
	public CustomerMessageBoardBean searchall(int i ) {
//		System.out.println(dao.findAll());
		return dao.findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorEqualsAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(i,0,1);
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

	public CustomerMessageBoardBean searchcontinue(int i ){
		return dao.findByCustomermessageboardArticleFloorEqualsAndCustomermessageboardResponseFloorEqualsAndCustomermessageboardStatusEqualsOrderByCustomermessageboardArticleFloorDesc(i, 0 , 1) ;
	}
	
	public CustomerMessageBoardBean searchMessageByNum(int num) {
		return dao.findByCustomermessageboardNum(num);
	}
	
	public List<CustomerMessageBoardBean> searchbyid(String i ){
		return dao.findByCustomermessageboardMemberidEqualsAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(i, 1 , 0);
	}
	
	public List<CustomerMessageBoardBean> searchbytitle(String i){
		return dao.findByCustomermessageboardTitleContainingAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(i, 1 , 0);
				}
	
	public List<CustomerMessageBoardBean> searchbycontent(String i ){
		return dao.findByCustomermessageboardMessageContainingAndCustomermessageboardStatusEqualsAndCustomermessageboardResponseFloorEqualsOrderByCustomermessageboardArticleFloorDesc(i, 1 , 0);
	}
	
}

 