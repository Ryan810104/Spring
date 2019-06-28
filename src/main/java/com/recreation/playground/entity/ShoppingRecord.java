package com.recreation.playground.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Entity
@EntityListeners(AuditingEntityListener.class)
@Data
@Table(name="ShoppingRecord")
public class ShoppingRecord {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer orderNum;
	@Column
	private String  memberId;
	
	private String itemName;
	
	@Column
	private Integer itemCost;
	@Column
	private Integer purchaseQuantity;
	@Column
	private Integer  actualCost;
	@Column
	private Integer  discount;
	@Column(name="CREATE_TIME")
	@CreatedDate
	private Date createTime;
		
}
