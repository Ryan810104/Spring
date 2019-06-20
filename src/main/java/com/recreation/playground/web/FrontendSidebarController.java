package com.recreation.playground.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main/game")
public class FrontendSidebarController {

	
	@RequestMapping("/index")
	public String openquery1(Model model) {
		return "/main/AfterIndex";
	}
	
	@RequestMapping("/Mineweeper")
	public String openquery2(Model model) {
		return "/main/Mineweeper";
	}
}
