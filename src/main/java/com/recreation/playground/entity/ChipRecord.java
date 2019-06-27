package com.recreation.playground.entity;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Entity
@Data
@Table(name="Chiprecord")
public class ChipRecord {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="chipRecordNum")
	private Integer chipRecordNum;
	
	@Column(name="chipRecordMemberid")
	private String chipRecordMemberid;

	@Column(name="chipRecordRecord")
	private Integer chipRecordRecord;
		

	@Column(name="chip_record_time")
	@CreatedDate
	private Date chipRecordTime=new Date();
}
