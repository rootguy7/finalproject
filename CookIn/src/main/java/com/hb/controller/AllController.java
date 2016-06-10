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

	@RequestMapping("/a1detail")
	public String alldetail() {
		return "all/a1detail";
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