package com.recreation.playground.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.recreation.playground.entity.Complaint;

public interface ComplaintDao extends JpaRepository<Complaint, Integer>{
	
	@Select("SELECT complaint_type FROM Complaint WHERE member_id=#{name}")
	public Complaint findByMemberId(@Param("name") String memberid); 

	@Select("SELECT complaint_type FROM Complaint WHERE member_status=#{name}")
	public Complaint findByComplaintStatus(@Param("name") String status);

//	@Select("SELECT complaint_status FROM Complaint WHERE member_title=#{name}")
//	public Complaint findByComplaintTitle(@Param("name") String title);
	
	@Select("SELECT complaint_type FROM Complaint WHERE complaint_message_time = %#{name}%")
	public Complaint findByComplaintMessagetimeLike(@Param("name") java.util.Date date);

	public String findByComplaintType(String type);

}
