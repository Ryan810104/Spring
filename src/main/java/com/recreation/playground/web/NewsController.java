package com.recreation.playground.web;

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
}
