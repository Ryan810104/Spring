package com.recreation.playground.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.entity.ArticleNice;
import com.recreation.playground.service.ArticleNiceService;


@Controller
@RequestMapping("/main")
public class ArticleNiceController {
	
	@Autowired
	private ArticleNiceService service;
	
	@ResponseBody
	@RequestMapping("/pressornot")
	public int pressornot(ArticleNice bean) {
		return service.pressornot(bean.getArticlefloor(), bean.getMemberid());
	}
	
}
