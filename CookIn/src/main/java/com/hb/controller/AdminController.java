package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin/") //관리자 메인
	public String index(){
		return "adm_index";
	}
	@RequestMapping("/info/") //고객정보
	public String info(){
		return "admin/info";
	}
	@RequestMapping("/list/") //상품리스트
	public String list(){
		return "admin/list";
	}
	@RequestMapping("/order/") //주문확인
	public String order(){
		return "admin/order";
	}	
	@RequestMapping("/deposit/") //입금확인
	public String deposit(){
		return "admin/deposit";
	}
	@RequestMapping("/delivery/") //입금확인
	public String delivery(){
		return "admin/delivery";
	}
	@RequestMapping("/notice/") //공지사항
	public String notice(){
		return "admin/notice";	
	}
	@RequestMapping("/qna/") //질의응답
	public String qna(){
		return "admin/qna";
	}	
}
