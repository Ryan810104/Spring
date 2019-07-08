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
@Data
@Table(name="Complaint")
@EntityListeners(AuditingEntityListener.class)
public class Complaint {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer complaintNum ; 
	@Column
	private String memberId ; 
	@Column
	private Integer complaintType ; 
	@Column
	private String complaintMessage ; 
	@Column
	@CreatedDate
	private java.util.Date complaintMessagetime ;
	@Column
	private java.util.Date complaintResponsetime ;
	@Column
	private Integer complaintStatus ;
	@Column
	private String complaintResponse ;

}
