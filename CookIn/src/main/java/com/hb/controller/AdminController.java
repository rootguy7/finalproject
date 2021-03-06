package com.hb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.model.BbsDao;
import com.hb.model.BbsVo;
import com.hb.model.ProductDao;
import com.hb.model.ProductVo;
import com.hb.model.UserDao;
import com.hb.model.UserVo;

@Controller
public class AdminController {
	
	@Autowired
	private UserDao dao;
	@Autowired
	private ProductDao dao1;
	@Autowired
	private BbsDao dao2;
	
	@RequestMapping("/admin")
	public String index(){
		return "adm_index";
	}
	 
	@RequestMapping("/admin/info")
	public String info(Model model){
		List<UserVo> list=null;
		try {
			list = dao.selectUserInfo();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin/info";
	}
	@RequestMapping("/admin/list")
	public String list(Model model){
		List<ProductVo> list=null;
		try {
			list=dao1.selectProList();
			System.out.println(list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "admin/list";
	}
	@RequestMapping("/admin/listedit")
	public String listedit(){
		return "admin/listedit";
	}
	@RequestMapping("/admin/listdetail")
	public String listdetail(@RequestParam("serial_num") String serial_num, Model model){
		ProductVo vo = null;
		try {
			vo = dao1.selectOne(serial_num);
			System.out.println(vo.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (vo != null) {
			model.addAttribute("var", vo);
			return "admin/listdetail";
		} else {
			return "admin/list";
		}
	}
	@RequestMapping("/admin/listadd")
	public String listadd(){
		return "admin/listadd";
	}
	@RequestMapping("/admin/order")
	public String order(){
		return "admin/order";
	}	
	@RequestMapping("/admin/deposit")
	public String deposit(){
		return "admin/deposit";
	}
	@RequestMapping("/admin/delivery")
	public String delivery(){
		return "admin/delivery";
	}
	@RequestMapping("/admin/notice")
	public String notice(Model model){
		List<BbsVo> list=null;
		try {
			list = dao2.selectNoticeList();
			System.out.println("notice: "+list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "admin/notice";	
	}
	@RequestMapping("/admin/qna")
	public String qna(Model model){
		List<BbsVo> list=null;
		try {
			list=dao2.selectQnaList();
			System.out.println("qna: "+list.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list",list);
		return "admin/qna";
	}	
	@RequestMapping("/admin/bbsdetail")
	public String detail(){
		return "admin/bbsdetail";
	}	
	@RequestMapping("/admin/notpaid")
	public String notpaid(){
		return "admin/notpaid";
	}	
	@RequestMapping("/admin/notdelivery")
	public String notdelivery(){
		return "admin/notdelivery";
	}	
	@RequestMapping("/admin/notanswer")
	public String notanswer(){
		return "admin/notanswer";
	}
	@RequestMapping("/admin/noticeadd")
	public String noticeadd(){
		return "admin/noticeadd";
	}
}
