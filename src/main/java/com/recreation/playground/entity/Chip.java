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
	
	@Column(name="chipMemberid")
	private String chipMemberid;
	
	@Column(name="chipBalanced")
	private Integer chipBalanced;

}
