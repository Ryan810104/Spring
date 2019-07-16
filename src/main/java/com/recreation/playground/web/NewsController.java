package com.recreation.playground.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.News;
import com.recreation.playground.service.NewsService;

@Controller
@RequestMapping("/main/news")
public class NewsController {
	
	@Autowired
	NewsService newsservice;
	
	@ResponseBody
	@RequestMapping("/printall")
	public List<News> printnews() {
		return newsservice.printall();
	}
	
	@ResponseBody
	@RequestMapping("/insert")
	public void insert(String title,String briefcontent, String content) {
		News news = new News();
		news.setBriefcontent(briefcontent);
		news.setContent(content);
		news.setTitle(title);
		news.setCreatedate(new Date());
		newsservice.insert(news);
	}
	
	@ResponseBody
	@RequestMapping("/findone")
	public News findone(Integer id) {
		return newsservice.findone(id);
	}
}
