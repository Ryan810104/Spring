package com.recreation.playground.web;

import java.io.IOException;

import java.util.List;

import javax.persistence.EntityManager;
import javax.validation.Valid;

import org.assertj.core.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.dao.ChipDao;
import com.recreation.playground.entity.GameBlingRoom;
import com.recreation.playground.entity.SaveGameData;
import com.recreation.playground.service.GameBlingRoomService;
import com.recreation.playground.service.SaveGameDataService;
import com.recreation.testjsoup.TestJoup;

@Controller
@RequestMapping("/save")
@Transactional
public class SaveGameDataController {

	@Autowired
	EntityManager em;
	
	@Autowired
	SaveGameDataService service;

	@Autowired
	GameBlingRoomService service1;
	
	@Autowired
	ChipDao dao;
	
	@RequestMapping("/SaveGameData")
	@ResponseBody
	public String saveData(@RequestParam(value = "gameDataNum", defaultValue = "0") Integer gameDataNum,
			@RequestParam(value = "balance", defaultValue = "0") String balance,
			@RequestParam(value = "memberId", defaultValue = "0") String memberId,
			@RequestParam(value = "gameType", defaultValue = "0") String gameType,
			@RequestParam(value = "round", defaultValue = "0") String round) {

		SaveGameData DD = new SaveGameData();
		DD.setBalance(balance);
		DD.setGameType(gameType);
		DD.setMemberId(memberId);
		DD.setRound(round);
		service.SaveGameData(DD);

		return "/main/games/circlegame";

	}

	@Transactional
	@RequestMapping("/GameBling")
	public String saveGameBlingRoom(@Valid @ModelAttribute("gameblingForm") GameBlingRoom member, BindingResult result,
			Model model) {

		service1.SaveGameData(member);
		model.addAttribute("open", "0");
		model.addAttribute("player1", member);
		
		return "/main/games/blingroom";
	}

	@Transactional
	@ResponseBody
	@RequestMapping("/addroom")
	public String joinGameBlingRoom(Integer num) {
		

		return "/main/games/blingroom";
	}

	@ResponseBody
	@RequestMapping("/GameBling1")
	public List<GameBlingRoom> findGameRoom() {
		
		
		return service1.showRoom();
	}
	
	@ResponseBody
	@RequestMapping("/GameBling5")
	public List<GameBlingRoom> findOpeningGameRoom() {
		return service1.showOpeningRoom();
	}
	
	
	
	@ResponseBody
	@RequestMapping("/GameBling3")
	public GameBlingRoom findWhichGameRoom(@RequestParam(value = "num", defaultValue = "0") Integer num) {
//System.out.println(num);
	
//		return em.find(GameBlingRoom.class, num);
		return service1.findbyroomnum(num);
	}

//找對應房間
	@RequestMapping("/GameBling2")
	public String findplayer1num(@Valid @ModelAttribute("gameblingForm") GameBlingRoom member, Model model) throws IOException {
    
		GameBlingRoom bean = service1.findbyroomnum(member.getRoomNum());
		Object aa=dao.findPlayerSummary(member.getChipMemberNum());	  
		
	      List list1=Arrays.asList(aa);
	      String  ii = (String)list1.get(1);     
	      Integer aa1=Integer.parseInt(ii.replaceAll("[\\pP\\p{Punct}]",""));
//	      System.out.println(aa1);     
//	      System.out.println(String.valueOf( bean.getGameMoney()));
	      
	      if(aa1>=bean.getGameMoney()) {
	    	//使用爬蟲抓出資料
	  		String Result=TestJoup.jsoup();	
	  		bean.setGameResult(Result);
	  		bean.setGameRoomMember(member.getGameRoomMember());
	  		bean.setGameMoney(bean.getGameMoney() * 2);
	  		bean.setGameRoomStage(2);
	  		bean.setChipMemberNum(member.getChipMemberNum());

	           
	  		if (bean.getPlayer1Result() == "1") {
	  			bean.setPlayer2Result("2");
	  		} else {
	  			bean.setPlayer2Result("1");
	  		}
	  		
	  		model.addAttribute("player1", bean);
	  		service1.SaveGameData(bean);
	  		return "/main/games/blingroom";
	      }else {
	    	  model.addAttribute("player2",1);
	    	  return"/test1/ClearTemplateIndex";
	      }
	

	}

	

	//判斷餘額購不夠開房
	@RequestMapping("/GameBling6")
	public String MoneyEnough() {
		
		
		return"";
	}
	
	
}
