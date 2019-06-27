package com.recreation.playground.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;

import lombok.Data;

@Entity
@Data
@Table(name = "MemberMail")
public class MemberMailBeans {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MemberMail_num")
	private Integer mailNum;
	
	@Column(name="MemberMail_memberid")
	private String 	mailmemberId;
	
	@Column(name="MemberMail_title")
	private String 	mailTitle;
	
	@Column(name="MemberMail_message")
	private String 	mailMessage;
	
	@Column(name="MemberMail_messagetime")
	@CreatedDate
	private Date 	mailMessageTime;
	
	@Column(name="MemberMail_receiver")
	private String 	mailReceiver;
}
