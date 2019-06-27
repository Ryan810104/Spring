package com.recreation.playground.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.MoneyRecordBeans;
import com.recreation.playground.service.MoneyRecordService;

@Controller
@RequestMapping("/admin/moneyRecord")
public class MoneyRecordController {

	@Autowired
	private MoneyRecordService service;

	@RequestMapping("/findMRBySerialNum")
	@ResponseBody
	public MoneyRecordBeans findMRBySerialNum(Integer num) {
		return service.findById(num);
	}

	@RequestMapping("/findAllMR")
	@ResponseBody
	public List<MoneyRecordBeans> findAllMR() {
		return service.getAll();
	}

	@RequestMapping("/findMRByUserId")
	@ResponseBody
	public MoneyRecordBeans findMRByUserId(MoneyRecordBeans bean) {
		return service.findByUserId(bean);
	}

	@RequestMapping("/findMRByChipType")
	@ResponseBody
	public MoneyRecordBeans findMRByChipType(MoneyRecordBeans bean) {
		return service.findByChipType(bean);
	}

	@RequestMapping("/findMRByTimeLike")
	@ResponseBody
	public MoneyRecordBeans findMRByTimeLike(MoneyRecordBeans bean) {
		return service.findByMoneyRecordTimeLike(bean);
	}

	@RequestMapping("/deleteMRBySerialNum")
	public String deleteMRBySerialNum(@ModelAttribute("formR1") MoneyRecordBeans bean) {
		service.delete(bean);
		return "/";
	}

	@RequestMapping("/insertMoneyRecord")
	public String insertMoneyRecord(@Valid @ModelAttribute("formR1") MoneyRecordBeans bean, BindingResult result,
			Model model) {
		Map<String, String> message=new HashMap<>();
		model.addAttribute("Message",message);
		if (result.hasErrors()) {
			message.put("tradeFail", "交易失敗");
			return "/";
		} else {
			service.tradeOccur(bean);
			message.put("tradeSucceed", "交易成功");
			return "/";
		}
	}

}
