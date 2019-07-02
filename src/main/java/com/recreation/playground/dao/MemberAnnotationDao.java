package com.recreation.playground.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.MemberAnnotation;

public interface MemberAnnotationDao extends JpaRepository<MemberAnnotation, Integer>{
	
	@Select("SELECT annotTitle FROM MemberAnnotation WHERE annotfromId=#{name}")
	public MemberAnnotation findByAnnotfromId(@Param("name") String titlesFromWho);
	
	@Select("SELECT annotTitle FROM MemberAnnotation WHERE annotforId=#{name}")
	public MemberAnnotation findByAnnotforId(@Param("name") String titlesForWho);
	
	public String findByAnnotTitle(String titles);
	
	
}
