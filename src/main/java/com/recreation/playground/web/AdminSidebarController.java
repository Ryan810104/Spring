package com.recreation.playground.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminSidebarController {

	// Sidebar 回到客訴處理頁
		@RequestMapping("/complaint")
		public String toIndex(Model model) {
			return "/admin/ComplaintDeal";
		}	
	
	
	
	
	
	
	
}
