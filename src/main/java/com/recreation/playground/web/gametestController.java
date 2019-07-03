package com.recreation.playground.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/game")
public class gametestController {
	
	@RequestMapping("/games")
	public String opengame() {
		
		return "/main/games/circlegame";
	}
	

}
