
package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	
			@RequestMapping("/complete")
			public String complete(){ 
				return "order/complete";
			}
			
			@RequestMapping("/ordersheet")
			public String ordersheet(){ 
				return "order/ordersheet";
			}
			
}
