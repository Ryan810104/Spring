package com.recreation.playground.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.memberBeans;

public interface memberBeansDao extends JpaRepository<memberBeans, Integer>{

	
	
	@Select("select member_id, member_password from member where member_id=#{name}")
	public memberBeans findByMemberId(@Param("name") String name);
	

}
