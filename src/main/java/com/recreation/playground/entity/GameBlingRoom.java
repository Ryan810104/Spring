package com.recreation.playground.entity;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;



@Entity
@Data
@Table(name="GameBlingRoom")
public class GameBlingRoom {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer roomNum;
	//房間流水號
	
	@Column
	private String  memberId;
	//會員帳號
	
	
	
	@Column
	private String gameRoomId;
	//房間號碼
	
	@Column
	private String gameRoomName;
	//房間名稱
	
	@Column
	private Integer gameRoomStage;
	//房間狀態
	
	@Column
	private String gameResult;
	//賭局結果
	
	@Column
	private String gameRoomMember;
	//房間內參加者
	
	@Column
	private String gameMoney;

}
