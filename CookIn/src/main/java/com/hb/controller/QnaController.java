package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	
	@RequestMapping("/qna")
	public String NoticeDefault() {
		
		return "qna/qnabbs";
	}
}
