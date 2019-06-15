package com.recreation.playground.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="Member")
public class memberBeans {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer memberNum;
	
	@Column
	private String  memberId;
	
	@Column
	private String  memberPassword;
	
	@Column
	private Integer memberPermission;
	
	@Column
	private String  memberEmail;
	
	@Column
	private String  memberPhonenum;
	
	@Column
	private String  memberRegisteredDate;
	
	@Column
	private Integer memberViplevel;
	
	@Column
	private String  memberPhoto;
	
	
	
	
	
	
	
}
