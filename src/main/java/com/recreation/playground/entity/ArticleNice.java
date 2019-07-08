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
@Table(name="FriendList")
public class ArticleNice {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="Num")
		private Integer num;
		
		@Column(name="Articlefloor")
		private Integer articlefloor;
		
		@Column(name="pressid")
		private String memberid;
	
}
