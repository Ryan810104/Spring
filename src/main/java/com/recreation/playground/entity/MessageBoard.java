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
@Table(name = "Messageboard")


public class MessageBoard {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Integer mboardMessageNum;

	@Column
	private String mboardMemberId;

	@Column
	private String mboardTitle;

	@Column
	private String mboardMessage;

	
	@Column(name="CREATE_TIME")
	@CreatedDate
	private Date mboardMessageTime;
}
