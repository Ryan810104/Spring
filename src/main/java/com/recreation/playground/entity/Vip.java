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
	@Column(name="vip_level")
	private Integer vipnumber;
	
	@Column(name="vip_title")
	private String viptitle;

}
