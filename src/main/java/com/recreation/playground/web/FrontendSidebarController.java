package com.recreation.playground.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class FrontendSidebarController {

// Sidebar 回到首頁
	@RequestMapping("/index")
	public String toIndex(Model model) {
		return "/main/Index";
	}
	@RequestMapping("/AfterIndex")
	public String toAfter(Model model) {
		return "/main/AfterIndex";
	}
// Sidebar 活動消息
	@RequestMapping("/news")
	public String toNews(Model model) {
		return "/main/news/NewsIndex";
	}
// Sidebar 遊戲列表
	@RequestMapping("/games")
	public String toGame1(Model model) {
		return "/main/games/GameIndex";
	}
// Sidebar 儲值中心
//	@RequestMapping("/deposit")
//	public String toDeposit(Model model) {
//		return "/main/deposit/DepositIndex";
//	}
// Sidebar 購物中心
	@RequestMapping("/shop")
	public String toShop(Model model) {
		return "/main/shop/ShopIndex";
	}
// Sidebar 好友系統
	@RequestMapping("/friend")
	public String toFriend(Model model) {
		return "/main/friend/FriendIndex";
	}	
// Sidebar 排行榜系統
	@RequestMapping("/gamesrank")
	public String toGameRank(Model model) {
		return "/main/gamesrank/GamesRankIndex";
		}	
	
	
	@RequestMapping("/setting")
	public String toMemberSetting(Model model) {
		return "/main/setting/SettingIndex";
	}
	//查看特定個人頁面
	@RequestMapping("/setting/{memberNum}")
	public String toSetting(@PathVariable("memberNum") Integer membernum,Model model) {
//		System.out.println("membernum="+membernum);
		model.addAttribute("memberNum", membernum);
		return "/main/setting/UserIndex";
	}
// Game 踩地雷
	@RequestMapping("/minesweeper")
	public String toEmojiGame(Model model) {
		return "/main/games/Mineweeper";
		}
	@RequestMapping("/logout")
	public String logout(Model model,HttpSession session) {
		session.removeAttribute("UID");
		session.removeAttribute("member");
		return "/main/Index";
		}
//Game俄羅斯輪盤
	@RequestMapping("/Circlegame")
	public String tocirlegame(Model model) {
		
		return"/main/games/circlegame";
	}
//測試上傳圖片
	@RequestMapping("/testing")
	public String totesting(Model model) {
		return"/test/testupload";
	}
//投訴箱
	@RequestMapping("/complain")
	public String toComplain(Model model) {
		return"/main/complain/complainIndex";
	}
	
	//賭球遊戲
	@RequestMapping("/Gamebling")
	public String toGamebling(Model model) {
		return"/main/games/Gambling";
	}

	
}
