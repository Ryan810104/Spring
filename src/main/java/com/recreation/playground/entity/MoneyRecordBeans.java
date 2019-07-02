package com.recreation.playground.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Data;

@Entity
@EntityListeners(AuditingEntityListener.class)
@Data
@Table(name = "MoneyRecord")
public class MoneyRecordBeans {
	
	@Id
	@GeneratedValue
	@Column(name="MoneyRecord_num")
	private Integer moneyRecordNum;
	
	@Column
	private String 	moneyRecordUserId;
	
	@Column
	@CreatedDate
	private java.util.Date 	moneyRecordTime;
	
	@Column
	private Integer moneyRecordAmount;
	
	@Column
	private String 	moneyRecordChipType;
	
}
