package com.hb.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hb.model.BuyDao;
import com.hb.model.UserDao;
import com.hb.model.UserDaoImp;
import com.hb.model.UserVo;
import com.hb.util.Util;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDao userDao;
	
	UserVo userVo;
	
	@RequestMapping("/join")
	public String NoticeDefault() {
		
		return "login/joinform";
	}
	
	public String login(){
		System.out.println("로그인");
		return "index2";
	}
	
		
	@RequestMapping("/login")
	public ModelAndView main(HttpServletRequest request ) {
		
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		
		
		Map<String, String> map = new HashMap<String, String>();
		
		String id = Util.nullCheck(request.getParameter("id"), "");
		String password = Util.nullCheck(request.getParameter("pw"), "");
		System.out.println(id);
		System.out.println(password);
		
		map.put("id",id);
		map.put("password", password);
		
		int loginValue = 0;
		
		try {  loginValue = userDao.getLoginResult(map);  } catch (Exception e) { }
		
		
		if (loginValue == 1)
		{
			logger.info("로그인성공");
			mav.addObject("loginValue", loginValue);
//			mav.setViewName("/");
			
//			나중에 해당 유저의 포인트와 기타등등을 불러오기 위함
//			userVo = userDao.getUserInfo(id);
			
//			session.setAttribute("userId", userVo.getId());
//			session.setAttribute("userPassword", userVo.getPassword());
		}
		else
		{
			logger.info("로그인실패");
			mav.setViewName("user/loginForm");
		}
		
		return mav; 
		
	}
	
}
