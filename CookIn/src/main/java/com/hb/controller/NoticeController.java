package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	
	@RequestMapping("/notice")
	public String NoticeDefault() {
		
		return "notice/ntbbs";
	}
	@RequestMapping("/ntdetail")
	public String noticeDetail() {
		
		return "notice/ntdetail";
	}
}
