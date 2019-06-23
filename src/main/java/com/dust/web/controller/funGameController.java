package com.dust.web.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dust.services.funGameService;

@Controller
@RequestMapping("/playing")
public class funGameController {
	private static Logger logger = Logger.getLogger(funGameController.class);
	
	@Autowired
	private funGameService funGameService;
	
	@RequestMapping(value="/execute",method =RequestMethod.POST)
	public String execute(String maxnum,String option,Model model) {
		logger.info("游戏开始！");
		
		List<String> list= funGameService.playgame(maxnum,option); 
		model.addAttribute("list", list);
		return "index";
	}
}
