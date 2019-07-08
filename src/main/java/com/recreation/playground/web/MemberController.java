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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
import com.recreation.playground.dao.ChipDao;
import com.recreation.playground.dao.ChipRecordDao;
import com.recreation.playground.dao.MoneyRecordDao;
import com.recreation.playground.entity.Chip;
import com.recreation.playground.entity.ChipRecord;
import com.recreation.playground.entity.Member;
import com.recreation.playground.entity.MoneyRecord;
import com.recreation.playground.service.ChipRecordService;
import com.recreation.playground.service.ChipService;
import com.recreation.playground.service.MemberService;
import com.recreation.playground.service.MoneyRecordService;

@Controller
@RequestMapping("/admin/memberBeans")
public class MemberController {
	@Autowired
	private MemberService service;

	@Autowired
	EntityManager em ;

	@Autowired
	ServletContext context;
	
	
	
	@Autowired
	MoneyRecordService moneyRecordService;

	@Autowired
	ChipRecordService chipRecordService;

	@Autowired
	ChipService chipService;
	

	@Autowired
	ChipDao chipDao;
	
	@Autowired
	ChipRecordDao chipRecordDao;

	@Autowired
	MoneyRecordDao moneyRecordDao;

	@RequestMapping("/login")
	public String login(@Valid @ModelAttribute("memberBeansForm") Member member, BindingResult result, Model model,
			HttpSession session) {
//		System.out.println(member.getMemberId());
//		System.out.println(member.getMemberPassword());
//		System.out.println(result);
//		System.out.println(model);
		Map<String, String> errorMessage = new HashMap<>();
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("memberParam", member);
			return "redirect:/main/index";
		}

		String loginResult = service.login(member.getMemberId(), member.getMemberPassword());
		if (loginResult.equals("Success")) {
			session.setAttribute("UID", member.getMemberId());
			session.setAttribute("member", service.finById(member.getMemberId()));
			return "redirect:/main/index";
		} else {
			model.addAttribute("memberParam", member);
			errorMessage.put("loginError", "帳號或密碼錯誤");
			return "redirect:/main/index";
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
		return "/testChat/chatroom";
	}

	
	@RequestMapping("/index1")
	public String query1(Model model) {
		return "/test1/index-member";
	}


	@ResponseBody
	@RequestMapping("/findBymemberId")
	public Member finBymemberId(@Valid @ModelAttribute("userupdate") Member member, BindingResult result, Model model) {
//		System.out.println(member);
		return service.finById(member.getMemberId());
	}

	
	@ResponseBody
	@RequestMapping("/findBymemberEmail")
	public Member findBymemberEmail(@Valid @ModelAttribute("userupdate") Member member, BindingResult result, Model model) {
		System.out.println(member);
		return service.findBymemberEmail(member.getMemberEmail());
	}
	//測試同時將兌換遊戲幣的資料insert到Moneyrecord&chip兩個table

	
			@RequestMapping("/index2")
			public String index2(Model model) {
				return "/test1/ClearTemplateIndex";
			}
			//將一筆遊戲結果insert到chip&chiprecord兩個table
			@RequestMapping("/index3")
			public String index3(Model model) {
				return "/test1/ClearTemplateChipIndex";
			}

			@RequestMapping("/list")
			public String list(Model model) {
				return "/test1/ClearTemplateList";
			}
			
			@RequestMapping("/list0")
			public String list0(Model model) {
				return "/test1/member-list";
			}
			
			@RequestMapping("/listtest")
			public String listtest(Model model) {
				return "/test1/ClearTemplateListwintimerank";
			}
		
