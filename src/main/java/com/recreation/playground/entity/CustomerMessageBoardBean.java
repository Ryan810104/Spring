package com.recreation.playground.entity;

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
@Table(name="CustomerMessageBoard")
public class CustomerMessageBoardBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private int CustomermessageboardNum ; 
	@Column
	private int CustomermessageboardArticleFloor ; 
	@Column
	private int CustomermessageboardResponseFloor ; 
	@Column
	private String CustomermessageboardMemberid ;
	@Column
	private String CustomermessageboardTitle ; 
	@Column
	private String CustomermessageboardMessage ; 
	@Column
	@CreatedDate
	private java.util.Date CustomermessageboardMessagetime ;
	@Column
	private String CustomermessageboardStatus ;

} 
