package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/2")
	public String home(){
		return "index";
	}
	
	@RequestMapping("/")
	public String home2(){
		return "index2";
	}
	  
	@RequestMapping("/store")
	public String store(){
		return "store/storelist";
	}
}