			@RequestMapping("/insert1")
			@ResponseBody
			public String insert1(
					@RequestParam(value = "moneyRecordMemberNum", defaultValue = "0") Integer moneyRecordMemberNum,
					@RequestParam(value = "moneyRecordFirstName", defaultValue = "") String moneyRecordFirstName,
					@RequestParam(value = "moneyRecordNickName", defaultValue = "") String moneyRecordNickName,
					@RequestParam(value = "moneyRecordPoint", defaultValue = "0") Long moneyRecordPoint,
					@RequestParam(value = "moneyRecordChip", defaultValue = "0") Long moneyRecordChip,
					@RequestParam(value = "moneyRecordChiptype", defaultValue = "0") String moneyRecordChiptype,
					@RequestParam(value = "chipMemberNum", defaultValue = "0") Integer chipMemberNum,
					@RequestParam(value = "chipFirstName", defaultValue = "0") String chipFirstName,
					@RequestParam(value = "chipNickName", defaultValue = "0") String chipNickName,
					@RequestParam(value = "chipBalanced", defaultValue = "0") Long chipBalanced,
					@RequestParam(value = "chipType", defaultValue = "0") String chipType,
					@RequestParam(value = "time", defaultValue = "0") Float round,
					@RequestParam(value = "win", defaultValue = "0") Integer win) {
				Chip chip = new Chip();
				chip.setChipMemberNum(chipMemberNum);
				chip.setChipFirstName(chipFirstName);
				chip.setChipNickName(chipNickName);
				chip.setChipBalanced(chipBalanced);
				chip.setChipType(chipType);
				chip.setWin(win);
				chip.setRound(round);

				MoneyRecord moneyRecord = new MoneyRecord();
				moneyRecord.setMoneyRecordMemberNum(moneyRecordMemberNum);
				moneyRecord.setMoneyRecordFirstName(moneyRecordFirstName);
				moneyRecord.setMoneyRecordNickName(moneyRecordNickName);
				moneyRecord.setMoneyRecordPoint(moneyRecordPoint);
				moneyRecord.setMoneyRecordChip(moneyRecordChip);
				moneyRecord.setMoneyRecordChiptype(moneyRecordChiptype);

				moneyRecordService.insertMoney(moneyRecord);
				chipService.save(chip);
				return "/MoneyRecord/member-list";
			}
		//同時將兌換遊戲幣的資料insert到Moneyrecord&chip兩個table
			@RequestMapping("/insert2")
			@ResponseBody
			public AjaxResponse<String> insert2(
					@RequestParam(value = "moneyRecordMemberNum", defaultValue = " ") Integer moneyRecordMemberNum,
					@RequestParam(value = "moneyRecordFirstName", defaultValue = "") String moneyRecordFirstName,
					@RequestParam(value = "moneyRecordNickName", defaultValue = "") String moneyRecordNickName,
					@RequestParam(value = "moneyRecordPoint", defaultValue = "0") Long moneyRecordPoint,
					@RequestParam(value = "moneyRecordChip", defaultValue = "0") Long moneyRecordChip,
					@RequestParam(value = "moneyRecordChiptype", defaultValue = " ") String moneyRecordChiptype,
					@RequestParam(value = "chipMemberNum", defaultValue = " ") Integer chipMemberNum,
					@RequestParam(value = "chipFirstName", defaultValue = "0") String chipFirstName,
					@RequestParam(value = "chipNickName", defaultValue = "0") String chipNickName,
					@RequestParam(value = "chipBalanced", defaultValue = "0") Long chipBalanced,
					@RequestParam(value = "chipType", defaultValue = " ") String chipType,
					@RequestParam(value = "time", defaultValue = "0") Float round,
					@RequestParam(value = "win", defaultValue = "0") Integer win) {
				Chip chip = new Chip();
				chip.setChipMemberNum(chipMemberNum);
				chip.setChipFirstName(chipFirstName);
				chip.setChipNickName(chipNickName);
				chip.setChipBalanced(chipBalanced);
				chip.setChipType(chipType);
				chip.setWin(win);
				chip.setRound(round);

				MoneyRecord moneyRecord = new MoneyRecord();
				moneyRecord.setMoneyRecordMemberNum(moneyRecordMemberNum);
				moneyRecord.setMoneyRecordFirstName(moneyRecordFirstName);
				moneyRecord.setMoneyRecordNickName(moneyRecordNickName);
				moneyRecord.setMoneyRecordPoint(moneyRecordPoint);
				moneyRecord.setMoneyRecordChip(moneyRecordChip);
				moneyRecord.setMoneyRecordChiptype(moneyRecordChiptype);
				AjaxResponse<String> res = new AjaxResponse<>();
//				if (result.hasErrors()) {
//					res.setType(AjaxResponseType.ERROR);
//					System.out.println(result.getAllErrors());
//					return res;
//				}

				res.setType(AjaxResponseType.SUCCESS);
				res.setData(moneyRecordService.insertMoney(moneyRecord).toString() + chipService.save(chip).toString());
//				res.setData(chipService.save(chip).toString());
				return res;
			}
		//同時將一筆遊戲結果insert到chip&chiprecord兩個table
			@RequestMapping("/insert3")
			@ResponseBody
			public AjaxResponse<String> insert3(@RequestParam(value = "chipMemberNum", defaultValue = "0") Integer chipMemberNum,
					@RequestParam(value = "chipBalanced", defaultValue = "0") Long chipBalanced,
					@RequestParam(value = "chipType", defaultValue = "") String chipType,
					@RequestParam(value = "win", defaultValue = "0") Integer win,
					@RequestParam(value = "round", defaultValue = "0") Float round,
					@RequestParam(value = "chipFirstName", defaultValue = "") String chipFirstName,
					@RequestParam(value = "chipNickName", defaultValue = "") String chipNickName,
					@RequestParam(value = "chipRecordMemberNum", defaultValue = "0") Integer chipRecordMemberNum,
					@RequestParam(value = "chipRecordFirstName", defaultValue = "") String chipRecordFirstName,
					@RequestParam(value = "chipRecordNickName", defaultValue = "") String chipRecordNickName,
					@RequestParam(value = "chipRecordChip", defaultValue = "0") Long chipRecordChip,
					@RequestParam(value = "chipRecordChipType", defaultValue = "") String chipRecordChipType,
					@RequestParam(value = "chipRecordRound", defaultValue = "0") Integer chipRecordRound,
					@RequestParam(value = "chipRecordWin", defaultValue = "0") Integer chipRecordWin) {
				Chip chip = new Chip();
				chip.setChipMemberNum(chipMemberNum);
				chip.setChipFirstName(chipFirstName);
				chip.setChipNickName(chipNickName);
				chip.setChipBalanced(chipBalanced);
				chip.setChipType(chipType);
				chip.setWin(win);
				chip.setRound(round);
				
				
				ChipRecord chiprecord = new ChipRecord();
				chiprecord.setChipRecordMemberNum(chipRecordMemberNum);
				chiprecord.setChipRecordFirstName(chipRecordFirstName);
				chiprecord.setChipRecordNickName(chipRecordNickName);
				chiprecord.setChipRecordChip(chipRecordChip);
				chiprecord.setChipRecordChipType(chipRecordChipType);
				chiprecord.setChipRecordWin(chipRecordWin);
				chiprecord.setChipRecordRound(chipRecordRound);
				AjaxResponse<String> res = new AjaxResponse<>();
				res.setType(AjaxResponseType.SUCCESS);
				res.setData(chipService.save(chip).toString()+ chipRecordService.save(chiprecord).toString());
				
				return res;
			}
			@PostMapping("/query")
			@ResponseBody // 轉JSON
			public List<MoneyRecord> query(Integer moneyRecordNum) {
				System.out.println(moneyRecordNum);
				return moneyRecordService.getAll();
			}

