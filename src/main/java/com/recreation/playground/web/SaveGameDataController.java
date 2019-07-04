package com.recreation.playground.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.SaveGameData;
import com.recreation.playground.service.SaveGameDataService;



@Controller
@RequestMapping("/save")
public class SaveGameDataController {
	
	@Autowired
	private SaveGameDataService service;
	
	
@RequestMapping("/SaveGameData")
public String saveData(@Valid @ModelAttribute("savegame") SaveGameData SGD, BindingResult result,
		Model model) {
	
    service.SaveGameData(SGD);
    
    return "/main/games/circlegame";
		
}


}
