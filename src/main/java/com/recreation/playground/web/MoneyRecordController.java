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
import com.recreation.playground.entity.MoneyRecord;
import com.recreation.playground.service.MoneyRecordService;

@Controller
@RequestMapping("/admin/moneyrecord")
public class MoneyRecordController {

	@Autowired
	MoneyRecordService service;
	
	@RequestMapping("/list")
	public String query1(Model model) {
		return "/MoneyRecord/member-list";
	}
	
	@RequestMapping("/index")
	public String openindex(Model model,MoneyRecord moneyRecord) {
		if(moneyRecord.getMoneyRecordNum()==null) {
			return "/MoneyRecord/index-member";
		}else {
			moneyRecord=service.findByMoneyRecordNum(moneyRecord.getMoneyRecordNum());
			model.addAttribute("memberP",moneyRecord);
			return "/MoneyRecord/index-member";
		}
	}
	
	
	@PostMapping("/query")
	@ResponseBody//轉JSON
	public List<MoneyRecord> query(Integer moneyRecordNum){
		System.out.println(moneyRecordNum);
		return service.getAll();
	}
	
	@DeleteMapping("/delete")
	public String delete(@ModelAttribute("form1") MoneyRecord moneyRecord, Model model){
		System.out.println(service.findByMoneyRecordMemberNum(moneyRecord.getMoneyRecordMemberNum()));
		service.delete(moneyRecord);
		model.addAttribute("deletesucceed", "資料刪除成功");
		return "/MoneyRecord/member-list";
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public AjaxResponse<MoneyRecord> insert(@Valid @RequestBody MoneyRecord moneyRecord, BindingResult result, Model model) {

		AjaxResponse<MoneyRecord> res = new AjaxResponse<>();
		if (result.hasErrors()){
			res.setType(AjaxResponseType.ERROR);
			System.out.println(result.getAllErrors());
			return res;
		}
		System.out.println(moneyRecord);
		res.setType(AjaxResponseType.SUCCESS);

		res.setData(service.insertMoney(moneyRecord));
		return res;
	}
	@RequestMapping("/update")
	@ResponseBody
	public AjaxResponse<MoneyRecord> update(@Valid @RequestBody MoneyRecord moneyRecord, BindingResult result, Model model) {

		AjaxResponse<MoneyRecord> ajax1=new AjaxResponse<>();
		if(result.hasErrors()){
			ajax1.setType(AjaxResponseType.ERROR);
			return ajax1;
		}
		System.out.println(moneyRecord);
		ajax1.setType(AjaxResponseType.SUCCESS);
		ajax1.setData(service.insertMoney(moneyRecord));
		return ajax1;
	}

	
	
}
