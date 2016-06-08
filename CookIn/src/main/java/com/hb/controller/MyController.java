package com.hb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BbsDao;
import com.hb.model.BbsVo;
import com.hb.model.BuyDao;
import com.hb.model.CartVo;
import com.hb.model.UserDao;
import com.hb.model.UserVo;

@Controller
public class MyController {

	@Autowired
	private UserDao userDao;
	private UserDao userDao1;
	private BbsDao bbsDao;
	
	@RequestMapping("/mypage")
	public String MypageDefault() { //마이페이지 메인
		
		return "mypage/mypagehome";
	}
	
	@RequestMapping("/mypage/allorder") //전체주문내역
	public String MypageOrder(Model model) {
		String id = "joohyung";
		List<UserVo> list = null;
		try {
			 list = userDao1.selectOrder(id);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		model.addAttribute("orderlist", list);
		
		
		return "mypage/allorder";
	}
	
	@RequestMapping("/mypage/orderdetail") //주문내역상세
	public String MypageOrderDetail() {
		
		return "mypage/orderdetail";
	}
	
	
	@RequestMapping("/mypage/point") //내포인트
	public String MypagePoint(Model model) {
		
		String id = "joohyung";
		UserVo vo = null;
		try {
			 vo = userDao.selOnePoint(id);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		model.addAttribute("vo", vo);
		
		return "mypage/point";
	}
	
	@RequestMapping("/mypage/mydiary") //내가쓴글
	public String MypageDiary(Model model) {
		String id = "jiyooni";
		List<BbsVo> list = null;
		try {
			 list = bbsDao.selMyWrite(id);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		model.addAttribute("list", list);
		
		return "mypage/mydiary";
	}
	
	@RequestMapping("/mypage/setting") //나의설정
	public String MypageSetting() {
		
		return "mypage/setting";
	}
}