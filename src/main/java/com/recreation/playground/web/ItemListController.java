package com.recreation.playground.web;

import java.sql.Blob;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recreation.playground.entity.ItemList;
import com.recreation.playground.entity.Member;
import com.recreation.playground.service.ItemListService;

@Controller
@RequestMapping("/admin/itemlist")
public class ItemListController {
	@Autowired
	private ItemListService service;
	@Autowired
	ServletContext context;
	
	Map<String, String> errorMessage=new HashMap<>();
	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/test/ItemListForm";
	}
	@RequestMapping("/insert")
	public String insert(@Valid @ModelAttribute("itemInsert") ItemList Item, BindingResult result, Model model) {
//		System.out.println(Item.getItemName());
//		System.out.println(Item.getItemCost());
//		System.out.println(result);
//		System.out.println(model);
		
		model.addAttribute("ErrorMsg", errorMessage);
		if (result.hasErrors()) {
			model.addAttribute("ItemParam", Item);
			return "/test/ItemListForm";
		}
		System.out.println(Item.getItemPhoto());
		String insertResult=service.insert(Item);

		if(insertResult.equals("Success")) {
			errorMessage.put("itemInsertError", "新增成功");
			return "/test/ItemListForm";
		}else if(insertResult.equals("False")){
			errorMessage.put("itemInsertError", "欄位不能為空");
			return "/test/ItemListForm";
		}else {
			errorMessage.put("itemInsertError", "物品已存在，請使用修改功能");
			return "/test/ItemListForm";
		}
		
	}
	@Transactional
	@RequestMapping("/delete")
	public String delete(@Valid @ModelAttribute("itemDelete") ItemList Item, BindingResult result, Model model) {
		model.addAttribute("ErrorMsg", errorMessage);
//		System.out.println(Item);
		if(Item.getItemName()!=null) {
			if(service.delete(Item.getItemName())) {
				errorMessage.put("itemDeleteError", "刪除成功");
			}else {
				errorMessage.put("itemDeleteError", "刪除失敗");
			}	
		}
		return "/test/ItemListForm";
	}

	@RequestMapping("/update")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String update(@Valid @ModelAttribute("itemUpdate") ItemList Item, BindingResult result,
			Model model) {
		model.addAttribute("ErrorMsg", errorMessage);
		ItemList updateItem=service.findByItemName(Item.getItemName());
		if(updateItem!=null) {
			updateItem.setItemCost(Item.getItemCost());
			service.update(updateItem);
			errorMessage.put("itemUpdateError", "修改成功");
		}else {
			errorMessage.put("itemUpdateError", "物品不存在");
		}
		
		
		return "/test/ItemListForm";
	}
	@RequestMapping("/select")
	//modelAttribute  網頁表格名稱，接到的值放入對應memberBeans，BindingResult 
	//將form資料轉型放入bean有錯誤產生則放入result(有加@Valid才會執行)，model功能與request相同
	public String select(@Valid @ModelAttribute("userupdate") Member member, BindingResult result,
			Model model) {
		return "/test/ItemListForm";
	}
//	@RequestMapping(value="/getPicture/{memberId}",method=RequestMethod.GET)
//	public ResponseEntity<byte[]> getPicture(HttpServletResponse response,@PathVariable String itemName){
//		String filePath="/resources/img/01.jpg";
//		byte[] media=null;
//		HttpHeaders headers=new HttpHeaders();
//		String itemname="";
//		int len=0;
//		ItemList item=service.findByItemName(itemName);
//		if(item!=null) {
//			Blob blob=item.getItemPhoto();
//			if(blob!=null) {
//				
//			}
//		}else {
//			
//		}
//	}
	
}
