package com.hb.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.model.BuyDao;
import com.hb.model.ProductVo;

@Controller
public class AllController {
	
	private static final Logger logger = LoggerFactory.getLogger(AllController.class);
	
	@Autowired
	BuyDao buydao;

	@RequestMapping("/all")
	public String all(HttpServletRequest req, Model model) {

		List<ProductVo> pList = null;
		try {
			pList = buydao.selectPList();
		} catch (Exception e) {e.printStackTrace();}
		
		for (ProductVo productVo : pList) {
			logger.debug("pList"+productVo.toString());
		}
//		String imgPath = req.getSession().getServletContext().getRealPath("/resources/imgs/a1d1.png");
//		System.out.println(new File(imgPath).exists());
		model.addAttribute("pList", pList);
		return "all/alllist";
	}

	@RequestMapping("/pdtdetail")
	public String alldetail(@RequestParam("serial_num") int serial_num, Model model) {
		
		ProductVo vo = null;
		try {
			vo = buydao.selectPOne(serial_num);
		} catch (Exception e) {e.printStackTrace();}
		
		model.addAttribute("proVo", vo);
		
		return "all/pdtdetail";
	}

	@RequestMapping("/a2detail")
	public String alldetail2() {
		return "all/a2detail";
	}

	@RequestMapping("/a3detail")
	public String alldetail3() {
		return "all/a3detail";
	}
}