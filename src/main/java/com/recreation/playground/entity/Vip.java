package com.recreation.playground.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="VipLevel")
public class Vip {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="vipNum")
	private Integer vipnum;
	
	@Column(name="vipViplevel")
	private Integer viplevel;
	
	@Column(name="vipTitle")
	private String viptitle;
	
	@Column(name="vipPic")
	private String vippic;
	
	@Column(columnDefinition="Decimal(10,2)", name="vipDiscount")
	private Double vipdiscount;

}
