package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin")
	public String index(){
		return "adm_index";
	}
	@RequestMapping("/admin/info")
	public String info(){
		return "admin/info";
	}
	@RequestMapping("/admin/list")
	public String list(){
		return "admin/list";
	}
	@RequestMapping("/admin/order")
	public String order(){
		return "admin/order";
	}	
	@RequestMapping("/admin/deposit")
	public String deposit(){
		return "admin/deposit";
	}
	@RequestMapping("/admin/delivery")
	public String delivery(){
		return "admin/delivery";
	}
	@RequestMapping("/admin/notice")
	public String notice(){
		return "admin/notice";	
	}
	@RequestMapping("/admin/qna")
	public String qna(){
		return "admin/qna";
	}	
}
