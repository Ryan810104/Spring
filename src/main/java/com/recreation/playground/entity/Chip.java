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
@Table(name="Chip")
public class Chip {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="chipNum")
	private Integer chipNum;
	
	@Column(name="chipMemberNum")
	private Integer chipMemberNum;
	
	@Column(name="chipNickName")
	private String chipNickName;
	
	@Column(name="chipFirstName")
	private String chipFirstName;
	
	@Column(name="chipBalanced")
	private Long chipBalanced;
	
	@Column(name="chipType")
	private String chipType;
	
	@Column(name="win")
	private Integer win;
	
	@Column(name="playRound")
	private Float round;
	

}
