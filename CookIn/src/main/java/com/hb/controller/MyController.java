package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	
	@RequestMapping("/mypage")
	public String MypageDefault() { //마이페이지 메인
		
		return "mypage/mypagehome";
	}
	
	@RequestMapping("/mypage/allorder") //전체주문내역
	public String MypageOrder() {
		
		return "mypage/allorder";
	}
	
	@RequestMapping("/mypage/point") //내포인트
	public String MypagePoint() {
		
		return "mypage/point";
	}
	
	@RequestMapping("/mypage/mydiary") //내가쓴글
	public String MypageDiary() {
		
		return "mypage/mydiary";
	}
	
	
	@RequestMapping("/mypage/setting") //나의설정
	public String MypageSetting() {
		
		return "mypage/setting";
	}
}