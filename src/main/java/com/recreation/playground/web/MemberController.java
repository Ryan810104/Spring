package com.recreation.playground.web;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.recreation.playground.entity.Member;
import com.recreation.playground.service.MemberService;

@Controller
@RequestMapping("/admin/memberBeans")
public class MemberController {
	@Autowired
	private MemberService service;
	@Autowired
	EntityManager em ;

	@Autowired
	ServletContext context;
	
	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("memberBeansForm") Member member, BindingResult result, Model model,HttpSession session) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(result);
//		System.out.println(model);
		Map<String, String> errorMessage=new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("memberParam", member);
			return "/main/Index";
		}

		String loginResult =service.login(member.getMemberId(),member.getMemberPassword());
		if(loginResult.equals("Success")) {
			session.setAttribute("UID", member.getMemberId());
			session.setAttribute("member", service.finById(member.getMemberId()));
			return "/main/Index";
		}else {
			model.addAttribute("memberParam", member);
			errorMessage.put("loginError", "帳號或密碼錯誤");
			return "/main/Index";
		}
		
	}
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/main/Index";
	}

	@RequestMapping("/register")
	public String openregister(Model model) {
		return "/main/BeforeIndex";
	}
	
	@RequestMapping("/chatroom")
	public String openchatroom(Model model) {
		return"/testChat/chatroom";
	}
	

	

	@RequestMapping("/update")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String update(@Valid @ModelAttribute("userupdate") Member member, BindingResult result,
			Model model) {
		
		return "/admin/userupdate";
	}
	@RequestMapping("/registerForm")
	public String register(@Valid @ModelAttribute("registerForm") Member member, BindingResult result,
			Model model) {

		Map<String, String> errorMessage = new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		model.addAttribute("registerResult", "1");
		String memberId = member.getMemberId();
		
		String memberPwd = member.getMemberPassword();
		String memberPwdCon = member.getMemberPasswordComfirm();
		String memberNickName=member.getMemberNickName();
		System.out.println(memberNickName);
		String memberEmail = member.getMemberEmail();
		String memberPhonenum = member.getMemberPhonenum();
		String registerResult1 = "success";
		

//     Id檢查部分
		if (memberId == null || memberId.trim().length() == 0) {
			errorMessage.put("memberId", "帳號必須輸入");
			System.out.println("帳號必須輸入");
			registerResult1 = "false";
		} else if (memberId.length() < 16) {
			if (memberId.length() >= 8) {
				String pattern = "^[a-zA-Z][a-zA-Z0-9]{7,15}$";
				if (memberId.matches(pattern)) {					
					errorMessage.put("memberId", "");
				} else {
					errorMessage.put("memberId", "必須含英文或數字,首字為英文");
					System.out.println("必須含英文或數字,首字為英文");
					registerResult1 = "false";
				}
			} else {
				errorMessage.put("memberId", "必須大於8個字");
				registerResult1 = "false";
			}
		} else {
			errorMessage.put("memberId", "必須小於16個字");
			registerResult1 = "false";
		}

		// 密碼檢查部分
		if (memberPwd == null || memberPwd.trim().length() == 0) {
			errorMessage.put("memberPwd", "密碼必須輸入");
			registerResult1 = "false";
		} else if (memberPwd.length() < 16) {
			if (memberPwd.length() >= 8) {
				String pattern = "^[a-zA-Z0-9]{7,15}$";
				if (memberPwd.matches(pattern)) {
					errorMessage.put("memberPwd", "");
				} else {
					errorMessage.put("memberPwd", "必須含英文或數字,首字為英文");
					System.out.println("必須含英文或數字,首字為英文");
					registerResult1 = "false";
				}
			} else {
				errorMessage.put("memberPwd", "必須大於8個字");
				System.out.println("必須大於8個字");
				registerResult1 = "false";
			}
		} else {
			errorMessage.put("memberPwd", "必須小於16個字");
			System.out.println("必須小於16個字");
			registerResult1 = "false";
		}

		// 驗證密碼部分
		if (memberPwdCon == null || memberPwdCon.trim().length() == 0) {
			errorMessage.put("memberPwdCon", "密碼必須輸入");
			registerResult1 = "false";
		} else if (memberPwd.equals(memberPwdCon)) {
			errorMessage.put("memberPwdCon", "");
		} else {
			errorMessage.put("memberPwdCon", "驗證密碼跟密碼不符");

		}

		// 暱稱驗證
		String chknickname = "^[\\u4E00-\\u9FFF]{2,8}$";
		
		if (memberNickName != "") {
			if (memberNickName.length() >= 2 && memberNickName.length() <= 8) {
				if (memberNickName.matches(chknickname)) {
					errorMessage.put("memberNickName", "");
					
				} else {
					errorMessage.put("memberNickName", "一定要中文");
					registerResult1 = "false";					
				}

			} else {
				errorMessage.put("memberNickName", "至少需要2~8個字");
				registerResult1 = "false";
				
			}
		} else {
			registerResult1 = "success";
		}

		// 信箱驗證
		String checkmail = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		if (memberEmail != "") {
			if (memberEmail.matches(checkmail)) {
				errorMessage.put("checkmail", "");
			} else {
				errorMessage.put("checkmail", "不符合信箱格式");
				registerResult1 = "false";
				
			}
		} else {
			registerResult1 = "success";
			
		}

		// 電話驗證
		String chkphone = "^[09]{2}[0-9]{8}$";
		if (memberPhonenum == null || memberPhonenum.trim().length() == 0) {
			errorMessage.put("memberPhonenum", "不可空白");			
			registerResult1 = "false";
		} else if (memberPhonenum.matches(chkphone)) {
			errorMessage.put("memberPhonenum", "");			
		} else {
			errorMessage.put("memberPhonenum", "錯誤");
			
			registerResult1 = "false";
		}
		// 判斷是否註冊過
		if (service.findById(memberId)) {
			errorMessage.put("memberId", "此ID有人註冊過了");
			registerResult1 = "false";
		}
		System.out.println(registerResult1);
		

		if (registerResult1.equals("success")) {			
			String registerResult = service.register(member);			
			if (registerResult.equals("okSignup")) {
				model.addAttribute("registerResult1", "0");
				return "/main/BeforeIndex";
			} else
				model.addAttribute("registerResult1", "1");
			return "/main/BeforeIndex";
		} else
			model.addAttribute("registerResult1", "1");
		return "/main/BeforeIndex";
	}


	@RequestMapping("/beforeupdate")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String beforeupdate(@Valid @ModelAttribute("beforeupdate") Member member, BindingResult result,
			Model model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/userupdate";
		}else {
			System.out.println(member.getMemberId());
			System.out.println(member.getMemberPassword());
			boolean result1 = service.checkpassword(member.getMemberId(), member.getMemberPassword());
			if(result1) {
				System.out.println("correct");
			}else {
				System.out.println("incorrect");
			}
		}
		
		return "/admin/userupdate";
		
		
	}
	@ResponseBody
	@RequestMapping("/findfriend")
	public List<Member> friendsfind (String findmemberid) {
		service.findFriendsByMemberId(findmemberid);
		System.out.println("ss0"+service.findFriendsByMemberId(findmemberid));
		return service.findFriendsByMemberId(findmemberid);
	}
	
	//存圖片
		@RequestMapping("/gogo/{membernum}")
		@Transactional
		public String openupload(@RequestParam("memberPhoto") MultipartFile m,@PathVariable("membernum") Integer num, Model model) throws SerialException, SQLException, IOException {
	//玩家上傳圖片
			Member mem = em.find(Member.class, num);
			MultipartFile productImage = m;
			byte[] b = productImage.getBytes();
			Blob blob = new SerialBlob(b);
			mem.setMemberPhoto(blob);
			em.persist(mem);
			System.out.println("OK");
			return "/test/testupload";
		}
	//顯示圖片
		@RequestMapping(value="/getPicture/{membernum}",method= RequestMethod.GET)
		public ResponseEntity<byte[]> getPicture(@PathVariable("membernum") Integer num,HttpServletResponse resp ) throws SerialException, SQLException, IOException{
			String filename2="src/main/webapp/resources/img/default-picture.png";
		    Path pathToFile = Paths.get(filename2);
		    String filePath = pathToFile.toAbsolutePath().toString();

			byte[] media = null;
			HttpHeaders headers = new HttpHeaders();
			String filename = "default-picture.png";
			int len = 0 ;
			Member mem = em.find(Member.class, num);
			if (mem != null) {
				Blob blob = mem.getMemberPhoto();
				System.out.println("2 step");
				if (blob != null) {
					try {
						System.out.println("3 step");
						len = (int) blob.length();
						System.out.println(len);
						media = blob.getBytes(1, len);
					} catch (SQLException e) {
						throw new RuntimeException ("ProductController的getPicture()發生SQLException:"+ e.getMessage());
					}	
				} else {
					media = Files.readAllBytes(Paths.get(filePath));
					System.out.println("hehehe");
					filename = filePath;
				}
			} else {
				media = toByteArray(filePath);
				System.out.println(media);
				filename = filePath;
				System.out.println("no image");
			}
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(filename);
			MediaType mediaType = MediaType.valueOf(mimeType);
			System.out.println("mediaType="+mediaType);
			headers.setContentType(mediaType);
			ResponseEntity<byte[]> responseEntity = 
					new ResponseEntity<>(media,headers,HttpStatus.OK);
			
			return responseEntity;
		}
		private byte[] toByteArray(String filepath) {
			
			byte[] b = null;
			try {
				File file = new File(filepath);
				long size = file.length();
				System.out.println(size);
				b = new byte[(int) size];
				InputStream fis = context.getResourceAsStream(filepath);
				fis.read(b);
			} catch (FileNotFoundException e ) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return b;
		}
}
