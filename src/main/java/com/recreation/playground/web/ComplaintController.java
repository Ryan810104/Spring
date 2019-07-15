package com.recreation.playground.web;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.AccessDeniedException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.recreation.playground.entity.Complaint;
import com.recreation.playground.entity.CustomerMessageBoardBean;
import com.recreation.playground.service.ComplaintService;
import com.recreation.playground.service.CustomerMessageBoardService;

@Controller
@RequestMapping("/main/complain")
public class ComplaintController {

	@Autowired
	private ComplaintService service;

	@Autowired
	private CustomerMessageBoardService service2;

	@PersistenceContext
	EntityManager em;

	@RequestMapping("/insertComplaint")
	@Transactional
	public String insertComplaint(@Valid @ModelAttribute("formCI") Complaint cp, BindingResult result, Model model,
			@RequestParam("complaintPic") MultipartFile imageFile, RedirectAttributes redirectAttributes)
			throws IOException {
		if (result.hasErrors()) {
			return "/main/complain/complainIndex";
		}
		service.fileComplaints(cp);

		Complaint cpp = em.find(Complaint.class, cp.getComplaintNum());
		byte[] bytes = imageFile.getBytes();
		// 當前伺服器絕對路徑
		String serverPath = new File(".").getCanonicalPath();
		// 目標資料夾絕對路徑
		String folderPath = serverPath + "\\src\\main\\webapp\\resources\\complaintPhoto\\";
		File directory = new File(folderPath);
		// 偵測目標資料夾是否存在，不存在則建立資料夾
		if (!directory.exists()) {
			directory.mkdir();
		}
		String fileName = imageFile.getOriginalFilename();
		String imagePathString = folderPath + fileName;
		String dataBasePath = "";
		if (null == fileName || fileName.length() == 0) {
			dataBasePath = null;
		} else {
			dataBasePath = "\\resources\\complaintPhoto\\" + fileName;
		}
		if (bytes != null) {
			Path imagePath = Paths.get(imagePathString);
//			System.out.println("serverPath=" + serverPath);
//			System.out.println("folderPath=" + folderPath);
//			System.out.println("imagePath=" + imagePath);
//			System.out.println("dataBasePath=" + dataBasePath);	

			try {
				Files.write(imagePath, bytes);

			} catch (AccessDeniedException e) {
				System.out.println("File Access Denied");
			}

		} else {
			System.out.println("File Not Found");
		}

		cpp.setComplaintPicURL(dataBasePath);
		em.persist(cpp);

		redirectAttributes.addFlashAttribute("insertComplaint", "1");
		return "redirect:/main/index";

	}

	@ResponseBody
	@RequestMapping("/findBycomplaintNum")
	public Complaint findBycomplaintNum(int complaintNum) {
//		System.out.println(complaintNum);

		return service.findBycomplaintNum(complaintNum);
	}

	@ResponseBody
	@RequestMapping("/findByCMBnum")
	public CustomerMessageBoardBean findByCMBnum(int CMBnum) {
//		System.out.println(CMBnum);
		return service2.searchMessageByNum(CMBnum);
	}

	@ResponseBody
	@RequestMapping("/query1")
	public List<Complaint> complainListGame() {
		return service.chooseUndealEventGame();
	}

	@ResponseBody
	@RequestMapping("/query4")
	public List<Complaint> complainListGameR() {
		return service.chooseDealEventGame();
	}

	@ResponseBody
	@RequestMapping("/query2")
	public List<Complaint> complainListWeb() {
		return service.chooseUndealEventWeb();
	}

	@ResponseBody
	@RequestMapping("/query5")
	public List<Complaint> complainListWebR() {
		return service.chooseDealEventWeb();
	}

	@ResponseBody
	@RequestMapping("/query3")
	public List<Complaint> complainListPay() {
		return service.chooseUndealEventPay();
	}

	@ResponseBody
	@RequestMapping("/query6")
	public List<Complaint> complainListPayR() {
		return service.chooseDealEventPay();
	}

	@ResponseBody
	@RequestMapping("/query7")
	public List<Complaint> complainListInteract() {
		return service.chooseUndealEventInteract();
	}

	@ResponseBody
	@RequestMapping("/query8")
	public List<Complaint> complainListInteractR() {
		return service.chooseDealEventInteract();
	}

	@Transactional
	@ResponseBody
	@RequestMapping("/responseComplaint")
	public int update(Integer complaintNum, String complaintResponse, Model model) {
//		if (result.hasErrors()) {
//			return "/main/complain/complainDeal";
//		}
		Complaint cpp = em.find(Complaint.class, complaintNum);
//		System.out.println(cpp.toString());
//		if (cpp.getComplaintStatus() != 1 ) {
		cpp.setComplaintResponse(complaintResponse);
		cpp.setComplaintStatus(1);
		cpp.setResponseAnno(0);
		java.util.Date date = new java.util.Date();
		cpp.setComplaintResponsetime(date);

//		System.out.println(cpp.toString());
		em.persist(cpp);
//		service.update(cpp);
		return 1;
//		}else {
//			return 0;
//		}	

	}

	@ResponseBody
	@RequestMapping("/checknotice")
	@Transactional
	public void response_notice_check(int num) {
		Complaint cp = em.find(Complaint.class, num);
		cp.setResponseAnno(1);
		em.persist(cp);
	}
}
