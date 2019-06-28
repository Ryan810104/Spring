package com.recreation.playground.entity;


import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="ItemList")
public class ItemList implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer itemNum;
	
	@Column
	private String  itemName;
	
	@Column
	private Integer itemCost;
	
	@Lob
	private byte[]  itemPhoto;
	
}
