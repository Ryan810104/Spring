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
@Table(name="Complaint")
public class Complaint {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer complaintNum ; 
	@Column
	private String memberId ; 
	@Column
	private String complaintType ; 
	@Column
	private String complaintMessage ; 
	@Column
	@CreatedDate
	private java.util.Date complaintMessagetime ;
	@Column
	private String complaintStatus ;
	@Column
	private String complaintResponse ;

}
