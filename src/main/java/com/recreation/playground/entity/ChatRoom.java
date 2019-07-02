package com.recreation.playground.entity;

import java.util.Date;

import javax.annotation.Generated;
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
@Table(name="ChatRoom")
@EntityListeners(AuditingEntityListener.class)
public class ChatRoom {
	@Id
	@Column(name="chatRoomNum")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer chatroomnum;
	@Column(name="chatRoomMemberid")
	private Integer chatroommemberid;
	@Column(name="chatRoomMessageTo")
	private Integer chatroommessageto;
	@Column(name="chatRoomMessage")
	private String chatroommessage;
	
	@Column(name="chatRoomTime")
	@CreatedDate
	private Date chatroomtime;
}
