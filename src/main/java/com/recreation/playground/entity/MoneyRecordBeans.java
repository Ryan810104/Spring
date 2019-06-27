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
	@GeneratedValue
	@Column(name="MoneyRecord_num")
	private Integer moneyRecordNum;
	
	@Column
	private String 	moneyRecordUserId;
	
	@Column
	@CreatedDate
	private Date 	moneyRecordTime;
	
	@Column
	private Integer moneyRecordAmount;
	
	@Column
	private String 	moneyRecordChipType;
	
}
