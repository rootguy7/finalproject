
package com.hb.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
			@RequestMapping("/complete")
			public String complete(){ 
				return "order/complete";
			}
			
			@RequestMapping("/ordersheet")
			public String ordersheet(){ 
				return "order/ordersheet";
			}
			
			@RequestMapping(value="/immpay", method = RequestMethod.POST)
			public String immPay(HttpServletRequest req){			//바로 결제 눌렀을때 호출
				String buymobile = req.getParameter("buymobile");//구매자 폰번호
				
				String recname = req.getParameter("recname");//받는이 이름
				String recmobile = req.getParameter("recmobile");//받는이 폰번호
				String recpost = req.getParameter("recpost");//받는이 우편번호
				String recmainaddr = req.getParameter("recmainaddr");//받는이 메인 주소
				String recsubaddr = req.getParameter("recsubaddr");//받는이 서브 주소
				String recspphone = req.getParameter("recspphone");//받는이 추가 연락처. 널값 허용
				String reqcomm = req.getParameter("reqcomm");//받는이 요청사항
				String reqspcomm = req.getParameter("reqspcomm");//받는이 추가요청사항. 널값 허용
				String[] cart_idx = req.getParameterValues("cart_idx");
				
				logger.debug("buymobile : "+buymobile);
				logger.debug("recname : "+recname);
				logger.debug("recmobile : "+recmobile);
				logger.debug("recpost : "+recpost);
				logger.debug("recmainaddr : "+recmainaddr);
				logger.debug("recsubaddr : "+recsubaddr);
				logger.debug("recspphone : "+recspphone);
				logger.debug("reqcomm : "+reqcomm);
				logger.debug("reqspcomm : "+reqspcomm);
				
				for (String str : cart_idx) {
					logger.debug("cart_idx : "+str);
				}
				
				return "order/complete";
			}
			
}
