package com.recreation.playground.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.Member;

public interface MemberDao extends JpaRepository<Member, Integer>{
	
	@Select("select member_id, member_password from member where member_id=#{name}")
	public Member findByMemberId(@Param("name") String name);
	
	public Member findByMemberIdAndMemberPassword(String id,String password);
	
	//好友功能需要的搜尋功能
	public List<Member> findByMemberIdContaining(String memberid);
	
	public Member findByMemberEmail(String email);
	public  Member findByMemberNum(int memberNum);
	
	public Member findMemberNumByMemberId(String memberid);
}
