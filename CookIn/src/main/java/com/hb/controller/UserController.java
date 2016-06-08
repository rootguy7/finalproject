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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
		
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	 public String login(@RequestParam(value = "id", required = false) String id, @RequestParam(value = "pw", required = false) String password){
		
		
		
		Map<String, String> map = new HashMap<String, String>();
		
//		String id = Util.nullCheck(request.getParameter("id"), "");
//		String password = Util.nullCheck(request.getParameter("pw"), "");
		logger.info(id);
		logger.info(password);
		
		map.put("id",id);
		map.put("password", password);
		
		int loginValue = 0;
		String loginCheck = null;
		
		try {  loginValue = userDao.getLoginResult(map);  } catch (Exception e) { }
		
		
		if (loginValue == 1)
		{
			logger.info("로그인성공");
//			mav.addObject("loginValue", loginValue);
//			mav.setViewName("/");
			
//			나중에 해당 유저의 포인트와 기타등등을 불러오기 위함

//			try {
//				userVo = userDao.getUserInfo(id);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			mav.addObject("id",id);
//			session.setAttribute("userId", userVo.getId());
//			session.setAttribute("userPassword", userVo.getPassword());
			loginCheck = Integer.toString(loginValue);
			
		}
		else
		{
			logger.info("로그인실패");
			loginCheck = "0";
		}
		System.out.println(loginValue);
		return loginCheck; 
		
	}
	
}
