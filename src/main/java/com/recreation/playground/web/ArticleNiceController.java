package com.recreation.playground.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recreation.playground.common.AjaxResponse;
import com.recreation.playground.common.AjaxResponseType;
import com.recreation.playground.entity.ArticleNice;
import com.recreation.playground.service.ArticleNiceService;


@Controller
@RequestMapping("/main")
public class ArticleNiceController {
	
	@Autowired
	private ArticleNiceService service;
	
	@ResponseBody
	@RequestMapping("/pressornot")
	public AjaxResponse<List<Integer>> pressornot(@RequestParam(name="memberid") String id) {
		AjaxResponse<List<Integer>> res = new AjaxResponse<>();
		List<Integer> list = service.pressornot(id);
		if (list != null) {
			res.setType(AjaxResponseType.SUCCESS);
			res.setData(list);
			return res;
		}
		res.setType(AjaxResponseType.ERROR);
		return res;
	}
	@ResponseBody
	@RequestMapping("/pressnice")
	public void insert(ArticleNice bean) {
		System.out.println(bean);
		ArticleNice bean1 = service.insert(bean.getArticlefloor(), bean.getMemberid());
		System.out.println(bean1);
		if(bean1 == null) {
			service.save(bean);
		}else {
			service.delete(bean1);
		}
	}
	
}
