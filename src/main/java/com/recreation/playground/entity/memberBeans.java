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
	@Column
	private String  memberRegisteredDate;
	//註冊日期
	@Column
	private Integer memberViplevel;
	//會員VIP等級
	@Column(length=100000)
	private byte[]  memberPhoto;
	//會員照片
	
	
	
	
	
	
}
