package com.recreation.playground.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.recreation.playground.dao.MemberDao;
import com.recreation.playground.entity.Member;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDao dao;
	public Member findBymemberEmail(String memberEmail) {
		return dao.findByMemberEmail(memberEmail);
	}
	public Member update(Member member) {
//		System.out.println("dao");
		return dao.save(member);
	}

	public Member finById(String memberId) {
		return dao.findByMemberId(memberId);
	}

	public List<Member> findAll() {
		return dao.findAll();
	}

	public String register(Member member) {
		Member insertData = new Member();
		insertData.setMemberId(member.getMemberId());
		insertData.setMemberPassword(member.getMemberPassword());
		insertData.setMemberEmail(member.getMemberEmail());
		insertData.setMemberNickName(member.getMemberNickName());
		insertData.setMemberPhonenum(member.getMemberPhonenum());
		insertData.setMemberPermission(0);
		insertData.setMemberViplevel(0);
		dao.save(insertData);
		return "okSignup";
	}

	public String login(String memberId, String memberPwd) {
		String result = "false";
		Member beans = dao.findByMemberId(memberId);// 查詢資料庫有無此帳戶

		if (beans == null) {
			return result;// 查無帳號回傳'false'
		}

		if (beans.getMemberId() != null && beans.getMemberPassword().equals(memberPwd)) {

			result = "Success";// 有此帳號且資料庫密碼與前端輸入相同時，result改為'Success'
		}
		return result;// 回傳result

	}

	public boolean checkpassword(String id, String password) {
		if (dao.findByMemberIdAndMemberPassword(id, password) != null) {
			return false;
		} else {
			return true;
		}

	}

	public boolean findById(String memberId) {

		if (dao.findByMemberId(memberId) != null) {
			return true;
		} else {
			return false;
		}

	}

	public List<Member> findFriendsByMemberId(String memberid) {
		return dao.findByMemberIdContaining(memberid);
	}

	public String saveImage(MultipartFile imageFile) throws Exception {
		byte[] bytes = imageFile.getBytes();
		// 當前伺服器絕對路徑
		String serverPath = new File(".").getCanonicalPath();

		// 目標資料夾絕對路徑
		String folderPath = serverPath + "\\src\\main\\webapp\\resources\\memberPhoto\\";
		File directory = new File(folderPath);
		// 偵測目標資料夾是否存在，不存在則建立資料夾
		if (!directory.exists()) {
			directory.mkdir();
			// If you require it to make the entire directory path including parents,
			// use directory.mkdirs(); here instead.
		} 
		String imagePathString = folderPath + imageFile.getOriginalFilename();
		String dataBasePath = "\\resources\\memberPhoto\\" + imageFile.getOriginalFilename();
		if (bytes != null) {
			Path imagePath = Paths.get(imagePathString);
			System.out.println("serverPath=" + serverPath);
			System.out.println("folderPath=" + folderPath);
			System.out.println("imagePath=" + imagePath);
			System.out.println("dataBasePath=" + dataBasePath);
			Files.write(imagePath, bytes);
		} else {

		}
		return dataBasePath;
	}

}
