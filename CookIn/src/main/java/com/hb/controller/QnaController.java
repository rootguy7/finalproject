package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	
	@RequestMapping("/qna")
	public String NoticeDefault() {
		
		return "qna/qnabbs";
	}
	@RequestMapping("/qnadetail")
	public String qnaDetail() {
		
		return "qna/qnadetail";
	}
	@RequestMapping("/addqna")
	public String qnaAdd() {
		
		return "qna/addqna";
	}
}
