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
	private int ComplaintNum ; 
	@Column
	private String MemberId ; 
	@Column
	private String ComplaintTitle ; 
	@Column
	private String ComplaintMessage ; 
	@Column
	@CreatedDate
	private java.util.Date ComplaintMessagetime ;
	@Column
	private String ComplaintStatus ;
	@Column
	private String ComplaintResponse ;

}
