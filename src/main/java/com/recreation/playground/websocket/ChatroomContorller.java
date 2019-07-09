package com.recreation.playground.websocket;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cc")
public class ChatroomContorller {


	@RequestMapping("/index")
	public String openindex(Model model) {
		return "/fragment/test";
	}
	
	@RequestMapping("/text")
	public String openindex1(Model model) {
		return "/main/Mineweeper";
	}
	
	@RequestMapping("/test")
	public String openindex2(Model model) {
		return "/main/AfterIndex";
	}
	@RequestMapping("/testclear")
	public String openindex3(Model model) {
		return "/main/ClearTemplate";
	}
}
