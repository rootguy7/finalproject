package com.hb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BuyDao;
import com.hb.model.CartVo;
import com.hb.model.UserVo;

@Controller
public class CartController {
	
	@Autowired
	BuyDao buyDao;
	
	@RequestMapping("/cart")
	public String cart(Model model) {
		
		//세션 검사해도 아이디 받아와야 하는부분.
		//임의로 그냥 아무 아이디 넣음
		String id = "joohyung";
		List<CartVo> list = null;
		UserVo userOne = null;
		try {
			 list = buyDao.selectPcart(id);
			 userOne = buyDao.selOneUser(id);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		model.addAttribute("buyList", list);
		model.addAttribute("userOne", userOne);
		
		
		return "cart/cartlist";
	}

}
