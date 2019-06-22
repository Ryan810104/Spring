package com.recreation.playground.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Entity

@EntityListeners(AuditingEntityListener.class)
@Data
@Table(name="Member")
public class memberBeans {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer memberNum;
	//會員流水號
	@Column
	private String  memberId;
	//會員帳號
	@Column
	private String  memberPassword;
	//會員密碼
	
	private String memberPasswordComfirm;
	
	private String nickName;
	
	@Column
	private Integer memberPermission;
	//會員權限
	@Column
	private String  memberEmail;
	//會員郵箱
	@Column
	private String  memberPhonenum;
	//會員電話
	
	
	@Column(name="CREATE_TIME")
	@CreatedDate
	private Date createTime;
	
	
	//註冊日期
	@Column
	private Integer memberViplevel;
	//會員VIP等級
	@Column(length=100000)
	private byte[]  memberPhoto;
	//會員照片
	
	
	
	
	
	
}
