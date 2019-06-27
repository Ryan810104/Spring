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
@Table(name="CustomerMessageBoard")
public class CMBBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private int CustomermessageboardNum ; 
	@Column
	private String CustomermessageboardMemberid ;
	@Column
	private String CustomermessageboardTitle ; 
	@Column
	private String CustomermessageboardMessage ; 
	@Column
	private java.util.Date CustomermessageboardMessagetime ;
	@Column
	private String CustomermessageboardStatus ;

} 
