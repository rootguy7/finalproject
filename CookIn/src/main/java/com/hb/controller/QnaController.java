package com.hb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BbsDao;
import com.hb.model.BbsVo;

@Controller
public class QnaController {
	
	@Autowired
	private BbsDao dao2;
	
	@RequestMapping("/qna")
	public String NoticeDefault(Model model) {
		List<BbsVo> list=null;
		try {
			list=dao2.selectQnaList();
			System.out.println("qna: "+list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list",list);
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
