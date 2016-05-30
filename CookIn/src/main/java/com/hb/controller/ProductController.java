package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

		@RequestMapping("/best")
		public String bestlist(){ 
			return "best/bestlist";
		}
		
		@RequestMapping("/new")
		public String newlist(){
			return "new/newlist";
		}
		
		@RequestMapping("/b1detail")
		public String bestdetail(){
			return "best/b1detail";
		}
		@RequestMapping("/b2detail")
		public String bestdetail2(){
			return "best/b2detail";
		}
		@RequestMapping("/b3detail")
		public String bestdetail3(){
			return "best/b3detail";
		}
		@RequestMapping("/b4detail")
		public String bestdetail4(){
			return "best/b4detail";
		}
		@RequestMapping("/b5detail")
		public String bestdetail5(){
			return "best/b5detail";
		}
		@RequestMapping("/b6detail")
		public String bestdetail6(){
			return "best/b6detail";
		}
	}
