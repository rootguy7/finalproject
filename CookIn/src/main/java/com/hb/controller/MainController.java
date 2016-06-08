package com.hb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BbsDao;
import com.hb.model.BbsVo;

@Controller
public class MainController {

	@Autowired
	private BbsDao dao2;
	
	@RequestMapping("/2")
	public String home(){
		return "index";
	}
	
	@RequestMapping("/")
	public String home2(Model model){
		List<BbsVo> list=null; // notice start
		try {
			list = dao2.selectNoticeList();
			System.out.println("notice: "+list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list", list); // notice end
		return "index2";
	}
	  
	@RequestMapping("/store")
	public String store(){
		return "store/storelist";
	}
}
