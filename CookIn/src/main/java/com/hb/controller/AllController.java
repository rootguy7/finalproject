package com.hb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AllController {

			@RequestMapping("/all")
			public String all(){ 
				return "all/alllist";
			}
			@RequestMapping("/a1detail")
			public String alldetail(){
				return "all/a1detail";
			}
			@RequestMapping("/a2detail")
			public String alldetail2(){
				return "all/a2detail";
			}
			@RequestMapping("/a3detail")
			public String alldetail3(){
				return "all/a3detail";
			}
}