package com.recreation.playground.entity;

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
@Table(name="MemberAnnotation")
public class MemberAnnotation {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer annotNum;
	
	@Column
	private String annotfromId;
	
	@Column
	private String annotTitle;
	
	@Column
	private String annotMessage;
	
	@Column
	@CreatedDate
	private java.util.Date annotTime;
	
	@Column
	private String annotforId;
}
