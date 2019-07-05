package com.recreation.playground.entity;


import java.io.Serializable;
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
@Table(name="Moneyrecord")
public class MoneyRecord implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="moneyRecordNum")
	private Integer moneyRecordNum;
	
	@Column(name="moneyRecordMemberNum")
	private Integer moneyRecordMemberNum;
	
	@Column(name="moneyRecordFirstName")
    private String moneyRecordFirstName;
	
	@Column(name="moneyRecordNickName")
	private String moneyRecordNickName;
	
	@Column(name="moneyRecordTime")
	@CreatedDate
	private Date moneyRecordTime=new Date();
	
	@Column(name="moneyRecordPoint")
	private Long moneyRecordPoint;
	
//	@Column(name="money_record_chip_type")
//	private String ChipType;

	@Column(name="moneyRecordChip")
	private Long moneyRecordChip;
	
	
	@Column(name="moneyRecordChiptype")
	private String moneyRecordChiptype;
	
}