			@RequestMapping("/top3cash")
			@ResponseBody
			public List<Object> top3() {
//				s.replaceAll( "[\\pP+~$`^=|<>～｀＄＾＋＝｜＜＞￥×]" , ""); 
//				String a=moneyRecordService.findBestSeller().toString().replaceAll(",", " ");
//				System.out.println(moneyRecordService.findBestSeller());
				return moneyRecordService.findBestSeller();
			}

			@RequestMapping("/top4cash")
			@ResponseBody
			public List<Object[]> top4() {
//				s.replaceAll( "[\\pP+~$`^=|<>～｀＄＾＋＝｜＜＞￥×]" , ""); 
//				String a=moneyRecordService.findBestSeller().toString().replaceAll(",", " ");
				System.out.println(moneyRecordService.findBestSeller1());
				return moneyRecordService.findBestSeller1();
			}

			
			
			//遊戲至今玩家勝利次數排行榜
			@RequestMapping("/topwinner")
			@ResponseBody
			public List<Object> topwinner() {
//				s.replaceAll( "[\\pP+~$`^=|<>～｀＄＾＋＝｜＜＞￥×]" , ""); 
//				String a=moneyRecordService.findBestSeller().toString().replaceAll(",", " ");
//				System.out.println(chipDao.findTheBestWinner());
				return chipDao.findTheBestWinner();
			}
			

