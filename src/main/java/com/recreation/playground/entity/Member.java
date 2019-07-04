package com.recreation.playground.entity;


import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.extern.jbosslog.JBossLog;

@Entity

@EntityListeners(AuditingEntityListener.class)
@Data
@Table(name="Member")
public class Member {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer memberNum;
	//會員流水號
	@Column
	private String  memberId;
	//會員帳號
	@Column
	private String  memberPassword;
	//會員密碼
	
	private String memberPasswordComfirm;
	@Column
	private String memberNickName;
	@Column
	private String memberFitstName;
	@Column
	private String memberLastName;
	
	@Column
	private Integer memberPermission;
	//會員權限
	
	@Column
	private String  memberEmail;
	//會員郵箱
	@Column
	private String  memberPhonenum;
	//會員電話
	
	@Column
	private String memberAddress;
	//會員住址
	
	@Column(name="CREATE_TIME")
	@CreatedDate
	private Date createTime;
	
	
	//註冊日期
	@Column
	private Integer memberViplevel;
	//會員VIP等級

	private String memberPhotoURL;
	
	@Column
	@Lob
	@JsonIgnore
	private Blob  memberPhoto;

	//會員照片
	
	@Column
	private Integer moneyBalance;

	@XmlTransient
	@Transient
	@JsonIgnore
    private MultipartFile productImage;
  
	
	private String memberLocation;
	
}
