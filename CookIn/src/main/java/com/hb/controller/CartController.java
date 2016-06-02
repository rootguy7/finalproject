package com.hb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BuyDao;

@Controller
public class CartController {
	
	@Autowired
	BuyDao buyDao;
	
	@RequestMapping("/cart")
	public String cart(Model model) {
		
		//세션 검사해도 아이디 받아와야 하는부분.
		//임의로 그냥 아무 아이디 넣음
		String id = "joohyung";
		
		try {
			model.addAttribute("buyList", buyDao.selectPcart(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "cart/cartlist";
	}

}
