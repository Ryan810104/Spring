package com.recreation.playground.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.SaveGameData;
import com.recreation.playground.service.SaveGameDataService;



@Controller
@RequestMapping("/save")
public class SaveGameDataController {
	
	
	@Autowired
	SaveGameDataService service;
	
	
@RequestMapping("/SaveGameData")
@ResponseBody
public String saveData(
	@RequestParam(value = "gameDataNum", defaultValue = "0") Integer gameDataNum,
	@RequestParam(value = "balance", defaultValue = "0") String balance,
	@RequestParam(value = "memberId", defaultValue = "0") String memberId,
	@RequestParam(value = "gameType", defaultValue = "0") String gameType,
	@RequestParam(value = "round", defaultValue = "0") String round
		) {
	
  
	SaveGameData DD = new SaveGameData();
	DD.setBalance(balance);
	DD.setGameType(gameType);
	DD.setMemberId(memberId);
	DD.setRound(round);
	service.SaveGameData(DD);
    
    return "/main/games/circlegame";
		
}


}
