package com.recreation.playground.web;

import java.io.File;
import java.io.IOException;
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

import com.recreation.playground.entity.Complaint;
import com.recreation.playground.service.ComplaintService;

@Controller
@RequestMapping("/main/complain")
public class ComplaintController {

	@Autowired
	private ComplaintService service;

	@PersistenceContext
	EntityManager em;

	@RequestMapping("/insertComplaint")
	@Transactional
	public String insertComplaint(@Valid @ModelAttribute("formCI") Complaint cp, BindingResult result, Model model,
			@RequestParam("complaintPic") MultipartFile imageFile) throws IOException {
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
			directory.mkdir();}
		String imagePathString = folderPath + imageFile.getOriginalFilename();
		String dataBasePath = "\\resources\\complaintPhoto\\" + imageFile.getOriginalFilename();
		if (bytes != null) {
			Path imagePath = Paths.get(imagePathString);
//			System.out.println("serverPath=" + serverPath);
//			System.out.println("folderPath=" + folderPath);
//			System.out.println("imagePath=" + imagePath);
//			System.out.println("dataBasePath=" + dataBasePath);
			try {
				Files.write(imagePath, bytes);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}	
		cpp.setComplaintPicURL(dataBasePath);
		em.persist(cpp);
		model.addAttribute("insertComplaint", "1");
		return "/main/Index";

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

}
