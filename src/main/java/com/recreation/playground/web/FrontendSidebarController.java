package com.recreation.playground.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class FrontendSidebarController {

	
	@RequestMapping("/index")
	public String toIndex(Model model) {
		return "/main/AfterIndex";
	}
	
	@RequestMapping("/news")
	public String toNews(Model model) {
		return "";
	}
	@RequestMapping("/game/Mineweeper")
	public String toGame1(Model model) {
		return "/main/Mineweeper";
	}
}
