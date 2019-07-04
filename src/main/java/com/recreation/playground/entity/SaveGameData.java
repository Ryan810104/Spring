package com.recreation.playground.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SaveGameData")
public class SaveGameData {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer gameDataNum;
	
	@Column
	private String balance;
	
	@Column
	private String memberId;
	
	@Column
	private String gameType;
	
	@Column
	private String round;
}
