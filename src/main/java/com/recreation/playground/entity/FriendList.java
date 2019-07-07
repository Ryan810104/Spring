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

public class FriendList {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="friendListNum")
	private Integer friendlistnum;
	
	@Column(name="friendListMemberid")
	private Integer friendlistmemberid;
	
	@Column(name="friendListFriendid")
	private Integer friendlistfriendid;
	
	@Column(name="friendIdIsRead", columnDefinition = "bit default 0")
	private boolean friendidisread;
}