			//累積金額排行榜
			@RequestMapping("/therichest")
			@ResponseBody
			public List<Object> therichest(){
				System.out.println(chipDao.findTheRichest());
				return chipDao.findTheRichest();
			}
			
			//遊戲A的遊玩次數排行
			@RequestMapping("/gamea")
			@ResponseBody
			public List<Object> gamea(){
				return chipDao.findTheGameAMostWin();
			}
			

			//遊戲B的遊玩次數排行
			@RequestMapping("/gameb")
			@ResponseBody
			public List<Object> gameb(){
				return chipDao.findTheGameBMostWin();
			}
			//遊戲C的遊玩次數排行
			@RequestMapping("/gamec")
			@ResponseBody
			public List<Object> gamec(){
				return chipDao.findTheGameCMostWin();
			}
			//玩家贏錢排行榜
			@RequestMapping("/mostbouns")
			@ResponseBody
			public List<Object> mostbonus(){
				return chipDao.findTheMostBonus();
			}
			//玩家勝場數
			@RequestMapping("/totalwin")
			@ResponseBody
			public List<Object> totalwin(){
				return chipDao.findTotalWin();
			}
			
			//各遊戲獲勝率
			@RequestMapping("/winrate")
			@ResponseBody
			public List<Object>winrate(){
				return chipDao.findTheGameWinRate();
			}
			//抓玩家總金額即時更新
			@RequestMapping("/playersummarymoney")
			@ResponseBody
			public Object findPlayerSummary(Integer chipMemberNum) {
				return chipDao.findPlayerSummary(chipMemberNum);
			}

	@RequestMapping("/update")
	public String update(@Valid @ModelAttribute("userupdate") Member member, BindingResult result, Model model) {
//		System.out.println(member);
		Member member1 = service.finById(member.getMemberId());
		member1.setMemberFitstName(member.getMemberFitstName());
		member1.setMemberLastName(member.getMemberLastName());
		member1.setMemberEmail(member.getMemberEmail());
		member1.setMemberLocation(member.getMemberLocation());
		member1.setMemberNickName(member.getMemberNickName());
//		System.out.println(member1);
		service.update(member1);
		return "/main/setting/SettingIndex";
	}

	@RequestMapping("/registerForm")

