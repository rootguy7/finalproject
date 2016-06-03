package com.hb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BuyDao;
import com.hb.model.UserDao;
import com.hb.model.UserVo;

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
	
	@RequestMapping("/mypage/orderdetail") //주문내역상세
	public String MypageOrderDetail() {
		
		return "mypage/orderdetail";
	}
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping("/mypage/point") //내포인트
	public String MypagePoint(Model model) {
		
		String id = "joohyung";
		UserVo userOne = null;
		try {
			userOne = userDao.selectOne(id);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		model.addAttribute("userOne", userOne);
		
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