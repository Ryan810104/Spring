package com.recreation.playground.web;

import java.util.HashMap;
import java.util.Map;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.Member;
import com.recreation.playground.entity.ShoppingRecord;
import com.recreation.playground.service.ShoppingRecordService;

@Controller
@RequestMapping("/admin/shoppingrecord")
public class ShoppingRecordController {
	@Autowired
	private ShoppingRecordService service;
	
	Map<String, String> errorMessage=new HashMap<>();
	
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/test/shoppingRecordForm";
	}
	@RequestMapping("/insert")
	public String insert(@Valid @ModelAttribute("shoppingRecordInsert") ShoppingRecord Record, BindingResult result, Model model) {
//		System.out.println(Item.getItemName());
//		System.out.println(Item.getItemCost());
//		System.out.println(result);
//		System.out.println(model);
		
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("RecordParam", Record);
			return "/test/shoppingRecordForm";
		}
		String insertResult=service.insert(Record);

		if(insertResult.equals("Success")) {
			errorMessage.put("shoppingRecordInsertError", "新增成功");
			return "/test/shoppingRecordForm";
		}else if(insertResult.equals("False")){
			errorMessage.put("shoppingRecordInsertError", "欄位不能為空");
			return "/test/shoppingRecordForm";
		}else {
			errorMessage.put("shoppingRecordInsertError", "物品已存在，請使用修改功能");
			return "/test/shoppingRecordForm";
		}
		
	}
	@Transactional
	@RequestMapping("/delete")
	public String delete(@Valid @ModelAttribute("shoppingRecordDelete") ShoppingRecord Record, BindingResult result, Model model) {
		model.addAttribute("ErrorMsg", errorMessage);
//		System.out.println(Item);
		if(Record.getOrderNum()!=null) {
			if(service.delete(Record.getOrderNum())) {
				errorMessage.put("shoppingRecordDeleteError", "刪除成功");
			}else {
				errorMessage.put("shoppingRecordDeleteError", "刪除失敗");
			}	
		}
		return "/test/shoppingRecordForm";
	}

	@RequestMapping("/update")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String update(@Valid @ModelAttribute("shoppingRecordUpdate") ShoppingRecord Record, BindingResult result,
			Model model) {
//		System.out.println("1");
		model.addAttribute("ErrorMsg", errorMessage);
//		System.out.println("2");
		int orderNum=Record.getOrderNum();
		ShoppingRecord updateItem=service.findByOrderNum(orderNum);
//		System.out.println("3");
		if(updateItem!=null) {
			updateItem.setActualCost(Record.getActualCost());
			service.update(updateItem);
			errorMessage.put("shoppingRecordUpdateError", "訂單編號"+orderNum+"修改成功");
		}else {
			errorMessage.put("shoppingRecordUpdateError", "訂單編號不存在");
		}
		
		
		
		return "/test/shoppingRecordForm";
	}
	@RequestMapping("/select")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String select(@Valid @ModelAttribute("userupdate") Member member, BindingResult result,
			Model model) {
		return "/test/shoppingRecordForm";
	}
	
}
