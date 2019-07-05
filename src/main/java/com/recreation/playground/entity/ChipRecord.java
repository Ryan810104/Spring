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
@Table(name="Chiprecord")
public class ChipRecord {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="chipRecordNum")
	private Integer chipRecordNum;
	
	@Column(name="chipRecordMemberNum")
	private Integer chipRecordMemberNum;
	
	@Column(name="chipRecordNickName")
	private String chipRecordNickName;
	
	@Column(name="chipRecordFirstName")
	private String chipRecordFirstName;
	
	@Column(name="chipRecordTime")
	@CreatedDate
	private Date chipRecordTime=new Date();
	
	@Column(name = "chipRecordChip")
	private Long chipRecordChip;
	
	@Column(name = "chipRecordChiptype")
	private String chipRecordChipType;
	
	@Column(name="playRound")
	private Integer chipRecordRound;
	
	@Column(name="win")
	private Integer chipRecordWin;
	
}