	public String register(@Valid @ModelAttribute("registerForm") Member member, BindingResult result, Model model) {


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
//					System.out.println("必須含英文或數字,首字為英文");
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
//				System.out.println("必須大於8個字");
				registerResult1 = "false";
			}
		} else {
			errorMessage.put("memberPwd", "必須小於16個字");
//			System.out.println("必須小於16個字");
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
//		System.out.println(registerResult1);

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
	// modelAttribute 網頁表格名稱，接到的值放入對應memberBeans，BindingResult
	// 將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String beforeupdate(@Valid @ModelAttribute("beforeupdate") Member member, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/admin/userupdate";
		} else {
//			System.out.println(member.getMemberId());
//			System.out.println(member.getMemberPassword());
			boolean result1 = service.checkpassword(member.getMemberId(), member.getMemberPassword());
			if (result1) {
				System.out.println("correct");
			} else {
				System.out.println("incorrect");
			}
		}

		return "/admin/userupdate";

	}

	@ResponseBody
	@RequestMapping("/findfriend")
	public List<Member> friendsfind(String findmemberid) {
		service.findFriendsByMemberId(findmemberid);
//		System.out.println("ss0" + service.findFriendsByMemberId(findmemberid));
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
//			System.out.println("OK");
			return "/test/testupload";
		}
		//顯示圖片
		@RequestMapping(value="/getPicture/{membernum}",method= RequestMethod.GET,produces = MediaType.IMAGE_JPEG_VALUE)
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
//				System.out.println("2 step");
				if (blob != null) {
					try {
//						System.out.println("3 step");
						len = (int) blob.length();
//						System.out.println(len);
						media = blob.getBytes(1, len);
					} catch (SQLException e) {
						throw new RuntimeException ("ProductController的getPicture()發生SQLException:"+ e.getMessage());
					}	
				} else {
					media = Files.readAllBytes(Paths.get(filePath));
//					System.out.println("hehehe");
					filename = filePath;
				}
			} else {
				media = toByteArray(filePath);
//				System.out.println(media);
				filename = filePath;
//				System.out.println("no image");
			}
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(filename);
			MediaType mediaType = MediaType.valueOf(mimeType);
//			System.out.println("mediaType="+mediaType);
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
//				System.out.println(size);
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
		
		@PostMapping("/uploadImage/{membernum}")
		public String uploadImage(@PathVariable("membernum") Integer num,@RequestParam("imageFile")MultipartFile imageFile) {
			String returnValue	="/test/testupload";
			try {
				Member mem = em.find(Member.class, num);
				if (mem != null) {
					String imagePathString=service.saveImage(imageFile);
					
					mem.setMemberPhotoURL(imagePathString);
					service.update(mem);
				}else {
					System.out.println("member not excist");
					returnValue="/test/testupload";
				}
			} catch (Exception e) {
				e.printStackTrace();
				returnValue="error";
			}
			return returnValue;
		}
		
		@RequestMapping(value="/getServerPicture/{membernum}",method= RequestMethod.GET,produces = MediaType.IMAGE_JPEG_VALUE)
		public ResponseEntity<byte[]> getServerImage(@PathVariable("membernum") Integer num) throws IOException {
			
			String filenamedefault="src/main/webapp/resources/img/default-picture.png";
		    Path pathToFile = Paths.get(filenamedefault);
		    String filePath = pathToFile.toAbsolutePath().toString();
			byte[] media = null;
			HttpHeaders headers = new HttpHeaders();
			String filename = "default-picture.png";
			
			Member mem = em.find(Member.class, num);
		    
			if (mem != null) {
				String memberImgPath=mem.getMemberPhotoURL();
				if(memberImgPath!=null) {
					String filenamemember = "src/main/webapp"+memberImgPath;
					pathToFile = Paths.get(filenamemember);
					filePath = pathToFile.toAbsolutePath().toString();
					media = Files.readAllBytes(Paths.get(filePath));
				}else {
					media = Files.readAllBytes(Paths.get(filePath));
				}
			} else {
				media = Files.readAllBytes(Paths.get(filePath));
			}
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			String mimeType = context.getMimeType(filename);
			MediaType mediaType = MediaType.valueOf(mimeType);
//			System.out.println("mediaType="+mediaType);
			headers.setContentType(mediaType);
			ResponseEntity<byte[]> responseEntity = 
					new ResponseEntity<>(media,headers,HttpStatus.OK);
			return responseEntity;
		}
}
