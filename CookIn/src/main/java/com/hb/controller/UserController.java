package com.hb.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.util.Util;

@Controller
public class UserController {

	
	@RequestMapping("/join")
	public String NoticeDefault() {
		
		return "login/joinform";
	}
	
	@RequestMapping("/login")
	public String login(){
		System.out.println("로그인");
		return "index2";
	}
	
		
	public ModelAndView main(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		
		Map<String, String> map = new HashMap<String, String>();
		
		String id = Util.nullCheck(request.getParameter("id"), "");
		String password = Util.nullCheck(request.getParameter("password"), "");
		
		map.put("id", id);
		map.put("password",password);
				
		int loginValue = 0;
		
		System.out.println("id >>> " + id + "pw >>> " +password);
		
		
		return null;
		
	}
	
}
