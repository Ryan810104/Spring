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
@Table(name="News")
@EntityListeners(AuditingEntityListener.class)
public class News {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	public Integer newsnum;
	@Column
	public String title;
	@Column
	public String briefcontent;
	@Column
	public String content;
	
	@Column
	@CreatedDate
	public java.util.Date createdate;
}
