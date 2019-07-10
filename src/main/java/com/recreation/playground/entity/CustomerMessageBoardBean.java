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
@Data
@Table(name="CustomerMessageBoard")
@EntityListeners(AuditingEntityListener.class)
public class CustomerMessageBoardBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private int customermessageboardNum ; 
	@Column
	private int customermessageboardArticleFloor ; 
	@Column 
	private int customermessageboardResponseFloor ; 
	@Column
	private String customermessageboardMemberid ;
	@Column
	private int customermessageboardMemberNum ;
	@Column
	private String customermessageboardTitle ; 
	@Column
	private String customermessageboardMessage ; 
	@Column(name="CustomermessageboardMessagetime")
	@CreatedDate
	private Date customermessageboardMessagetime;
	@Column
	private String customermessageboardStatus ;

} 
