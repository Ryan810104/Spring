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
@Table(name = "MoneyRecord")
public class MoneyRecordBeans {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MoneyRecord_num")
	private Integer moneyRecordNum;
	
	@Column(name="MoneyRecord_userid")
	private String 	moneyRecordUserId;
	
	@Column(name="MoneyRecord_time")
	@CreatedDate
	private Date 	moneyRecordTime;
	
	@Column(name="MoneyRecord_amount")
	private Integer moneyRecordAmount;
	
	@Column(name="MoneyRecord_chiptype")
	private String 	moneyRecordChipType;
	
}
