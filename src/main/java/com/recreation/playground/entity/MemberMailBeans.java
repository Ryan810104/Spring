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

import lombok.Data;

@Entity
@EntityListeners(AuditingEntityListener.class)
@Data
@Table(name = "MemberMail")
public class MemberMailBeans {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer mailNum;
	
	@Column
	private String 	mailMemberId;
	
	@Column
	private String 	mailTitle;
	
	@Column
	private String 	mailMessage;
	
	@Column
	@CreatedDate
	private Date 	mailMessageTime;
	
	@Column
	private String 	mailReceiver;
}
