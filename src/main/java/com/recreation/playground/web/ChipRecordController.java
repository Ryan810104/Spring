package com.recreation.playground.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
import com.recreation.playground.entity.Chip;
import com.recreation.playground.entity.ChipRecord;
import com.recreation.playground.service.ChipRecordService;

@Controller
@RequestMapping("/admin/chiprecord")
public class ChipRecordController {

	@Autowired
	ChipRecordService service;
	
	@RequestMapping("/list")
	public String openquery1(Model model) {
		return "/ChipRecord/member-list";
	}
	
	
	@RequestMapping("/index")
	public String openindex(Model model,Integer chipRecordNum,ChipRecord chipRecord) {
		if(chipRecordNum==null) {
			return "/ChipRecord/index-member";
		}else {
			chipRecord=service.findByChipRecordNum(chipRecordNum);
			model.addAttribute("memberP",chipRecord);
			return "/ChipRecord/index-member";
		}
	}
	
	
	@PostMapping("/query")
	@ResponseBody//轉JSON
	public List<ChipRecord> query(String chipRecordMemberid){
		System.out.println(chipRecordMemberid);
		return service.getAll();
	}
	
	@DeleteMapping("/delete")
	public String delete(@ModelAttribute("form1") ChipRecord chipRecord, Model model){
		System.out.println(service.getByChipRecordMemberNum(chipRecord.getChipRecordMemberNum()));
		service.delete(chipRecord);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/ChipRecord/member-list";
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public AjaxResponse<ChipRecord> insert(@Valid @RequestBody ChipRecord chipRecord, BindingResult result, Model model) {

//		member.setId(member.getId());
//		member.setPassword(member.getPassword());
//		member.setEmail(member.getEmail());
//		member.setPhone(member.getPhone());
		AjaxResponse<ChipRecord> res = new AjaxResponse<>();
		if (result.hasErrors()){
			res.setType(AjaxResponseType.ERROR);
			System.out.println(result.getAllErrors());
			return res;
		}
//		ChipRecord chipRecord=new ChipRecord();
		System.out.println(chipRecord);
		res.setType(AjaxResponseType.SUCCESS);
//		memberservice.save(member);
//		model.addAttribute("insert", member);
		res.setData(service.save(chipRecord));
		return res;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public AjaxResponse<ChipRecord> update(@Valid @RequestBody ChipRecord chipRecord, BindingResult result, Model model) {
//		Member member1 = memberservice.findById(member.getId());
//		member1.setEmail(member.getEmail());
//		member1.setPassword(member.getPassword());
//		member1.setPhone(member.getPhone());
//		System.out.println(member);
		AjaxResponse<ChipRecord> ajax1=new AjaxResponse<>();
		if(result.hasErrors()){
			ajax1.setType(AjaxResponseType.ERROR);
			return ajax1;
		}
//		Member update = memberservice.save(member);
//		// System.out.println(update);
//		model.addAttribute("update", update);
//		return "/admin/member-list";
		
		System.out.println(chipRecord);
		ajax1.setType(AjaxResponseType.SUCCESS);
		ajax1.setData(service.save(chipRecord)); 
		return ajax1;
	}
	
	
}
