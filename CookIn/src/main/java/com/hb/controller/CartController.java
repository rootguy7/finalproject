package com.hb.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hb.model.BuyDao;
import com.hb.model.CartVo;
import com.hb.model.UserVo;

@Controller
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
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
	
	@RequestMapping("/cartli")
	public String cartList(HttpServletRequest req, Model model){
		//check박스 체크된 cart_idx 값을 배열로 다 받아옴
		//그 갯수 만큼 selec 쿼리를 날리고 그 값을 List에 add 시킴
		//프론트에서 유효성 검사 했지만 혹시 몰라서 한번더 유효성 검사 함
		
		String[] listidx = req.getParameterValues("chkitm");
		List<CartVo> clist = new ArrayList<CartVo>();
		
		
		if(!("".equals(listidx) || listidx == null)){
			for (String str : listidx) {
				logger.debug("받아들인 index : "+str);
				try {
					clist.add(buyDao.selectPcartOne(Integer.parseInt(str)));
				}catch (Exception e) {e.printStackTrace();}
			}
		}
		
		model.addAttribute("buyList", clist);
		return "order/ordersheet";
	}

}
