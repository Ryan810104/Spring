package com.recreation.playground.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.recreation.playground.entity.MessageBoard;
import com.recreation.playground.service.MessageBoardService;

@Controller
@RequestMapping("/admin/mboard")
public class MessageBoardController {

	@Autowired
	private MessageBoardService service;
	
	@RequestMapping("/insertForm")
	public String openmboardinsertForm(Model model){
		return "/test/MessageBoard";
	}
	
	
	@RequestMapping("/mboardinsertForm")
	public String insert(@Valid @ModelAttribute("MessageBoardForm") MessageBoard message, BindingResult result, Model model,HttpSession session) {
		String result1=service.insert(message);
		System.out.println(message);
		Map<String, String> Message=new HashMap<>();
		
		
		if(result1=="insertok") {
			model.addAttribute("Result", "1");
			return "/test/MessageBoard";
			
		}else {
			model.addAttribute("Result", "2");
			return "/test/MessageBoard";
		}
		
	}
	
	@RequestMapping("/mboardinsertForm1")
	public String findAll(@Valid @ModelAttribute("MessageBoardForm1") MessageBoard message, BindingResult result, Model model,HttpSession session) {
		
		 List<MessageBoard>aaa=service.getAll();
		
		
		 model.addAttribute("aaaLength",aaa.size());
		 model.addAttribute("Result3",aaa);
		return "/test/MessageBoard";
	}
	
	
	
}
