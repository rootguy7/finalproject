package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AllController {

			@RequestMapping("/all")
			public String all(){ 
				return "all/alllist";
			}
			
}