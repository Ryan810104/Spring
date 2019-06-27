package com.recreation.playground.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class FrontendSidebarController {

// Sidebar 回到首頁
	@RequestMapping("/index")
	public String toIndex(Model model) {
		return "/main/Index";
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
	@RequestMapping("/deposit")
	public String toDeposit(Model model) {
		return "/main/deposit/DepositIndex";
	}
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
// Sidebar 排行榜系統
	@RequestMapping("/setting")
	public String toSetting(Model model) {
		return "/main/setting/SettingIndex";
	}
// Game 踩地雷
	@RequestMapping("/minesweeper")
	public String toEmojiGame(Model model) {
		return "/main/games/Mineweeper";
		}
}
